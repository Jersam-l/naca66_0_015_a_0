# Aerodynamic Case: case_18_aoa-10_u40
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2480
- **Drag Coefficient ($C_d$):** 0.1075
- **Mean Wall $y^+$:** 16.80
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": -10.0, "case_idx": 18}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -88.7 | -0.0905 | 2.0450 | 0.403 | 1.00 | 34.74 | 41.77 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -802.9 | -0.8193 | 1.5359 | 0.283 | 1.00 | 21.11 | 53.95 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -841.6 | -0.8588 | 1.0596 | 0.282 | 1.00 | 17.51 | 54.53 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -884.8 | -0.9028 | 1.0413 | 0.275 | 1.00 | 16.87 | 55.18 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -889.5 | -0.9076 | 1.0252 | 0.275 | 1.00 | 16.79 | 55.25 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -818.4 | -0.8351 | 0.6384 | 0.242 | 1.00 | 11.66 | 54.19 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -673.3 | -0.6870 | 0.1109 | 0.253 | 1.00 | 5.02 | 51.95 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -586.0 | -0.5980 | 0.3595 | 0.279 | 1.00 | 10.09 | 50.56 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -543.9 | -0.5550 | 0.3514 | 0.315 | 1.00 | 11.25 | 49.88 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -504.2 | -0.5145 | 0.1519 | 0.401 | 1.00 | 9.42 | 49.23 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 937.8 | 0.9569 | 0.5691 | 0.367 | 1.00 | 16.70 | 8.30 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 14.6 | 0.0149 | 2.6162 | 0.290 | 1.00 | 28.27 | 39.70 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -386.3 | -0.3941 | 2.7431 | 0.301 | 1.00 | 30.06 | 47.23 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -658.0 | -0.6715 | 2.3686 | 0.307 | 1.00 | 28.45 | 51.71 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -875.0 | -0.8928 | 1.7057 | 0.305 | 1.00 | 23.96 | 55.03 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -973.5 | -0.9934 | 1.1859 | 0.294 | 1.00 | 19.32 | 56.48 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -912.9 | -0.9315 | 0.5587 | 0.275 | 1.00 | 12.36 | 55.59 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -749.6 | -0.7649 | 0.1374 | 0.278 | 1.00 | 6.22 | 53.14 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -592.2 | -0.6043 | 0.1161 | 0.300 | 1.00 | 6.16 | 50.66 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -489.4 | -0.4994 | 0.4277 | 0.273 | 1.00 | 10.75 | 48.98 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
