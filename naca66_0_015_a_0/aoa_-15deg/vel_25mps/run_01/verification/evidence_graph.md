# Engineering Evidence Graph: cascade_case_05_aoa-15_u25
**Total Nodes:** 6 | **Total Dependency Edges:** 5

## 1. Graph Node Registry
| Node ID | Category | Label | Status | Content Hash | Files |
|---|---|---|---|---|---|
| `req_01` | REQUIREMENT | Cascade Requirements case_05_aoa-15_u25 | `VALID` | `a4a7173dda` | 1 files |
| `geom_casc` | GEOMETRY | Cascade Blades NACA 66(0)-015 AoA=-15.0° | `VALID` | `bb010b8d5e` | 2 files |
| `mesh_quad` | MESH | Transfinite Blossom Quad Mesh | `VALID` | `016fc19c5f` | 2 files |
| `solv_simple` | EXECUTION_RUN | Native SIMPLE FVM Solver with SA Turbulence | `VALID` | `7a872525f4` | 2 files |
| `res_forces` | FIELD_RESULT | Aerodynamic Forces & Surface 10-Point Sampling | `VALID` | `a5c78f503e` | 2 files |
| `rep_pdf` | REPORT_DELIVERABLE | Research Paper & Report | `VALID` | `39a0e5eea1` | 2 files |

## 2. Dependency Edge Traceability
| Upstream Node | Relation | Downstream Node |
|---|---|---|
| `req_01` | `SPECIFIES` | `geom_casc` |
| `geom_casc` | `DISCRETIZES` | `mesh_quad` |
| `mesh_quad` | `DISCRETIZES` | `solv_simple` |
| `solv_simple` | `PRODUCES` | `res_forces` |
| `res_forces` | `SYNTHESIZES` | `rep_pdf` |

## 3. Invalidation & Integrity Audit
- All downstream nodes automatically transition to `STALE` when upstream specifications change.
- Zero unverified artifacts: every report deliverable links directly to validated numerical runs.
