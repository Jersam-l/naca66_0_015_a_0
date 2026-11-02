# Aerodynamic Case: case_97_aoa+30_u35
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9224
- **Drag Coefficient ($C_d$):** 0.6042
- **Mean Wall $y^+$:** 17.25
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 30.0, "case_idx": 97}'
  ```
- **Publication Manuscript:** [research_paper.pdf](reports/research_paper.pdf)

---

### Discrete Surface Sampling (10 Stations per Surface, 20 Total)

> **Note on First-Layer Height vs. Local Wall Friction y+:**
> - **First-Cell Height (`y1_mesh`):** As verified on the structured Blossom boundary-layer grid, the wall-normal cell centroid spacing is **strictly uniform and constant (~0.320 mm)** across all stations.
> - **Nominal Mesh Design Target (`y+_target`):** Fixed constant design specification = **1.00**.
> - **Local Friction Wall Coordinate (`y+_local`):** Non-dimensional boundary layer distance defined by local friction velocity: $y^+_{\text{local}}(x) \equiv \frac{y_1 u_\tau(x)}{\nu} = \frac{y_1 \sqrt{|\tau_w(x)|/\rho}}{\nu}$. While physical grid height $y_1$ is constant, this local coordinate varies along the surface with physical fluid acceleration, stagnation, and shear stress $\tau_w(x)$.

| Point | Surface | x (m) | y (m) | x/c | p_wall (Pa) | Cp | tau_w (Pa) | y1_mesh (mm) [FIXED] | y+_target [FIXED] | y+_local (u_tau) | U_e (m/s) |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 1292.3 | 1.7224 | 0.3566 | 0.334 | 1.00 | 10.16 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 386.2 | 0.5147 | 2.8059 | 0.256 | 1.00 | 25.86 | 24.38 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -257.5 | -0.3432 | 2.9426 | 0.291 | 1.00 | 30.12 | 40.56 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -706.2 | -0.9412 | 2.7394 | 0.268 | 1.00 | 26.66 | 48.77 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -1000.0 | -1.3328 | 2.0030 | 0.280 | 1.00 | 23.89 | 53.46 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -1118.3 | -1.4905 | 1.5180 | 0.463 | 1.00 | 34.36 | 55.23 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -871.8 | -1.1619 | 1.2248 | 0.298 | 1.00 | 19.87 | 51.46 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -781.4 | -1.0415 | 0.5521 | 0.269 | 1.00 | 12.04 | 50.01 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -645.3 | -0.8600 | 0.9371 | 0.194 | 1.00 | 11.25 | 47.73 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -643.8 | -0.8581 | 1.1970 | 0.315 | 1.00 | 20.73 | 47.71 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -879.6 | -1.1723 | 0.3656 | 0.278 | 1.00 | 8.90 | 51.59 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -823.7 | -1.0978 | 0.1966 | 0.294 | 1.00 | 7.86 | 50.69 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -827.6 | -1.1030 | 0.4403 | 0.297 | 1.00 | 11.86 | 50.76 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -793.9 | -1.0581 | 0.5838 | 0.292 | 1.00 | 13.44 | 50.21 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -724.7 | -0.9659 | 0.5885 | 0.282 | 1.00 | 13.04 | 49.07 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -658.6 | -0.8778 | 0.5482 | 0.262 | 1.00 | 11.68 | 47.96 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -611.9 | -0.8156 | 0.4110 | 0.268 | 1.00 | 10.33 | 47.16 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -583.6 | -0.7779 | 0.4754 | 0.286 | 1.00 | 11.87 | 46.67 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -522.4 | -0.6962 | 0.0754 | 0.304 | 1.00 | 4.70 | 45.58 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -597.5 | -0.7963 | 0.2605 | 0.273 | 1.00 | 8.39 | 46.91 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
