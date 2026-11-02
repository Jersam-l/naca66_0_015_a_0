# Angle of Attack Group: AoA = -10.0°
**Study:** NACA 66(0)-015 Linear Cascade Parameter Sweep  
**Incidence Angle:** -10.0° (Blades physically rotated in computational mesh)  
**Evaluated Velocities:** 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 m/s  

---

## Velocity Sweep Performance Table
| Velocity (m/s) | Case ID | Lift Coeff (Cl) | Drag Coeff (Cd) | Mean Wall y+ | Solver Status | Case Directory |
|---|---|---|---|---|---|---|
| 5 | `case_11_aoa-10_u05` | -0.3625 | 0.1119 | 6.67 | `CONVERGED` | [vel_05mps/run_01](vel_05mps/run_01/README.md) |
| 10 | `case_12_aoa-10_u10` | -0.3486 | 0.1336 | 8.83 | `CONVERGED` | [vel_10mps/run_01](vel_10mps/run_01/README.md) |
| 15 | `case_13_aoa-10_u15` | -0.2810 | 0.1208 | 10.52 | `CONVERGED` | [vel_15mps/run_01](vel_15mps/run_01/README.md) |
| 20 | `case_14_aoa-10_u20` | -0.2481 | 0.1112 | 12.02 | `CONVERGED` | [vel_20mps/run_01](vel_20mps/run_01/README.md) |
| 25 | `case_15_aoa-10_u25` | -0.2511 | 0.1097 | 13.33 | `CONVERGED` | [vel_25mps/run_01](vel_25mps/run_01/README.md) |
| 30 | `case_16_aoa-10_u30` | -0.2413 | 0.1033 | 14.44 | `CONVERGED` | [vel_30mps/run_01](vel_30mps/run_01/README.md) |
| 35 | `case_17_aoa-10_u35` | -0.2515 | 0.1081 | 15.71 | `CONVERGED` | [vel_35mps/run_01](vel_35mps/run_01/README.md) |
| 40 | `case_18_aoa-10_u40` | -0.2480 | 0.1075 | 16.80 | `CONVERGED` | [vel_40mps/run_01](vel_40mps/run_01/README.md) |
| 45 | `case_19_aoa-10_u45` | -0.2443 | 0.1068 | 17.83 | `CONVERGED` | [vel_45mps/run_01](vel_45mps/run_01/README.md) |
| 50 | `case_20_aoa-10_u50` | -0.2453 | 0.1069 | 18.83 | `CONVERGED` | [vel_50mps/run_01](vel_50mps/run_01/README.md) |

---

## Aerodynamic Physics at this AoA
- **Geometric Incidence:** Airfoil blades are rotated physically by -10.0° around their leading edge origins.
- **Passage Geometry:** Three blades with pitch $s = 0.05$ m, chord $c = 0.1$ m (solidity $\sigma = 2.0$).
- **Surface Sampling:** Each run contains 10 upper surface stations and 10 lower surface stations stored in `post/data/foil_surface_sampled_10pts.csv`.
- **Publication Reports:** Case-specific PDF manuscripts available inside each velocity run directory under `reports/research_paper.pdf`.
