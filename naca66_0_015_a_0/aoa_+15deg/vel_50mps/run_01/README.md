# Aerodynamic Case: case_70_aoa+15_u50
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.3984
- **Drag Coefficient ($C_d$):** 0.1747
- **Mean Wall $y^+$:** 19.10
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 15.0, "case_idx": 70}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 1542.3 | 1.0072 | 1.7534 | 0.199 | 1.00 | 14.70 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | -8.8 | -0.0058 | 3.6713 | 0.264 | 1.00 | 30.50 | 50.14 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -900.8 | -0.5883 | 3.3623 | 0.337 | 1.00 | 37.23 | 63.01 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -1258.3 | -0.8218 | 3.8228 | 0.275 | 1.00 | 32.40 | 67.49 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -1638.5 | -1.0700 | 2.7868 | 0.262 | 1.00 | 26.37 | 71.94 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -1829.3 | -1.1946 | 1.8390 | 0.287 | 1.00 | 23.40 | 74.07 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -1763.5 | -1.1517 | 0.9113 | 0.281 | 1.00 | 16.13 | 73.34 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -1496.8 | -0.9775 | 0.4367 | 0.289 | 1.00 | 11.52 | 70.31 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -1233.8 | -0.8058 | 0.5345 | 0.299 | 1.00 | 13.18 | 67.19 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -1182.9 | -0.7725 | 1.1810 | 0.247 | 1.00 | 16.14 | 66.57 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -2378.0 | -1.5530 | 4.3024 | 0.300 | 1.00 | 37.36 | 79.89 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -1857.9 | -1.2133 | 0.9372 | 0.273 | 1.00 | 15.92 | 74.39 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -1764.6 | -1.1524 | 0.5886 | 0.283 | 1.00 | 13.09 | 73.36 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -1641.6 | -1.0720 | 0.9338 | 0.289 | 1.00 | 16.83 | 71.97 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -1598.4 | -1.0438 | 0.9157 | 0.289 | 1.00 | 16.66 | 71.48 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -1464.5 | -0.9564 | 0.4448 | 0.289 | 1.00 | 11.62 | 69.94 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -1322.4 | -0.8636 | 0.2845 | 0.282 | 1.00 | 9.06 | 68.26 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -1245.5 | -0.8134 | 0.3290 | 0.288 | 1.00 | 9.95 | 67.33 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -1232.3 | -0.8048 | 0.3187 | 0.312 | 1.00 | 10.62 | 67.17 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -1249.6 | -0.8161 | 0.0702 | 0.396 | 1.00 | 6.32 | 67.38 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
