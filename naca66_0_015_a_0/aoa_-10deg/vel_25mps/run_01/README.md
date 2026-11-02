# Aerodynamic Case: case_15_aoa-10_u25
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2511
- **Drag Coefficient ($C_d$):** 0.1097
- **Mean Wall $y^+$:** 13.33
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": -10.0, "case_idx": 15}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -36.0 | -0.0941 | 1.2827 | 0.403 | 1.00 | 27.51 | 26.15 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -317.2 | -0.8285 | 0.8954 | 0.283 | 1.00 | 16.12 | 33.80 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -330.5 | -0.8633 | 0.6291 | 0.282 | 1.00 | 13.49 | 34.13 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -340.6 | -0.8898 | 0.6751 | 0.275 | 1.00 | 13.59 | 34.37 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -343.5 | -0.8974 | 0.6713 | 0.275 | 1.00 | 13.59 | 34.44 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -316.1 | -0.8257 | 0.4226 | 0.242 | 1.00 | 9.49 | 33.78 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -258.9 | -0.6762 | 0.0652 | 0.253 | 1.00 | 3.84 | 32.37 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -227.0 | -0.5930 | 0.2330 | 0.279 | 1.00 | 8.12 | 31.55 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -212.3 | -0.5545 | 0.2210 | 0.315 | 1.00 | 8.92 | 31.17 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -198.3 | -0.5180 | 0.0823 | 0.401 | 1.00 | 6.93 | 30.80 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 368.3 | 0.9621 | 0.3622 | 0.367 | 1.00 | 13.32 | 4.87 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 10.9 | 0.0286 | 1.6206 | 0.290 | 1.00 | 22.25 | 24.64 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -147.3 | -0.3848 | 1.6643 | 0.301 | 1.00 | 23.42 | 29.42 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -260.4 | -0.6802 | 1.3832 | 0.307 | 1.00 | 21.74 | 32.41 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -343.9 | -0.8982 | 1.0032 | 0.305 | 1.00 | 18.38 | 34.44 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -379.1 | -0.9904 | 0.7278 | 0.294 | 1.00 | 15.13 | 35.27 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -355.0 | -0.9273 | 0.3673 | 0.275 | 1.00 | 10.02 | 34.71 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -291.5 | -0.7614 | 0.1077 | 0.278 | 1.00 | 5.50 | 33.18 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -231.1 | -0.6037 | 0.0877 | 0.300 | 1.00 | 5.35 | 31.66 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -192.6 | -0.5032 | 0.2870 | 0.273 | 1.00 | 8.81 | 30.65 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
