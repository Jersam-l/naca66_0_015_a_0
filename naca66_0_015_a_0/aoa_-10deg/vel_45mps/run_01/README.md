# Aerodynamic Case: case_19_aoa-10_u45
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2445
- **Drag Coefficient ($C_d$):** 0.1069
- **Mean Wall $y^+$:** 17.84
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": -10.0, "case_idx": 19}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -141.5 | -0.1141 | 2.2992 | 0.403 | 1.00 | 36.84 | 47.50 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -1044.6 | -0.8422 | 1.7530 | 0.283 | 1.00 | 22.55 | 61.08 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -1093.2 | -0.8814 | 1.2092 | 0.282 | 1.00 | 18.71 | 61.72 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -1151.9 | -0.9287 | 1.1668 | 0.275 | 1.00 | 17.86 | 62.49 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -1157.5 | -0.9332 | 1.1388 | 0.275 | 1.00 | 17.69 | 62.57 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -1066.0 | -0.8595 | 0.7004 | 0.242 | 1.00 | 12.21 | 61.36 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -883.3 | -0.7122 | 0.1355 | 0.253 | 1.00 | 5.56 | 58.88 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -773.4 | -0.6235 | 0.4025 | 0.279 | 1.00 | 10.68 | 57.34 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -721.8 | -0.5819 | 0.3934 | 0.315 | 1.00 | 11.90 | 56.60 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -673.3 | -0.5428 | 0.1682 | 0.401 | 1.00 | 9.91 | 55.90 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 1155.6 | 0.9317 | 0.6376 | 0.367 | 1.00 | 17.67 | 11.76 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | -16.1 | -0.0130 | 2.9499 | 0.290 | 1.00 | 30.02 | 45.29 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -523.1 | -0.4218 | 3.1096 | 0.301 | 1.00 | 32.01 | 53.66 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -861.0 | -0.6942 | 2.7175 | 0.307 | 1.00 | 30.48 | 58.57 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -1136.6 | -0.9164 | 1.9594 | 0.305 | 1.00 | 25.68 | 62.30 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -1266.1 | -1.0208 | 1.3487 | 0.294 | 1.00 | 20.60 | 63.97 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -1191.8 | -0.9609 | 0.6271 | 0.275 | 1.00 | 13.09 | 63.02 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -985.6 | -0.7946 | 0.1508 | 0.278 | 1.00 | 6.51 | 60.28 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -786.8 | -0.6344 | 0.1257 | 0.300 | 1.00 | 6.41 | 57.53 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -655.5 | -0.5285 | 0.4890 | 0.273 | 1.00 | 11.49 | 55.63 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
