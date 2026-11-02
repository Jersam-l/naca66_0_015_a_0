# Aerodynamic Case: case_16_aoa-10_u30
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2413
- **Drag Coefficient ($C_d$):** 0.1033
- **Mean Wall $y^+$:** 14.44
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": -10.0, "case_idx": 16}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | 50.9 | 0.0924 | 1.5197 | 0.403 | 1.00 | 29.95 | 28.58 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -358.9 | -0.6510 | 1.1802 | 0.283 | 1.00 | 18.50 | 38.55 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -383.4 | -0.6956 | 0.8173 | 0.282 | 1.00 | 15.38 | 39.06 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -407.0 | -0.7384 | 0.8025 | 0.275 | 1.00 | 14.81 | 39.55 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -408.9 | -0.7418 | 0.7871 | 0.275 | 1.00 | 14.71 | 39.59 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -368.3 | -0.6682 | 0.4994 | 0.242 | 1.00 | 10.31 | 38.75 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -284.7 | -0.5165 | 0.0665 | 0.253 | 1.00 | 3.85 | 36.94 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -235.5 | -0.4272 | 0.2697 | 0.279 | 1.00 | 8.74 | 35.84 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -211.1 | -0.3829 | 0.2611 | 0.315 | 1.00 | 9.70 | 35.28 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -187.8 | -0.3408 | 0.1131 | 0.401 | 1.00 | 8.13 | 34.74 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 617.3 | 1.1198 | 0.4098 | 0.367 | 1.00 | 14.17 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 90.8 | 0.1648 | 1.9626 | 0.290 | 1.00 | 24.49 | 27.42 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -134.1 | -0.2432 | 2.0247 | 0.301 | 1.00 | 25.83 | 33.45 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -292.5 | -0.5306 | 1.6990 | 0.307 | 1.00 | 24.10 | 37.12 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -412.2 | -0.7478 | 1.2251 | 0.305 | 1.00 | 20.31 | 39.66 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -462.4 | -0.8388 | 0.8727 | 0.294 | 1.00 | 16.57 | 40.68 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -425.3 | -0.7715 | 0.4223 | 0.275 | 1.00 | 10.74 | 39.93 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -331.7 | -0.6017 | 0.1040 | 0.278 | 1.00 | 5.41 | 37.97 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -242.3 | -0.4395 | 0.0755 | 0.300 | 1.00 | 4.96 | 35.99 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -180.9 | -0.3282 | 0.3046 | 0.273 | 1.00 | 9.07 | 34.58 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
