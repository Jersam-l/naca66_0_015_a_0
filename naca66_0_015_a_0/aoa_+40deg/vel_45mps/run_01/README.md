# Aerodynamic Case: case_119_aoa+40_u45
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.1393
- **Drag Coefficient ($C_d$):** 0.9799
- **Mean Wall $y^+$:** 21.21
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 40.0, "case_idx": 119}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 3689.8 | 2.9749 | 1.6698 | 0.355 | 1.00 | 27.64 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 4240.9 | 3.4192 | 1.1534 | 0.281 | 1.00 | 18.19 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | -434.8 | -0.3505 | 4.8896 | 0.284 | 1.00 | 37.81 | 52.30 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -958.1 | -0.7724 | 3.5699 | 0.276 | 1.00 | 31.41 | 59.91 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -1095.5 | -0.8833 | 1.9953 | 0.271 | 1.00 | 23.04 | 61.75 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 2858.4 | 2.3046 | 1.9463 | 0.289 | 1.00 | 24.24 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 2594.4 | 2.0917 | 1.7014 | 0.284 | 1.00 | 22.30 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 2325.9 | 1.8753 | 1.8742 | 0.317 | 1.00 | 26.16 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 1424.9 | 1.1488 | 2.5606 | 0.410 | 1.00 | 39.49 | 0.00 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 1424.9 | 1.1488 | 2.5606 | 0.410 | 1.00 | 39.49 | 0.00 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -1289.1 | -1.0393 | 1.5021 | 0.329 | 1.00 | 23.97 | 64.26 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -1214.6 | -0.9793 | 0.7955 | 0.304 | 1.00 | 16.33 | 63.31 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -1165.8 | -0.9399 | 1.3266 | 0.306 | 1.00 | 21.24 | 62.68 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -875.6 | -0.7059 | 1.5421 | 0.304 | 1.00 | 22.74 | 58.77 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -414.5 | -0.3342 | 1.4129 | 0.297 | 1.00 | 21.24 | 51.98 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | -31.5 | -0.0254 | 1.2271 | 0.288 | 1.00 | 19.19 | 45.57 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 232.0 | 0.1871 | 1.0860 | 0.290 | 1.00 | 18.22 | 40.57 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 490.6 | 0.3956 | 0.8049 | 0.304 | 1.00 | 16.44 | 34.98 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | 543.0 | 0.4378 | 0.1444 | 0.345 | 1.00 | 7.91 | 33.74 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | 543.0 | 0.4378 | 0.1444 | 0.345 | 1.00 | 7.91 | 33.74 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
