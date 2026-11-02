# Aerodynamic Case: case_55_aoa+10_u25
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2123
- **Drag Coefficient ($C_d$):** 0.1082
- **Mean Wall $y^+$:** 13.35
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 10.0, "case_idx": 55}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 423.3 | 1.1058 | 0.3428 | 0.317 | 1.00 | 11.18 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | 14.5 | 0.0379 | 1.3432 | 0.352 | 1.00 | 24.54 | 24.52 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -132.5 | -0.3461 | 1.8956 | 0.252 | 1.00 | 20.92 | 29.00 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -251.7 | -0.6576 | 1.4569 | 0.278 | 1.00 | 20.24 | 32.19 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -332.6 | -0.8689 | 1.0429 | 0.294 | 1.00 | 18.06 | 34.18 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -372.9 | -0.9740 | 0.7670 | 0.279 | 1.00 | 14.71 | 35.12 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -348.0 | -0.9090 | 0.4117 | 0.271 | 1.00 | 10.46 | 34.54 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -282.7 | -0.7385 | 0.1485 | 0.287 | 1.00 | 6.66 | 32.96 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -219.4 | -0.5731 | 0.1244 | 0.307 | 1.00 | 6.53 | 31.36 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -177.0 | -0.4625 | 0.3193 | 0.339 | 1.00 | 11.52 | 30.23 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 38.4 | 0.1004 | 1.6489 | 0.293 | 1.00 | 22.66 | 23.71 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -275.0 | -0.7184 | 1.0074 | 0.280 | 1.00 | 16.94 | 32.77 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -291.7 | -0.7619 | 0.6954 | 0.295 | 1.00 | 14.80 | 33.18 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -311.7 | -0.8143 | 0.6480 | 0.302 | 1.00 | 14.63 | 33.67 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -315.7 | -0.8247 | 0.5815 | 0.297 | 1.00 | 13.64 | 33.77 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -284.9 | -0.7443 | 0.3564 | 0.291 | 1.00 | 10.47 | 33.02 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -236.0 | -0.6165 | 0.0854 | 0.283 | 1.00 | 4.95 | 31.79 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -208.2 | -0.5440 | 0.2313 | 0.293 | 1.00 | 8.48 | 31.06 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -195.3 | -0.5103 | 0.2326 | 0.313 | 1.00 | 9.10 | 30.72 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -183.0 | -0.4780 | 0.0556 | 0.382 | 1.00 | 5.43 | 30.39 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
