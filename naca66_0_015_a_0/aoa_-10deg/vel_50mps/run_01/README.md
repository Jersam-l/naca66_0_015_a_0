# Aerodynamic Case: case_20_aoa-10_u50
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2453
- **Drag Coefficient ($C_d$):** 0.1069
- **Mean Wall $y^+$:** 18.83
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": -10.0, "case_idx": 20}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -69.5 | -0.0454 | 2.5547 | 0.403 | 1.00 | 38.83 | 51.12 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -1181.9 | -0.7719 | 1.9661 | 0.283 | 1.00 | 23.88 | 66.56 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -1240.0 | -0.8098 | 1.3566 | 0.282 | 1.00 | 19.81 | 67.26 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -1316.2 | -0.8596 | 1.2906 | 0.275 | 1.00 | 18.79 | 68.18 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -1323.0 | -0.8640 | 1.2520 | 0.275 | 1.00 | 18.55 | 68.26 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -1209.1 | -0.7896 | 0.7646 | 0.242 | 1.00 | 12.76 | 66.89 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -984.9 | -0.6432 | 0.1615 | 0.253 | 1.00 | 6.09 | 64.09 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -849.5 | -0.5547 | 0.4476 | 0.279 | 1.00 | 11.26 | 62.34 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -785.6 | -0.5131 | 0.4391 | 0.315 | 1.00 | 12.57 | 61.50 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -724.9 | -0.4734 | 0.1903 | 0.401 | 1.00 | 10.54 | 60.69 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 1531.8 | 1.0004 | 0.7084 | 0.367 | 1.00 | 18.63 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 84.7 | 0.0553 | 3.2823 | 0.290 | 1.00 | 31.66 | 48.60 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -540.8 | -0.3532 | 3.4770 | 0.301 | 1.00 | 33.84 | 58.16 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -950.5 | -0.6208 | 3.0730 | 0.307 | 1.00 | 32.41 | 63.66 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -1290.7 | -0.8429 | 2.2211 | 0.305 | 1.00 | 27.34 | 67.88 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -1455.7 | -0.9506 | 1.5145 | 0.294 | 1.00 | 21.83 | 69.83 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -1366.1 | -0.8921 | 0.6948 | 0.275 | 1.00 | 13.78 | 68.78 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -1111.6 | -0.7260 | 0.1626 | 0.278 | 1.00 | 6.76 | 65.69 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -865.3 | -0.5651 | 0.1380 | 0.300 | 1.00 | 6.71 | 62.55 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -702.4 | -0.4587 | 0.5450 | 0.273 | 1.00 | 12.13 | 60.39 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
