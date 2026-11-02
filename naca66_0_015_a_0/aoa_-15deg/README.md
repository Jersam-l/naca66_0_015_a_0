# Angle of Attack Group: AoA = -15.0°
**Study:** NACA 66(0)-015 Linear Cascade Parameter Sweep  
**Incidence Angle:** -15.0° (Blades physically rotated in computational mesh)  
**Evaluated Velocities:** 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 m/s  

---

## Velocity Sweep Performance Table
| Velocity (m/s) | Case ID | Lift Coeff (Cl) | Drag Coeff (Cd) | Mean Wall y+ | Solver Status | Case Directory |
|---|---|---|---|---|---|---|
| 5 | `case_01_aoa-15_u05` | -0.5773 | 0.1714 | 6.49 | `CONVERGED` | [vel_05mps/run_01](vel_05mps/run_01/README.md) |
| 10 | `case_02_aoa-15_u10` | -0.4128 | 0.1827 | 9.88 | `CONVERGED` | [vel_10mps/run_01](vel_10mps/run_01/README.md) |
| 15 | `case_03_aoa-15_u15` | -0.6096 | 0.1949 | 10.12 | `CONVERGED` | [vel_15mps/run_01](vel_15mps/run_01/README.md) |
| 20 | `case_04_aoa-15_u20` | -0.5243 | 0.1790 | 11.49 | `CONVERGED` | [vel_20mps/run_01](vel_20mps/run_01/README.md) |
| 25 | `case_05_aoa-15_u25` | -0.5163 | 0.1757 | 12.77 | `CONVERGED` | [vel_25mps/run_01](vel_25mps/run_01/README.md) |
| 30 | `case_06_aoa-15_u30` | -0.5389 | 0.1810 | 14.03 | `CONVERGED` | [vel_30mps/run_01](vel_30mps/run_01/README.md) |
| 35 | `case_07_aoa-15_u35` | -0.5268 | 0.1753 | 15.10 | `CONVERGED` | [vel_35mps/run_01](vel_35mps/run_01/README.md) |
| 40 | `case_08_aoa-15_u40` | -0.5174 | 0.1716 | 16.09 | `CONVERGED` | [vel_40mps/run_01](vel_40mps/run_01/README.md) |
| 45 | `case_09_aoa-15_u45` | -0.5326 | 0.1752 | 17.15 | `CONVERGED` | [vel_45mps/run_01](vel_45mps/run_01/README.md) |
| 50 | `case_10_aoa-15_u50` | -0.5053 | 0.1685 | 17.98 | `CONVERGED` | [vel_50mps/run_01](vel_50mps/run_01/README.md) |

---

## Aerodynamic Physics at this AoA
- **Geometric Incidence:** Airfoil blades are rotated physically by -15.0° around their leading edge origins.
- **Passage Geometry:** Three blades with pitch $s = 0.05$ m, chord $c = 0.1$ m (solidity $\sigma = 2.0$).
- **Surface Sampling:** Each run contains 10 upper surface stations and 10 lower surface stations stored in `post/data/foil_surface_sampled_10pts.csv`.
- **Publication Reports:** Case-specific PDF manuscripts available inside each velocity run directory under `reports/research_paper.pdf`.
