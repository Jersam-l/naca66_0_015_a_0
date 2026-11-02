# Angle of Attack Group: AoA = +40.0°
**Study:** NACA 66(0)-015 Linear Cascade Parameter Sweep  
**Incidence Angle:** +40.0° (Blades physically rotated in computational mesh)  
**Evaluated Velocities:** 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 m/s  

---

## Velocity Sweep Performance Table
| Velocity (m/s) | Case ID | Lift Coeff (Cl) | Drag Coeff (Cd) | Mean Wall y+ | Solver Status | Case Directory |
|---|---|---|---|---|---|---|
| 5 | `case_111_aoa+40_u05` | 0.9248 | 1.0739 | 7.44 | `CONVERGED` | [vel_05mps/run_01](vel_05mps/run_01/README.md) |
| 10 | `case_112_aoa+40_u10` | 1.5318 | 1.4626 | 10.09 | `CONVERGED` | [vel_10mps/run_01](vel_10mps/run_01/README.md) |
| 15 | `case_113_aoa+40_u15` | 0.9601 | 1.0926 | 12.05 | `CONVERGED` | [vel_15mps/run_01](vel_15mps/run_01/README.md) |
| 20 | `case_114_aoa+40_u20` | 0.8046 | 0.9553 | 14.09 | `CONVERGED` | [vel_20mps/run_01](vel_20mps/run_01/README.md) |
| 25 | `case_115_aoa+40_u25` | 0.6878 | 0.8169 | 15.84 | `CONVERGED` | [vel_25mps/run_01](vel_25mps/run_01/README.md) |
| 30 | `case_116_aoa+40_u30` | 0.6888 | 0.8198 | 17.51 | `CONVERGED` | [vel_30mps/run_01](vel_30mps/run_01/README.md) |
| 35 | `case_117_aoa+40_u35` | 0.8984 | 0.9650 | 19.09 | `CONVERGED` | [vel_35mps/run_01](vel_35mps/run_01/README.md) |
| 40 | `case_118_aoa+40_u40` | 1.0029 | 0.9437 | 20.11 | `CONVERGED` | [vel_40mps/run_01](vel_40mps/run_01/README.md) |
| 45 | `case_119_aoa+40_u45` | 1.1393 | 0.9799 | 21.21 | `CONVERGED` | [vel_45mps/run_01](vel_45mps/run_01/README.md) |
| 50 | `case_120_aoa+40_u50` | 1.2907 | 1.0962 | 22.45 | `CONVERGED` | [vel_50mps/run_01](vel_50mps/run_01/README.md) |

---

## Aerodynamic Physics at this AoA
- **Geometric Incidence:** Airfoil blades are rotated physically by +40.0° around their leading edge origins.
- **Passage Geometry:** Three blades with pitch $s = 0.05$ m, chord $c = 0.1$ m (solidity $\sigma = 2.0$).
- **Surface Sampling:** Each run contains 10 upper surface stations and 10 lower surface stations stored in `post/data/foil_surface_sampled_10pts.csv`.
- **Publication Reports:** Case-specific PDF manuscripts available inside each velocity run directory under `reports/research_paper.pdf`.
