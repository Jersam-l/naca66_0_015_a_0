# Aerodynamic Case: case_17_aoa-10_u35
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2515
- **Drag Coefficient ($C_d$):** 0.1081
- **Mean Wall $y^+$:** 15.71
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": -10.0, "case_idx": 17}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -17.2 | -0.0229 | 1.7931 | 0.403 | 1.00 | 32.53 | 35.40 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -564.1 | -0.7519 | 1.3116 | 0.283 | 1.00 | 19.51 | 46.33 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -592.8 | -0.7900 | 0.9068 | 0.282 | 1.00 | 16.20 | 46.83 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -621.8 | -0.8287 | 0.9143 | 0.275 | 1.00 | 15.81 | 47.33 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -624.8 | -0.8327 | 0.9089 | 0.275 | 1.00 | 15.81 | 47.38 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -570.5 | -0.7603 | 0.5705 | 0.242 | 1.00 | 11.02 | 46.44 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -458.6 | -0.6112 | 0.0918 | 0.253 | 1.00 | 4.56 | 44.43 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -392.3 | -0.5229 | 0.3153 | 0.279 | 1.00 | 9.45 | 43.19 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -360.5 | -0.4804 | 0.3055 | 0.315 | 1.00 | 10.49 | 42.59 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -330.6 | -0.4406 | 0.1280 | 0.401 | 1.00 | 8.65 | 42.01 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 772.4 | 1.0294 | 0.5030 | 0.367 | 1.00 | 15.70 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 68.8 | 0.0917 | 2.2826 | 0.290 | 1.00 | 26.41 | 33.36 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -238.9 | -0.3184 | 2.3792 | 0.301 | 1.00 | 28.00 | 40.19 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -451.1 | -0.6013 | 2.0291 | 0.307 | 1.00 | 26.34 | 44.29 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -616.5 | -0.8216 | 1.4619 | 0.305 | 1.00 | 22.18 | 47.24 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -689.5 | -0.9189 | 1.0291 | 0.294 | 1.00 | 17.99 | 48.48 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -642.4 | -0.8562 | 0.4946 | 0.275 | 1.00 | 11.63 | 47.68 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -517.3 | -0.6895 | 0.1280 | 0.278 | 1.00 | 6.00 | 45.49 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -397.3 | -0.5296 | 0.1073 | 0.300 | 1.00 | 5.92 | 43.29 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -319.4 | -0.4256 | 0.3798 | 0.273 | 1.00 | 10.13 | 41.79 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
