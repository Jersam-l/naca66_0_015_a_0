# Engineering Evidence Graph: cascade_case_39_aoa+00_u45
**Total Nodes:** 6 | **Total Dependency Edges:** 5

## 1. Graph Node Registry
| Node ID | Category | Label | Status | Content Hash | Files |
|---|---|---|---|---|---|
| `req_01` | REQUIREMENT | Cascade Requirements case_39_aoa+00_u45 | `VALID` | `b08b7bc5e7` | 1 files |
| `geom_casc` | GEOMETRY | Cascade Blades NACA 66(0)-015 AoA=0.0° | `VALID` | `f48323c8b9` | 2 files |
| `mesh_quad` | MESH | Transfinite Blossom Quad Mesh | `VALID` | `016fc19c5f` | 2 files |
| `solv_simple` | EXECUTION_RUN | Native SIMPLE FVM Solver with SA Turbulence | `VALID` | `d479bfd216` | 2 files |
| `res_forces` | FIELD_RESULT | Aerodynamic Forces & Surface 10-Point Sampling | `VALID` | `46ce16269e` | 2 files |
| `rep_pdf` | REPORT_DELIVERABLE | Research Paper & Report | `VALID` | `a22ad1fde9` | 2 files |

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
