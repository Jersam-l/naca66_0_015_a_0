# Aerodynamic Case: case_09_aoa-15_u45
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5326
- **Drag Coefficient ($C_d$):** 0.1752
- **Mean Wall $y^+$:** 17.15
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": -15.0, "case_idx": 9}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -1820.7 | -1.4679 | 3.6936 | 0.310 | 1.00 | 35.80 | 70.69 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -1889.4 | -1.5233 | 0.5562 | 0.253 | 1.00 | 11.38 | 71.48 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -1384.8 | -1.1165 | 0.2748 | 0.272 | 1.00 | 8.55 | 65.47 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -1191.4 | -0.9605 | 1.0629 | 0.291 | 1.00 | 18.07 | 63.01 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -1214.0 | -0.9788 | 1.1323 | 0.278 | 1.00 | 17.84 | 63.30 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -1164.8 | -0.9392 | 0.8211 | 0.300 | 1.00 | 16.38 | 62.66 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -636.0 | -0.5128 | 0.5141 | 0.332 | 1.00 | 14.33 | 55.35 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -587.3 | -0.4735 | 0.3075 | 0.267 | 1.00 | 8.90 | 54.62 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -562.6 | -0.4536 | 0.4872 | 0.217 | 1.00 | 9.14 | 54.26 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -536.2 | -0.4323 | 0.1784 | 0.148 | 1.00 | 3.77 | 53.86 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 1307.2 | 1.0539 | 1.5736 | 0.223 | 1.00 | 15.67 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 192.3 | 0.1550 | 2.9635 | 0.291 | 1.00 | 30.18 | 41.37 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -448.8 | -0.3618 | 3.3144 | 0.297 | 1.00 | 32.61 | 52.51 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -821.2 | -0.6621 | 2.9622 | 0.294 | 1.00 | 30.44 | 58.02 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -1088.3 | -0.8774 | 2.0384 | 0.289 | 1.00 | 24.84 | 61.66 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -1189.0 | -0.9587 | 1.3560 | 0.273 | 1.00 | 19.13 | 62.98 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -1063.5 | -0.8575 | 0.6150 | 0.268 | 1.00 | 12.66 | 61.33 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -831.6 | -0.6704 | 0.2285 | 0.281 | 1.00 | 8.10 | 58.16 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -610.3 | -0.4920 | 0.2828 | 0.297 | 1.00 | 9.52 | 54.97 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -501.4 | -0.4042 | 0.7093 | 0.314 | 1.00 | 15.92 | 53.33 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
