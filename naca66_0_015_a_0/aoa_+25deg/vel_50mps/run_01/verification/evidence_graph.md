# Engineering Evidence Graph: cascade_case_90_aoa+25_u50
**Total Nodes:** 6 | **Total Dependency Edges:** 5

## 1. Graph Node Registry
| Node ID | Category | Label | Status | Content Hash | Files |
|---|---|---|---|---|---|
| `req_01` | REQUIREMENT | Cascade Requirements case_90_aoa+25_u50 | `VALID` | `eb0f840522` | 1 files |
| `geom_casc` | GEOMETRY | Cascade Blades NACA 66(0)-015 AoA=25.0° | `VALID` | `a154d6ab05` | 2 files |
| `mesh_quad` | MESH | Transfinite Blossom Quad Mesh | `VALID` | `016fc19c5f` | 2 files |
| `solv_simple` | EXECUTION_RUN | Native SIMPLE FVM Solver with SA Turbulence | `VALID` | `30efc5da67` | 2 files |
| `res_forces` | FIELD_RESULT | Aerodynamic Forces & Surface 10-Point Sampling | `VALID` | `22fd4afcd5` | 2 files |
| `rep_pdf` | REPORT_DELIVERABLE | Research Paper & Report | `VALID` | `338aea4f83` | 2 files |

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
