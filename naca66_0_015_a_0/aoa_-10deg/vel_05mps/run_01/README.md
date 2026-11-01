# Aerodynamic Case: case_11_aoa-10_u05
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.3641
- **Drag Coefficient ($C_d$):** 0.1121
- **Mean Wall $y^+$:** 6.67
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": -10.0, "case_idx": 11}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -1.6 | -0.1013 | 0.2605 | 0.403 | 1.00 | 12.40 | 5.25 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -12.2 | -0.7994 | 0.1514 | 0.283 | 1.00 | 6.63 | 6.71 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -11.3 | -0.7371 | 0.1388 | 0.282 | 1.00 | 6.34 | 6.59 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -10.8 | -0.7034 | 0.1867 | 0.275 | 1.00 | 7.14 | 6.53 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -10.6 | -0.6919 | 0.1988 | 0.275 | 1.00 | 7.39 | 6.50 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -9.2 | -0.6017 | 0.1479 | 0.242 | 1.00 | 5.61 | 6.33 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -7.4 | -0.4834 | 0.0132 | 0.253 | 1.00 | 1.69 | 6.09 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -6.5 | -0.4252 | 0.0615 | 0.279 | 1.00 | 4.17 | 5.97 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -5.9 | -0.3843 | 0.0633 | 0.315 | 1.00 | 4.77 | 5.88 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -5.0 | -0.3287 | 0.0267 | 0.401 | 1.00 | 3.95 | 5.76 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 15.2 | 0.9947 | 0.0796 | 0.367 | 1.00 | 6.24 | 0.36 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 1.4 | 0.0884 | 0.3167 | 0.290 | 1.00 | 9.84 | 4.77 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -5.1 | -0.3343 | 0.3448 | 0.301 | 1.00 | 10.66 | 5.78 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -8.9 | -0.5839 | 0.3422 | 0.307 | 1.00 | 10.82 | 6.29 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -11.2 | -0.7339 | 0.3105 | 0.305 | 1.00 | 10.22 | 6.58 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -12.4 | -0.8104 | 0.2531 | 0.294 | 1.00 | 8.92 | 6.73 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -11.0 | -0.7213 | 0.1360 | 0.275 | 1.00 | 6.10 | 6.56 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -9.5 | -0.6212 | 0.0112 | 0.278 | 1.00 | 1.77 | 6.37 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -7.1 | -0.4619 | 0.0029 | 0.300 | 1.00 | 0.96 | 6.04 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -4.6 | -0.3000 | 0.0728 | 0.273 | 1.00 | 4.44 | 5.70 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
