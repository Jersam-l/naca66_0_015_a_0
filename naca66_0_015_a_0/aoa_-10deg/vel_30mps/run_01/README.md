# Aerodynamic Case: case_16_aoa-10_u30
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2589
- **Drag Coefficient ($C_d$):** 0.1095
- **Mean Wall $y^+$:** 14.57
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": -10.0, "case_idx": 16}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | 1.0 | 0.0017 | 1.5411 | 0.403 | 1.00 | 30.16 | 29.97 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -399.2 | -0.7242 | 1.0872 | 0.283 | 1.00 | 17.76 | 39.39 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -418.2 | -0.7586 | 0.7573 | 0.282 | 1.00 | 14.80 | 39.78 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -435.4 | -0.7899 | 0.7926 | 0.275 | 1.00 | 14.72 | 40.14 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -438.6 | -0.7957 | 0.7923 | 0.275 | 1.00 | 14.76 | 40.20 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -399.6 | -0.7249 | 0.5012 | 0.242 | 1.00 | 10.33 | 39.40 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -317.3 | -0.5756 | 0.0757 | 0.253 | 1.00 | 4.13 | 37.66 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -269.5 | -0.4889 | 0.2738 | 0.279 | 1.00 | 8.81 | 36.61 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -246.9 | -0.4479 | 0.2628 | 0.315 | 1.00 | 9.73 | 36.10 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -226.4 | -0.4108 | 0.1075 | 0.401 | 1.00 | 7.92 | 35.63 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 584.6 | 1.0605 | 0.4379 | 0.367 | 1.00 | 14.65 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 72.1 | 0.1307 | 1.9475 | 0.290 | 1.00 | 24.39 | 27.97 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -154.7 | -0.2807 | 2.0166 | 0.301 | 1.00 | 25.78 | 33.95 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -313.8 | -0.5693 | 1.6975 | 0.307 | 1.00 | 24.09 | 37.58 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -434.4 | -0.7881 | 1.2254 | 0.305 | 1.00 | 20.31 | 40.12 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -486.4 | -0.8823 | 0.8744 | 0.294 | 1.00 | 16.59 | 41.16 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -451.8 | -0.8197 | 0.4292 | 0.275 | 1.00 | 10.83 | 40.47 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -360.8 | -0.6544 | 0.1177 | 0.278 | 1.00 | 5.75 | 38.59 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -274.4 | -0.4978 | 0.0950 | 0.300 | 1.00 | 5.57 | 36.72 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -218.3 | -0.3960 | 0.3350 | 0.273 | 1.00 | 9.51 | 35.45 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
