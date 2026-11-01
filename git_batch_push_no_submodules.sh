#!/usr/bin/env bash
set -Eeuo pipefail

# Incremental GitHub publisher WITHOUT submodule initialization, updating, or pushing.
# - Supports an empty remote (initial upload) and an existing remote (later updates).
# - Rebuilds only the current working-tree snapshot as small sequential commits.
# - Keeps a local backup branch before changing the current branch history.
# - Does not delete project files. Respects .gitignore for untracked files.
# - Pushes batches separately so every individual push stays well below GitHub's 2 GiB limit.
#
# Usage:
#   chmod +x git_batch_push_no_submodules.sh
#   ./git_batch_push_no_submodules.sh "Initial repository upload"
#
# Optional environment variables:
#   REMOTE=origin
#   BRANCH=master
#   BATCH_LIMIT_BYTES=400000000   # default: 400 MB per batch (uncompressed file-size estimate)
#   MAX_FILE_BYTES=104857600      # default: 100 MiB per individual file

ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || {
  echo "ERROR: Run this script from inside a Git repository." >&2
  exit 1
}
cd "$ROOT"

REMOTE="${REMOTE:-origin}"
BRANCH="${BRANCH:-$(git branch --show-current)}"
BATCH_LIMIT_BYTES="${BATCH_LIMIT_BYTES:-400000000}"
MAX_FILE_BYTES="${MAX_FILE_BYTES:-104857600}"
COMMIT_MESSAGE="${*:-Publish repository files}"

[[ -n "$BRANCH" ]] || { echo "ERROR: Detached HEAD. Check out the branch you want to publish." >&2; exit 1; }
git remote get-url "$REMOTE" >/dev/null 2>&1 || {
  echo "ERROR: Remote '$REMOTE' is not configured. Add it first with git remote add." >&2
  exit 1
}

[[ "$BATCH_LIMIT_BYTES" =~ ^[0-9]+$ ]] && (( BATCH_LIMIT_BYTES > 0 && BATCH_LIMIT_BYTES < 1800000000 )) || {
  echo "ERROR: BATCH_LIMIT_BYTES must be between 1 and 1,799,999,999." >&2
  exit 1
}
[[ "$MAX_FILE_BYTES" =~ ^[0-9]+$ ]] && (( MAX_FILE_BYTES > 0 )) || {
  echo "ERROR: MAX_FILE_BYTES must be a positive integer." >&2
  exit 1
}

# Avoid running while an operation could make index/HEAD changes ambiguous.
if ! git diff --quiet --diff-filter=U || [[ -f "$(git rev-parse --git-path MERGE_HEAD)" ]] || \
   [[ -f "$(git rev-parse --git-path CHERRY_PICK_HEAD)" ]] || \
   [[ -d "$(git rev-parse --git-path rebase-merge)" ]] || \
   [[ -d "$(git rev-parse --git-path rebase-apply)" ]]; then
  echo "ERROR: A merge, rebase, cherry-pick, or unresolved conflict is in progress. Finish/abort it first." >&2
  exit 1
fi

OLD_HEAD="$(git rev-parse HEAD)"
GIT_DIR="$(git rev-parse --absolute-git-dir)"

# Confirm whether the target remote branch already exists.
REMOTE_SHA="$(git ls-remote --heads "$REMOTE" "refs/heads/$BRANCH" | awk -v ref="refs/heads/$BRANCH" '$2 == ref {print $1; exit}')"
if [[ -n "$REMOTE_SHA" ]]; then
  MODE="incremental"
  echo "Remote branch exists: $REMOTE/$BRANCH"
  git fetch "$REMOTE" "refs/heads/$BRANCH:refs/remotes/$REMOTE/$BRANCH"
  REMOTE_REF="refs/remotes/$REMOTE/$BRANCH"
  REMOTE_SHA="$(git rev-parse "$REMOTE_REF")"
  if ! git merge-base --is-ancestor "$REMOTE_SHA" "$OLD_HEAD"; then
    echo "ERROR: Remote branch is not an ancestor of local HEAD." >&2
    echo "Refusing to overwrite a divergent remote history. Reconcile it manually first." >&2
    exit 1
  fi
else
  MODE="initial"
  echo "Remote branch does not exist. Preparing a batched initial upload."
fi

# Make sure author/committer identity is configured before building commits.
git var GIT_AUTHOR_IDENT >/dev/null
git var GIT_COMMITTER_IDENT >/dev/null

# Gather paths that represent the current working-tree state relative to the remote.
# For an empty remote, include tracked and non-ignored untracked files.
if [[ "$MODE" == "initial" ]]; then
  mapfile -d '' -t CANDIDATE_PATHS < <(
    git ls-files --cached --others --exclude-standard -z | sort -zu
  )
else
  mapfile -d '' -t CANDIDATE_PATHS < <(
    {
      git diff --name-only --no-renames -z "$REMOTE_SHA"
      git ls-files --others --exclude-standard -z
    } | sort -zu
  )
fi

# Discover gitlink paths (mode 160000). This script does not initialize, update, or push
# nested repositories. It retains existing gitlink metadata without entering submodules.
declare -a SUBMODULE_PATHS=() SUBMODULE_OIDS=()
while IFS= read -r -d '' entry; do
  meta="${entry%%$'\t'*}"
  path="${entry#*$'\t'}"
  read -r mode object_id stage <<< "$meta"
  if [[ "$mode" == "160000" ]]; then
    SUBMODULE_PATHS+=("$path")
    SUBMODULE_OIDS+=("$object_id")
  fi
done < <(git ls-files --stage -z)
if [[ "$MODE" == "incremental" ]]; then
  while IFS= read -r -d '' entry; do
    meta="${entry%%$'\t'*}"
    path="${entry#*$'\t'}"
    read -r mode object_type object_id <<< "$meta"
    if [[ "$mode" == "160000" ]]; then
      SUBMODULE_PATHS+=("$path")
    fi
  done < <(git ls-tree -rz "$REMOTE_SHA")
fi
is_submodule_path() {
  local candidate="$1" sub_path
  for sub_path in "${SUBMODULE_PATHS[@]}"; do
    [[ "$candidate" == "$sub_path" ]] && return 0
  done
  return 1
}

# Retain the original script's safeguard: don't interpret locally missing output/old files
# as deletions from the remote repository. Also do not stage submodule directories themselves.
CHANGED_PATHS=()
for path in "${CANDIDATE_PATHS[@]}"; do
  if is_submodule_path "$path"; then
    printf 'Skipping submodule gitlink (no nested push): %s\n' "$path"
    continue
  fi
  case "$path" in
    output/old/*)
      if [[ ! -e "$path" && ! -L "$path" ]]; then
        printf 'PRESERVING REMOTE COPY; skipping local deletion: %s\n' "$path"
        continue
      fi
      ;;
  esac
  CHANGED_PATHS+=("$path")
done

if ((${#CHANGED_PATHS[@]} == 0)); then
  echo "No publishable file changes found."
  exit 0
fi

# Check GitHub's hard per-object limit before beginning any push.
echo "Checking individual file sizes..."
TOO_LARGE=0
for path in "${CHANGED_PATHS[@]}"; do
  if [[ -f "$path" || -L "$path" ]]; then
    size="$(stat -c '%s' -- "$path")"
    if (( size > MAX_FILE_BYTES )); then
      printf 'TOO LARGE for regular Git (> %s bytes): %s (%s bytes)\n' "$MAX_FILE_BYTES" "$path" "$size" >&2
      TOO_LARGE=1
    fi
  fi
done
if (( TOO_LARGE )); then
  echo "ERROR: Move files above 100 MiB to Git LFS or external artifact storage before publishing." >&2
  exit 1
fi

# Partition paths into bounded batches. The limit is an estimate based on current file sizes;
# Git's actual pack can be smaller due to compression/delta encoding.
declare -a BATCHES=() BATCH_SIZES=() BATCH_PATHS=()
batch_bytes=0
flush_batch() {
  if ((${#BATCH_PATHS[@]})); then
    BATCHES+=("$(printf '%s\0' "${BATCH_PATHS[@]}" | base64 -w0)")
    BATCH_SIZES+=("$batch_bytes")
    BATCH_PATHS=()
    batch_bytes=0
  fi
}

for path in "${CHANGED_PATHS[@]}"; do
  size=0
  if [[ -f "$path" || -L "$path" ]]; then
    size="$(stat -c '%s' -- "$path")"
  fi
  if (( size > BATCH_LIMIT_BYTES )); then
    printf "ERROR: '%s' alone exceeds BATCH_LIMIT_BYTES (%s bytes).\n" "$path" "$size" >&2
    exit 1
  fi
  if ((${#BATCH_PATHS[@]})) && (( batch_bytes + size > BATCH_LIMIT_BYTES )); then
    flush_batch
  fi
  BATCH_PATHS+=("$path")
  batch_bytes=$((batch_bytes + size))
done
flush_batch

echo
echo "Mode: $MODE"
echo "Branch: $BRANCH"
echo "Files/paths to process: ${#CHANGED_PATHS[@]}"
echo "Batch limit: $BATCH_LIMIT_BYTES bytes"
echo "Planned pushes: ${#BATCHES[@]}"
for i in "${!BATCHES[@]}"; do
  printf '  Batch %d: estimated %s bytes\n' "$((i + 1))" "${BATCH_SIZES[$i]}"
done

echo
echo "No submodule update, initialization, or submodule push commands will be run."
echo "The current branch will be rebuilt as sequential batch commits."
echo "A backup branch will preserve the original committed HEAD."
read -r -p "Continue? Type YES: " confirm
[[ "$confirm" == "YES" ]] || { echo "Cancelled; no changes made."; exit 1; }

BACKUP_BRANCH="backup/pre-batched-push-$(date +%Y%m%d-%H%M%S)"
if git show-ref --verify --quiet "refs/heads/$BACKUP_BRANCH"; then
  BACKUP_BRANCH="${BACKUP_BRANCH}-$$"
fi
git branch "$BACKUP_BRANCH" "$OLD_HEAD"
echo "Backup branch created: $BACKUP_BRANCH"

TMP_INDEX="$(mktemp "${TMPDIR:-/tmp}/git-batch-index.XXXXXX")"
rm -f "$TMP_INDEX"
cleanup() {
  rm -f "$TMP_INDEX"
}
trap cleanup EXIT

git_index() {
  GIT_INDEX_FILE="$TMP_INDEX" git "$@"
}

if [[ "$MODE" == "initial" ]]; then
  git_index read-tree --empty
  # Preserve the superproject's gitlink entries as pointers only; no submodule is opened.
  for i in "${!SUBMODULE_PATHS[@]}"; do
    git_index update-index --add --cacheinfo 160000 "${SUBMODULE_OIDS[$i]}" "${SUBMODULE_PATHS[$i]}"
  done
  LAST_COMMIT=""
else
  git_index read-tree "$REMOTE_SHA"
  LAST_COMMIT="$REMOTE_SHA"
fi

# Push each incremental tree. After each confirmed push, move the current local branch to
# that commit with --mixed reset; the working tree remains intact. This makes interrupted
# runs resumable: the next run sees the last successful remote commit as its base.
for i in "${!BATCHES[@]}"; do
  mapfile -d '' -t batch_paths < <(printf '%s' "${BATCHES[$i]}" | base64 -d)
  ((${#batch_paths[@]})) || continue

  pathspecs=()
  for path in "${batch_paths[@]}"; do
    pathspecs+=(":(literal)$path")
  done

  echo
  echo "[$((i + 1))/${#BATCHES[@]}] Staging ${#batch_paths[@]} paths..."
  git_index add -A -- "${pathspecs[@]}"
  tree="$(git_index write-tree)"
  message="$COMMIT_MESSAGE (batch $((i + 1))/${#BATCHES[@]})"

  if [[ -n "$LAST_COMMIT" ]]; then
    commit="$(printf '%s\n' "$message" | git commit-tree "$tree" -p "$LAST_COMMIT")"
  else
    commit="$(printf '%s\n' "$message" | git commit-tree "$tree")"
  fi

  echo "Pushing commit ${commit:0:12}..."
  if git push "$REMOTE" "$commit:refs/heads/$BRANCH"; then
    :
  else
    echo "Push returned an error; checking whether GitHub accepted the commit..." >&2
    remote_now="$(git ls-remote --heads "$REMOTE" "refs/heads/$BRANCH" | awk -v ref="refs/heads/$BRANCH" '$2 == ref {print $1; exit}')"
    if [[ "$remote_now" != "$commit" ]]; then
      echo "ERROR: Batch $((i + 1)) was not confirmed on GitHub." >&2
      echo "Your working files are preserved. Re-run this script after checking the network." >&2
      exit 1
    fi
    echo "GitHub has the commit; treating the interrupted acknowledgement as success."
  fi

  # Move local branch/index to the last confirmed remote commit without changing files.
  git reset --mixed "$commit" >/dev/null
  LAST_COMMIT="$commit"
  echo "Batch $((i + 1)) published."
done

echo
echo "All batches published successfully."
echo "Updating remote-tracking information..."
git fetch "$REMOTE" "refs/heads/$BRANCH:refs/remotes/$REMOTE/$BRANCH"
git status --short --branch
echo
echo "Published: $REMOTE/$BRANCH"
echo "Original history preserved locally at: $BACKUP_BRANCH"
echo "No submodule contents were initialized, updated, or pushed."
