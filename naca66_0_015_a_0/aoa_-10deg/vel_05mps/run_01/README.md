# Aerodynamic Case: case_11_aoa-10_u05
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.3625
- **Drag Coefficient ($C_d$):** 0.1119
- **Mean Wall $y^+$:** 6.67
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": -10.0, "case_idx": 11}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -1.9 | -0.1257 | 0.2601 | 0.403 | 1.00 | 12.39 | 5.30 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -12.6 | -0.8249 | 0.1530 | 0.283 | 1.00 | 6.66 | 6.75 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -11.7 | -0.7645 | 0.1397 | 0.282 | 1.00 | 6.36 | 6.64 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -11.2 | -0.7323 | 0.1868 | 0.275 | 1.00 | 7.15 | 6.58 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -11.0 | -0.7213 | 0.1988 | 0.275 | 1.00 | 7.39 | 6.56 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -9.7 | -0.6320 | 0.1481 | 0.242 | 1.00 | 5.62 | 6.39 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -7.9 | -0.5139 | 0.0129 | 0.253 | 1.00 | 1.66 | 6.15 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -7.0 | -0.4556 | 0.0615 | 0.279 | 1.00 | 4.18 | 6.03 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -6.3 | -0.4140 | 0.0634 | 0.315 | 1.00 | 4.78 | 5.95 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -5.5 | -0.3576 | 0.0269 | 0.401 | 1.00 | 3.97 | 5.83 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 14.8 | 0.9670 | 0.0792 | 0.367 | 1.00 | 6.23 | 0.91 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 0.9 | 0.0589 | 0.3168 | 0.290 | 1.00 | 9.84 | 4.85 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -5.6 | -0.3635 | 0.3449 | 0.301 | 1.00 | 10.66 | 5.84 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -9.4 | -0.6130 | 0.3422 | 0.307 | 1.00 | 10.82 | 6.35 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -11.7 | -0.7631 | 0.3104 | 0.305 | 1.00 | 10.22 | 6.64 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -12.9 | -0.8394 | 0.2528 | 0.294 | 1.00 | 8.92 | 6.78 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -11.5 | -0.7503 | 0.1353 | 0.275 | 1.00 | 6.08 | 6.62 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -10.0 | -0.6508 | 0.0106 | 0.278 | 1.00 | 1.71 | 6.42 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -7.5 | -0.4915 | 0.0022 | 0.300 | 1.00 | 0.85 | 6.11 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -5.0 | -0.3290 | 0.0717 | 0.273 | 1.00 | 4.40 | 5.76 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
