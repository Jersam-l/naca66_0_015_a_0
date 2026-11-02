# Angle of Attack Group: AoA = -5.0°
**Study:** NACA 66(0)-015 Linear Cascade Parameter Sweep  
**Incidence Angle:** -5.0° (Blades physically rotated in computational mesh)  
**Evaluated Velocities:** 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 m/s  

---

## Velocity Sweep Performance Table
| Velocity (m/s) | Case ID | Lift Coeff (Cl) | Drag Coeff (Cd) | Mean Wall y+ | Solver Status | Case Directory |
|---|---|---|---|---|---|---|
| 5 | `case_21_aoa-05_u05` | -0.1393 | 0.0747 | 6.92 | `CONVERGED` | [vel_05mps/run_01](vel_05mps/run_01/README.md) |
| 10 | `case_22_aoa-05_u10` | -0.1719 | 0.0704 | 8.68 | `CONVERGED` | [vel_10mps/run_01](vel_10mps/run_01/README.md) |
| 15 | `case_23_aoa-05_u15` | -0.1557 | 0.0691 | 10.39 | `CONVERGED` | [vel_15mps/run_01](vel_15mps/run_01/README.md) |
| 20 | `case_24_aoa-05_u20` | -0.1516 | 0.0683 | 11.92 | `CONVERGED` | [vel_20mps/run_01](vel_20mps/run_01/README.md) |
| 25 | `case_25_aoa-05_u25` | -0.1518 | 0.0677 | 13.30 | `CONVERGED` | [vel_25mps/run_01](vel_25mps/run_01/README.md) |
| 30 | `case_26_aoa-05_u30` | -0.1518 | 0.0674 | 14.59 | `CONVERGED` | [vel_30mps/run_01](vel_30mps/run_01/README.md) |
| 35 | `case_27_aoa-05_u35` | -0.1504 | 0.0670 | 15.79 | `CONVERGED` | [vel_35mps/run_01](vel_35mps/run_01/README.md) |
| 40 | `case_28_aoa-05_u40` | -0.1484 | 0.0669 | 16.92 | `CONVERGED` | [vel_40mps/run_01](vel_40mps/run_01/README.md) |
| 45 | `case_29_aoa-05_u45` | -0.1464 | 0.0667 | 17.99 | `CONVERGED` | [vel_45mps/run_01](vel_45mps/run_01/README.md) |
| 50 | `case_30_aoa-05_u50` | -0.1442 | 0.0666 | 19.01 | `CONVERGED` | [vel_50mps/run_01](vel_50mps/run_01/README.md) |

---

## Aerodynamic Physics at this AoA
- **Geometric Incidence:** Airfoil blades are rotated physically by -5.0° around their leading edge origins.
- **Passage Geometry:** Three blades with pitch $s = 0.05$ m, chord $c = 0.1$ m (solidity $\sigma = 2.0$).
- **Surface Sampling:** Each run contains 10 upper surface stations and 10 lower surface stations stored in `post/data/foil_surface_sampled_10pts.csv`.
- **Publication Reports:** Case-specific PDF manuscripts available inside each velocity run directory under `reports/research_paper.pdf`.
