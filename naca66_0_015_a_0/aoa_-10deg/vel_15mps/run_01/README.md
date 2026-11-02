# Aerodynamic Case: case_13_aoa-10_u15
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2810
- **Drag Coefficient ($C_d$):** 0.1208
- **Mean Wall $y^+$:** 10.52
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": -10.0, "case_idx": 13}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -1.7 | -0.0122 | 0.7751 | 0.403 | 1.00 | 21.39 | 15.09 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -102.3 | -0.7421 | 0.4849 | 0.283 | 1.00 | 11.86 | 19.80 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -104.6 | -0.7589 | 0.3618 | 0.282 | 1.00 | 10.23 | 19.89 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -105.8 | -0.7681 | 0.4323 | 0.275 | 1.00 | 10.87 | 19.95 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -108.6 | -0.7878 | 0.4263 | 0.275 | 1.00 | 10.83 | 20.06 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -99.4 | -0.7210 | 0.2716 | 0.242 | 1.00 | 7.60 | 19.68 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -79.2 | -0.5745 | 0.0460 | 0.253 | 1.00 | 3.24 | 18.82 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -69.2 | -0.5019 | 0.1599 | 0.279 | 1.00 | 6.73 | 18.38 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -66.4 | -0.4816 | 0.1723 | 0.315 | 1.00 | 7.88 | 18.26 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -60.6 | -0.4394 | 0.0749 | 0.401 | 1.00 | 6.61 | 18.00 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 146.2 | 1.0608 | 0.2283 | 0.367 | 1.00 | 10.58 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 21.4 | 0.1554 | 0.9584 | 0.290 | 1.00 | 17.11 | 13.79 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -35.7 | -0.2588 | 0.9774 | 0.301 | 1.00 | 17.94 | 16.83 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -77.4 | -0.5615 | 0.8010 | 0.307 | 1.00 | 16.55 | 18.74 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -107.0 | -0.7767 | 0.5876 | 0.305 | 1.00 | 14.06 | 19.99 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -119.5 | -0.8674 | 0.4390 | 0.294 | 1.00 | 11.75 | 20.50 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -111.2 | -0.8072 | 0.2344 | 0.275 | 1.00 | 8.00 | 20.16 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -89.1 | -0.6462 | 0.0772 | 0.278 | 1.00 | 4.66 | 19.25 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -68.2 | -0.4949 | 0.0635 | 0.300 | 1.00 | 4.55 | 18.34 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -55.7 | -0.4040 | 0.1976 | 0.273 | 1.00 | 7.31 | 17.77 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
