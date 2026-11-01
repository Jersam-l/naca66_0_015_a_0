# JASTRICKS OUTPUT COVERAGE AUDIT REPORT
**Case:** `run_01` | **Study:** `vel_20mps`
**Configured Output Coverage:** `50.0%` (5/10 Required Outputs Generated)

---
## 1. Configured Deliverables Accounting Matrix
| Field / Quantity | Category | Type | Required | Status | Artifact Reference |
|:---|:---|:---|:---:|:---:|:---|
| `pressure_field` | AERODYNAMICS | RAW_FIELD | Yes | [NOT_GENERATED] | `pressure.csv` |
| `velocity_field` | AERODYNAMICS | RAW_FIELD | Yes | [NOT_GENERATED] | `velocity.csv` |
| `surface_cp` | AERODYNAMICS | DERIVED_QUANTITY | Yes | [NOT_GENERATED] | `surface_cp.csv` |
| `surface_tau_w` | AERODYNAMICS | DERIVED_QUANTITY | Yes | [PASS] GENERATED | `post/plots/coordinates/surface_shear_stress_distribution_coordinates.csv` |
| `surface_yplus` | AERODYNAMICS | DERIVED_QUANTITY | Yes | [PASS] GENERATED | `post/plots/coordinates/surface_yplus_distribution_coordinates.csv` |
| `forces_history` | AERODYNAMICS | CONVERGENCE_HISTORY | Yes | [PASS] GENERATED | `post/data/forces.csv` |
| `residuals` | AERODYNAMICS | CONVERGENCE_HISTORY | Yes | [PASS] GENERATED | `post/data/residuals.csv` |
| `sampled_10pts` | AERODYNAMICS | SURFACE_SAMPLING | Yes | [NOT_GENERATED] | `foil_surface_sampled_10pts.csv` |
| `mesh_counts` | AERODYNAMICS | MESH | Yes | [NOT_GENERATED] | `mesh.txt` |
| `research_pdf` | AERODYNAMICS | DELIVERABLE | Yes | [PASS] GENERATED | `reports/research_paper.pdf` |

---
## 2. Unsupported / Optional Non-Generated Quantities
- *Acoustic combustion instability transfer function (requires dynamic acoustic driver, not modeled in quasi-steady BATES)*
- *Discrete phase Lagrangian aluminum droplet tracking (requires multiphase spray solver, not modeled in gaseous equilibrium)*
- *MHD magnetic Hall current coupling (requires active external magnetic field, zero-field assumption in clear fluid)*
