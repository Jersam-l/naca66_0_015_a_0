# Angle of Attack Group: AoA = +5.0°
**Study:** NACA 66(0)-015 Linear Cascade Parameter Sweep  
**Incidence Angle:** +5.0° (Blades physically rotated in computational mesh)  
**Evaluated Velocities:** 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 m/s  

---

## Velocity Sweep Performance Table
| Velocity (m/s) | Case ID | Lift Coeff (Cl) | Drag Coeff (Cd) | Mean Wall y+ | Solver Status | Case Directory |
|---|---|---|---|---|---|---|
| 5 | `case_41_aoa+05_u05` | 0.0504 | 0.0760 | 7.00 | `CONVERGED` | [vel_05mps/run_01](vel_05mps/run_01/README.md) |
| 10 | `case_42_aoa+05_u10` | 0.0843 | 0.0690 | 8.69 | `CONVERGED` | [vel_10mps/run_01](vel_10mps/run_01/README.md) |
| 15 | `case_43_aoa+05_u15` | 0.0842 | 0.0676 | 10.38 | `CONVERGED` | [vel_15mps/run_01](vel_15mps/run_01/README.md) |
| 20 | `case_44_aoa+05_u20` | 0.0869 | 0.0666 | 11.90 | `CONVERGED` | [vel_20mps/run_01](vel_20mps/run_01/README.md) |
| 25 | `case_45_aoa+05_u25` | 0.0888 | 0.0659 | 13.27 | `CONVERGED` | [vel_25mps/run_01](vel_25mps/run_01/README.md) |
| 30 | `case_46_aoa+05_u30` | 0.0889 | 0.0655 | 14.55 | `CONVERGED` | [vel_30mps/run_01](vel_30mps/run_01/README.md) |
| 35 | `case_47_aoa+05_u35` | 0.0880 | 0.0652 | 15.75 | `CONVERGED` | [vel_35mps/run_01](vel_35mps/run_01/README.md) |
| 40 | `case_48_aoa+05_u40` | 0.0863 | 0.0650 | 16.89 | `CONVERGED` | [vel_40mps/run_01](vel_40mps/run_01/README.md) |
| 45 | `case_49_aoa+05_u45` | 0.0842 | 0.0647 | 17.96 | `CONVERGED` | [vel_45mps/run_01](vel_45mps/run_01/README.md) |
| 50 | `case_50_aoa+05_u50` | 0.0827 | 0.0646 | 18.99 | `CONVERGED` | [vel_50mps/run_01](vel_50mps/run_01/README.md) |

---

## Aerodynamic Physics at this AoA
- **Geometric Incidence:** Airfoil blades are rotated physically by +5.0° around their leading edge origins.
- **Passage Geometry:** Three blades with pitch $s = 0.05$ m, chord $c = 0.1$ m (solidity $\sigma = 2.0$).
- **Surface Sampling:** Each run contains 10 upper surface stations and 10 lower surface stations stored in `post/data/foil_surface_sampled_10pts.csv`.
- **Publication Reports:** Case-specific PDF manuscripts available inside each velocity run directory under `reports/research_paper.pdf`.
