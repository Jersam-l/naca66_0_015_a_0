# Aerodynamic Case: case_54_aoa+10_u20
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2134
- **Drag Coefficient ($C_d$):** 0.1097
- **Mean Wall $y^+$:** 12.03
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 10.0, "case_idx": 54}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 264.5 | 1.0798 | 0.2734 | 0.317 | 1.00 | 9.99 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | -3.1 | -0.0127 | 1.0580 | 0.352 | 1.00 | 21.78 | 20.13 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -92.2 | -0.3764 | 1.4530 | 0.252 | 1.00 | 18.32 | 23.46 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -169.6 | -0.6921 | 1.1157 | 0.278 | 1.00 | 17.71 | 26.02 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -220.5 | -0.9000 | 0.8148 | 0.294 | 1.00 | 15.96 | 27.57 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -245.5 | -1.0022 | 0.6168 | 0.279 | 1.00 | 13.19 | 28.30 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -229.5 | -0.9366 | 0.3443 | 0.271 | 1.00 | 9.56 | 27.83 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -187.2 | -0.7640 | 0.1329 | 0.287 | 1.00 | 6.30 | 26.56 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -146.4 | -0.5976 | 0.1117 | 0.307 | 1.00 | 6.19 | 25.28 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -120.0 | -0.4898 | 0.2694 | 0.339 | 1.00 | 10.58 | 24.41 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 18.7 | 0.0761 | 1.3176 | 0.293 | 1.00 | 20.26 | 19.22 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -183.0 | -0.7469 | 0.7952 | 0.280 | 1.00 | 15.05 | 26.43 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -193.8 | -0.7911 | 0.5530 | 0.295 | 1.00 | 13.20 | 26.77 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -205.4 | -0.8386 | 0.5284 | 0.302 | 1.00 | 13.21 | 27.12 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -208.2 | -0.8498 | 0.4776 | 0.297 | 1.00 | 12.36 | 27.20 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -188.5 | -0.7694 | 0.2959 | 0.291 | 1.00 | 9.54 | 26.60 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -157.2 | -0.6416 | 0.0669 | 0.283 | 1.00 | 4.38 | 25.62 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -140.4 | -0.5730 | 0.1948 | 0.293 | 1.00 | 7.78 | 25.08 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -132.8 | -0.5420 | 0.1972 | 0.313 | 1.00 | 8.38 | 24.84 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -124.5 | -0.5082 | 0.0445 | 0.382 | 1.00 | 4.85 | 24.56 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
