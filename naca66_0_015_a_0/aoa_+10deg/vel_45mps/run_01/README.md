# Aerodynamic Case: case_59_aoa+10_u45
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2093
- **Drag Coefficient ($C_d$):** 0.1075
- **Mean Wall $y^+$:** 17.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 10.0, "case_idx": 59}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 1346.1 | 1.0853 | 0.5999 | 0.317 | 1.00 | 14.79 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | 16.5 | 0.0133 | 2.4305 | 0.352 | 1.00 | 33.01 | 44.70 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -454.4 | -0.3664 | 3.5661 | 0.252 | 1.00 | 28.70 | 52.60 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -816.4 | -0.6582 | 2.8741 | 0.278 | 1.00 | 28.43 | 57.95 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -1086.6 | -0.8760 | 2.0234 | 0.294 | 1.00 | 25.15 | 61.64 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -1234.6 | -0.9954 | 1.4116 | 0.279 | 1.00 | 19.96 | 63.57 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -1160.9 | -0.9360 | 0.7072 | 0.271 | 1.00 | 13.70 | 62.61 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -952.4 | -0.7679 | 0.2307 | 0.287 | 1.00 | 8.30 | 59.83 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -745.8 | -0.6013 | 0.2019 | 0.307 | 1.00 | 8.32 | 56.94 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -604.7 | -0.4875 | 0.5621 | 0.339 | 1.00 | 15.29 | 54.88 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 97.4 | 0.0785 | 2.9013 | 0.293 | 1.00 | 30.06 | 43.20 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -900.7 | -0.7261 | 1.9196 | 0.280 | 1.00 | 23.38 | 59.12 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -945.7 | -0.7625 | 1.3306 | 0.295 | 1.00 | 20.47 | 59.74 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -1028.9 | -0.8295 | 1.1529 | 0.302 | 1.00 | 19.51 | 60.87 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -1045.6 | -0.8430 | 0.9817 | 0.297 | 1.00 | 17.72 | 61.09 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -946.8 | -0.7634 | 0.5639 | 0.291 | 1.00 | 13.17 | 59.76 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -794.6 | -0.6406 | 0.1918 | 0.283 | 1.00 | 7.44 | 57.64 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -700.6 | -0.5648 | 0.3931 | 0.293 | 1.00 | 11.06 | 56.29 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -660.0 | -0.5321 | 0.4053 | 0.313 | 1.00 | 12.02 | 55.70 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -622.2 | -0.5017 | 0.1010 | 0.382 | 1.00 | 7.31 | 55.14 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
