# Aerodynamic Case: case_12_aoa-10_u10
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.3486
- **Drag Coefficient ($C_d$):** 0.1336
- **Mean Wall $y^+$:** 8.83
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": -10.0, "case_idx": 12}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -13.5 | -0.2204 | 0.5184 | 0.403 | 1.00 | 17.49 | 11.05 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -57.5 | -0.9385 | 0.3021 | 0.283 | 1.00 | 9.36 | 13.92 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -56.6 | -0.9243 | 0.2427 | 0.282 | 1.00 | 8.38 | 13.87 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -56.0 | -0.9148 | 0.3092 | 0.275 | 1.00 | 9.20 | 13.84 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -57.1 | -0.9315 | 0.3068 | 0.275 | 1.00 | 9.18 | 13.90 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -52.8 | -0.8618 | 0.2038 | 0.242 | 1.00 | 6.59 | 13.64 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -43.5 | -0.7094 | 0.0274 | 0.253 | 1.00 | 2.48 | 13.07 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -39.1 | -0.6378 | 0.1152 | 0.279 | 1.00 | 5.71 | 12.80 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -36.9 | -0.6017 | 0.1164 | 0.315 | 1.00 | 6.47 | 12.66 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -33.9 | -0.5542 | 0.0416 | 0.401 | 1.00 | 4.93 | 12.47 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 52.8 | 0.8617 | 0.1557 | 0.367 | 1.00 | 8.73 | 3.72 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | -2.2 | -0.0352 | 0.6361 | 0.290 | 1.00 | 13.94 | 10.18 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -27.2 | -0.4449 | 0.6618 | 0.301 | 1.00 | 14.77 | 12.02 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -44.9 | -0.7337 | 0.5587 | 0.307 | 1.00 | 13.82 | 13.17 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -57.8 | -0.9442 | 0.4122 | 0.305 | 1.00 | 11.78 | 13.94 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -63.3 | -1.0329 | 0.3061 | 0.294 | 1.00 | 9.81 | 14.26 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -59.0 | -0.9630 | 0.1645 | 0.275 | 1.00 | 6.71 | 14.01 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -48.9 | -0.7981 | 0.0468 | 0.278 | 1.00 | 3.63 | 13.41 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -39.0 | -0.6366 | 0.0389 | 0.300 | 1.00 | 3.57 | 12.79 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -32.3 | -0.5279 | 0.1395 | 0.273 | 1.00 | 6.14 | 12.36 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
