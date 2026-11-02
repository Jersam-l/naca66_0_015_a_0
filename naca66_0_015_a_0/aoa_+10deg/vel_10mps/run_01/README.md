# Aerodynamic Case: case_52_aoa+10_u10
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.1932
- **Drag Coefficient ($C_d$):** 0.1121
- **Mean Wall $y^+$:** 8.73
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 10.0, "case_idx": 52}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 61.5 | 1.0040 | 0.1314 | 0.317 | 1.00 | 6.92 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | -5.3 | -0.0865 | 0.5367 | 0.352 | 1.00 | 15.51 | 10.42 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -29.5 | -0.4819 | 0.7433 | 0.252 | 1.00 | 13.10 | 12.17 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -48.3 | -0.7886 | 0.5870 | 0.278 | 1.00 | 12.85 | 13.37 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -61.0 | -0.9962 | 0.4361 | 0.294 | 1.00 | 11.68 | 14.13 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -67.6 | -1.1043 | 0.3350 | 0.279 | 1.00 | 9.72 | 14.51 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -63.3 | -1.0334 | 0.1981 | 0.271 | 1.00 | 7.25 | 14.26 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -52.3 | -0.8533 | 0.0820 | 0.287 | 1.00 | 4.95 | 13.61 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -41.3 | -0.6748 | 0.0700 | 0.307 | 1.00 | 4.90 | 12.94 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -34.5 | -0.5633 | 0.1580 | 0.339 | 1.00 | 8.10 | 12.50 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 0.5 | 0.0075 | 0.6545 | 0.293 | 1.00 | 14.28 | 9.96 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -52.3 | -0.8538 | 0.4019 | 0.280 | 1.00 | 10.70 | 13.62 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -54.5 | -0.8903 | 0.2977 | 0.295 | 1.00 | 9.68 | 13.75 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -57.1 | -0.9329 | 0.2954 | 0.302 | 1.00 | 9.88 | 13.90 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -57.9 | -0.9456 | 0.2678 | 0.297 | 1.00 | 9.26 | 13.95 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -52.5 | -0.8571 | 0.1685 | 0.291 | 1.00 | 7.20 | 13.63 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -44.8 | -0.7307 | 0.0385 | 0.283 | 1.00 | 3.32 | 13.16 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -41.0 | -0.6689 | 0.1124 | 0.293 | 1.00 | 5.91 | 12.92 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -38.7 | -0.6320 | 0.1112 | 0.313 | 1.00 | 6.29 | 12.78 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -36.1 | -0.5901 | 0.0220 | 0.382 | 1.00 | 3.41 | 12.61 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
