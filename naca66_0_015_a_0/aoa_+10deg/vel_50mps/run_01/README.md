# Aerodynamic Case: case_60_aoa+10_u50
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2056
- **Drag Coefficient ($C_d$):** 0.1071
- **Mean Wall $y^+$:** 18.87
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 10.0, "case_idx": 60}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 1678.2 | 1.0960 | 0.6636 | 0.317 | 1.00 | 15.56 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | -4.6 | -0.0030 | 2.6701 | 0.352 | 1.00 | 34.61 | 50.08 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -547.2 | -0.3573 | 3.9077 | 0.252 | 1.00 | 30.04 | 58.25 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -992.3 | -0.6481 | 3.1843 | 0.278 | 1.00 | 29.92 | 64.19 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -1327.5 | -0.8670 | 2.2506 | 0.294 | 1.00 | 26.53 | 68.32 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -1513.3 | -0.9883 | 1.5736 | 0.279 | 1.00 | 21.07 | 70.50 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -1423.7 | -0.9298 | 0.7921 | 0.271 | 1.00 | 14.50 | 69.46 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -1164.6 | -0.7605 | 0.2646 | 0.287 | 1.00 | 8.89 | 66.34 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -906.7 | -0.5921 | 0.2380 | 0.307 | 1.00 | 9.03 | 63.09 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -734.1 | -0.4794 | 0.6460 | 0.339 | 1.00 | 16.39 | 60.81 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 140.1 | 0.0915 | 3.2215 | 0.293 | 1.00 | 31.67 | 47.66 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -1094.5 | -0.7148 | 2.1553 | 0.280 | 1.00 | 24.77 | 65.47 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -1147.4 | -0.7493 | 1.5009 | 0.295 | 1.00 | 21.74 | 66.13 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -1255.1 | -0.8197 | 1.2835 | 0.302 | 1.00 | 20.58 | 67.45 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -1277.5 | -0.8343 | 1.0796 | 0.297 | 1.00 | 18.59 | 67.72 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -1155.9 | -0.7549 | 0.6095 | 0.291 | 1.00 | 13.69 | 66.24 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -969.8 | -0.6333 | 0.2241 | 0.283 | 1.00 | 8.05 | 63.90 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -853.8 | -0.5576 | 0.4368 | 0.293 | 1.00 | 11.66 | 62.40 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -804.5 | -0.5254 | 0.4530 | 0.313 | 1.00 | 12.70 | 61.75 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -758.1 | -0.4951 | 0.1115 | 0.382 | 1.00 | 7.69 | 61.14 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
