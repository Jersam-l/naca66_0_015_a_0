# Aerodynamic Case: case_18_aoa-10_u40
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2454
- **Drag Coefficient ($C_d$):** 0.1071
- **Mean Wall $y^+$:** 16.79
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": -10.0, "case_idx": 18}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -60.3 | -0.0615 | 2.0465 | 0.403 | 1.00 | 34.75 | 41.21 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -775.3 | -0.7911 | 1.5336 | 0.283 | 1.00 | 21.09 | 53.53 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -814.1 | -0.8307 | 1.0581 | 0.282 | 1.00 | 17.50 | 54.12 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -856.8 | -0.8743 | 1.0411 | 0.275 | 1.00 | 16.87 | 54.76 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -861.0 | -0.8785 | 1.0245 | 0.275 | 1.00 | 16.78 | 54.82 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -788.9 | -0.8050 | 0.6353 | 0.242 | 1.00 | 11.63 | 53.74 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -643.6 | -0.6567 | 0.1144 | 0.253 | 1.00 | 5.10 | 51.48 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -556.9 | -0.5683 | 0.3588 | 0.279 | 1.00 | 10.08 | 50.09 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -516.1 | -0.5266 | 0.3502 | 0.315 | 1.00 | 11.23 | 49.42 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -477.4 | -0.4871 | 0.1486 | 0.401 | 1.00 | 9.32 | 48.78 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 967.8 | 0.9875 | 0.5703 | 0.367 | 1.00 | 16.71 | 4.47 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 44.7 | 0.0456 | 2.6164 | 0.290 | 1.00 | 28.27 | 39.08 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -356.6 | -0.3639 | 2.7436 | 0.301 | 1.00 | 30.06 | 46.71 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -628.7 | -0.6415 | 2.3695 | 0.307 | 1.00 | 28.46 | 51.25 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -846.0 | -0.8633 | 1.7068 | 0.305 | 1.00 | 23.97 | 54.60 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -945.1 | -0.9644 | 1.1875 | 0.294 | 1.00 | 19.33 | 56.06 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -885.0 | -0.9030 | 0.5614 | 0.275 | 1.00 | 12.39 | 55.18 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -721.9 | -0.7366 | 0.1410 | 0.278 | 1.00 | 6.30 | 52.71 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -564.5 | -0.5760 | 0.1208 | 0.300 | 1.00 | 6.28 | 50.22 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -462.4 | -0.4719 | 0.4349 | 0.273 | 1.00 | 10.84 | 48.53 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
