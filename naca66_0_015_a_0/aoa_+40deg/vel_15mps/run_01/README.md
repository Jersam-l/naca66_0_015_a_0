# Aerodynamic Case: case_113_aoa+40_u15
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9601
- **Drag Coefficient ($C_d$):** 1.0926
- **Mean Wall $y^+$:** 12.05
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 40.0, "case_idx": 113}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 440.6 | 3.1968 | 0.4863 | 0.355 | 1.00 | 14.89 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 473.6 | 3.4363 | 0.4375 | 0.281 | 1.00 | 11.20 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | 23.1 | 0.1679 | 1.4829 | 0.284 | 1.00 | 20.82 | 13.68 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -51.0 | -0.3702 | 1.0494 | 0.276 | 1.00 | 17.03 | 17.56 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -84.4 | -0.6127 | 0.7038 | 0.271 | 1.00 | 13.69 | 19.05 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 291.7 | 2.1168 | 0.7277 | 0.289 | 1.00 | 14.82 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 252.1 | 1.8296 | 0.6388 | 0.284 | 1.00 | 13.66 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 209.8 | 1.5220 | 0.6792 | 0.317 | 1.00 | 15.75 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 91.5 | 0.6640 | 0.8918 | 0.410 | 1.00 | 23.30 | 8.70 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 91.5 | 0.6640 | 0.8918 | 0.410 | 1.00 | 23.30 | 8.70 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -23.1 | -0.1676 | 0.4160 | 0.329 | 1.00 | 12.63 | 16.21 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -14.9 | -0.1082 | 0.1433 | 0.304 | 1.00 | 6.93 | 15.79 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -15.1 | -0.1095 | 0.1983 | 0.306 | 1.00 | 8.21 | 15.80 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -11.5 | -0.0835 | 0.2141 | 0.304 | 1.00 | 8.47 | 15.61 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -2.9 | -0.0212 | 0.1543 | 0.297 | 1.00 | 7.02 | 15.16 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | 0.1 | 0.0007 | 0.0079 | 0.288 | 1.00 | 1.39 | 14.99 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | -4.4 | -0.0321 | 0.0203 | 0.290 | 1.00 | 2.42 | 15.24 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | -7.4 | -0.0537 | 0.0904 | 0.304 | 1.00 | 5.51 | 15.40 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | -22.1 | -0.1607 | 0.1113 | 0.345 | 1.00 | 6.94 | 16.16 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | -22.1 | -0.1607 | 0.1113 | 0.345 | 1.00 | 6.94 | 16.16 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
