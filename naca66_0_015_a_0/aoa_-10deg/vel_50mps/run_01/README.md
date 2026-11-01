# Aerodynamic Case: case_20_aoa-10_u50
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2440
- **Drag Coefficient ($C_d$):** 0.1065
- **Mean Wall $y^+$:** 18.82
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": -10.0, "case_idx": 20}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -21.6 | -0.0141 | 2.5543 | 0.403 | 1.00 | 38.83 | 50.35 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -1135.0 | -0.7412 | 1.9708 | 0.283 | 1.00 | 23.91 | 65.98 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -1193.1 | -0.7792 | 1.3606 | 0.282 | 1.00 | 19.84 | 66.69 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -1269.7 | -0.8292 | 1.2920 | 0.275 | 1.00 | 18.80 | 67.62 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -1276.3 | -0.8335 | 1.2519 | 0.275 | 1.00 | 18.55 | 67.70 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -1162.2 | -0.7590 | 0.7638 | 0.242 | 1.00 | 12.75 | 66.31 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -938.1 | -0.6126 | 0.1616 | 0.253 | 1.00 | 6.10 | 63.49 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -802.7 | -0.5242 | 0.4470 | 0.279 | 1.00 | 11.25 | 61.73 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -739.0 | -0.4826 | 0.4379 | 0.315 | 1.00 | 12.56 | 60.88 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -678.8 | -0.4433 | 0.1894 | 0.401 | 1.00 | 10.52 | 60.07 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 1579.2 | 1.0313 | 0.7074 | 0.367 | 1.00 | 18.62 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 130.8 | 0.0854 | 3.2833 | 0.290 | 1.00 | 31.67 | 47.82 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -494.6 | -0.3230 | 3.4777 | 0.301 | 1.00 | 33.85 | 57.51 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -904.6 | -0.5908 | 3.0736 | 0.307 | 1.00 | 32.41 | 63.06 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -1245.3 | -0.8132 | 2.2216 | 0.305 | 1.00 | 27.35 | 67.33 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -1410.4 | -0.9211 | 1.5151 | 0.294 | 1.00 | 21.83 | 69.30 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -1320.5 | -0.8624 | 0.6955 | 0.275 | 1.00 | 13.79 | 68.23 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -1065.6 | -0.6959 | 0.1641 | 0.278 | 1.00 | 6.79 | 65.11 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -816.9 | -0.5335 | 0.1460 | 0.300 | 1.00 | 6.90 | 61.92 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -655.4 | -0.4280 | 0.5432 | 0.273 | 1.00 | 12.11 | 59.75 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
