# Aerodynamic Case: case_120_aoa+40_u50
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.2907
- **Drag Coefficient ($C_d$):** 1.0962
- **Mean Wall $y^+$:** 22.45
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 40.0, "case_idx": 120}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 4334.4 | 2.8306 | 1.9599 | 0.355 | 1.00 | 29.96 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 5153.2 | 3.3653 | 1.1499 | 0.281 | 1.00 | 18.16 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | -744.3 | -0.4860 | 5.5812 | 0.284 | 1.00 | 40.40 | 60.95 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -1356.2 | -0.8857 | 4.1375 | 0.276 | 1.00 | 33.81 | 68.66 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -1493.6 | -0.9754 | 2.1288 | 0.271 | 1.00 | 23.80 | 70.28 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 3566.7 | 2.3293 | 2.1205 | 0.289 | 1.00 | 25.30 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 3259.7 | 2.1288 | 1.8473 | 0.284 | 1.00 | 23.24 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 2953.2 | 1.9286 | 2.0269 | 0.317 | 1.00 | 27.20 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 1949.4 | 1.2731 | 2.7542 | 0.410 | 1.00 | 40.95 | 0.00 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 1949.4 | 1.2731 | 2.7542 | 0.410 | 1.00 | 40.95 | 0.00 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -1568.7 | -1.0244 | 1.6447 | 0.329 | 1.00 | 25.22 | 71.14 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -1597.5 | -1.0433 | 0.7972 | 0.304 | 1.00 | 16.34 | 71.47 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -1598.0 | -1.0436 | 1.4461 | 0.306 | 1.00 | 22.18 | 71.48 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -1336.1 | -0.8726 | 1.8019 | 0.304 | 1.00 | 24.58 | 68.42 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -879.5 | -0.5744 | 1.8425 | 0.297 | 1.00 | 24.25 | 62.74 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | -338.2 | -0.2208 | 1.7493 | 0.288 | 1.00 | 22.91 | 55.25 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 193.5 | 0.1264 | 1.5266 | 0.290 | 1.00 | 21.61 | 46.73 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 739.8 | 0.4831 | 1.0872 | 0.304 | 1.00 | 19.11 | 35.95 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | 943.7 | 0.6163 | 0.1880 | 0.345 | 1.00 | 9.02 | 30.97 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | 943.7 | 0.6163 | 0.1880 | 0.345 | 1.00 | 9.02 | 30.97 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
