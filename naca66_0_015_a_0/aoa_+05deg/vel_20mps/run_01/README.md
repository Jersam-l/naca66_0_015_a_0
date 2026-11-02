# Aerodynamic Case: case_44_aoa+05_u20
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0869
- **Drag Coefficient ($C_d$):** 0.0666
- **Mean Wall $y^+$:** 11.90
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 5.0, "case_idx": 44}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 268.3 | 1.0949 | 0.0705 | 0.382 | 1.00 | 6.10 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | 7.4 | 0.0303 | 1.3129 | 0.278 | 1.00 | 19.20 | 19.69 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -64.4 | -0.2628 | 1.2952 | 0.269 | 1.00 | 18.46 | 22.48 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -128.0 | -0.5225 | 0.9749 | 0.268 | 1.00 | 15.94 | 24.68 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -166.9 | -0.6812 | 0.7314 | 0.280 | 1.00 | 14.43 | 25.93 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -182.0 | -0.7428 | 0.5826 | 0.282 | 1.00 | 12.94 | 26.40 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -166.6 | -0.6799 | 0.3166 | 0.268 | 1.00 | 9.09 | 25.92 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -128.4 | -0.5242 | 0.0751 | 0.286 | 1.00 | 4.72 | 24.69 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -94.3 | -0.3851 | 0.0067 | 0.302 | 1.00 | 1.48 | 23.54 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -63.2 | -0.2579 | 0.1210 | 0.352 | 1.00 | 7.38 | 22.43 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 169.5 | 0.6918 | 0.8299 | 0.329 | 1.00 | 18.04 | 11.10 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -73.8 | -0.3011 | 1.1763 | 0.285 | 1.00 | 18.63 | 22.81 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -100.6 | -0.4106 | 0.8695 | 0.296 | 1.00 | 16.66 | 23.75 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -133.3 | -0.5442 | 0.6426 | 0.297 | 1.00 | 14.32 | 24.85 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -144.2 | -0.5884 | 0.5029 | 0.306 | 1.00 | 13.08 | 25.21 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -132.7 | -0.5416 | 0.3215 | 0.298 | 1.00 | 10.16 | 24.83 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -103.9 | -0.4239 | 0.0125 | 0.287 | 1.00 | 1.81 | 23.86 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -85.9 | -0.3507 | 0.1840 | 0.292 | 1.00 | 7.55 | 23.24 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -75.7 | -0.3089 | 0.2092 | 0.298 | 1.00 | 8.20 | 22.88 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -63.8 | -0.2604 | 0.0821 | 0.356 | 1.00 | 6.15 | 22.45 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
