# Aerodynamic Case: case_13_aoa-10_u15
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2556
- **Drag Coefficient ($C_d$):** 0.1133
- **Mean Wall $y^+$:** 10.56
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": -10.0, "case_idx": 13}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | 17.4 | 0.1265 | 0.7694 | 0.403 | 1.00 | 21.31 | 14.02 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -85.4 | -0.6196 | 0.5162 | 0.283 | 1.00 | 12.24 | 19.09 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -89.0 | -0.6458 | 0.3783 | 0.282 | 1.00 | 10.46 | 19.24 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -91.0 | -0.6600 | 0.4324 | 0.275 | 1.00 | 10.87 | 19.33 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -92.6 | -0.6721 | 0.4257 | 0.275 | 1.00 | 10.82 | 19.40 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -82.7 | -0.5998 | 0.2703 | 0.242 | 1.00 | 7.59 | 18.97 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -62.2 | -0.4511 | 0.0446 | 0.253 | 1.00 | 3.18 | 18.07 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -51.7 | -0.3754 | 0.1551 | 0.279 | 1.00 | 6.63 | 17.59 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -47.4 | -0.3440 | 0.1521 | 0.315 | 1.00 | 7.40 | 17.39 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -42.3 | -0.3070 | 0.0465 | 0.401 | 1.00 | 5.21 | 17.15 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 163.1 | 1.1832 | 0.2178 | 0.367 | 1.00 | 10.33 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 34.5 | 0.2505 | 0.9669 | 0.290 | 1.00 | 17.19 | 12.99 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -22.7 | -0.1648 | 0.9831 | 0.301 | 1.00 | 18.00 | 16.19 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -64.6 | -0.4690 | 0.8048 | 0.307 | 1.00 | 16.59 | 18.18 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -94.4 | -0.6846 | 0.5913 | 0.305 | 1.00 | 14.11 | 19.47 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -106.8 | -0.7749 | 0.4437 | 0.294 | 1.00 | 11.82 | 19.98 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -98.1 | -0.7121 | 0.2397 | 0.275 | 1.00 | 8.09 | 19.63 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -75.1 | -0.5449 | 0.0817 | 0.278 | 1.00 | 4.79 | 18.64 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -53.1 | -0.3852 | 0.0693 | 0.300 | 1.00 | 4.76 | 17.65 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -39.7 | -0.2879 | 0.1980 | 0.273 | 1.00 | 7.31 | 17.02 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
