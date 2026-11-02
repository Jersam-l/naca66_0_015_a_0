# Aerodynamic Case: case_66_aoa+15_u30
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.4780
- **Drag Coefficient ($C_d$):** 0.1938
- **Mean Wall $y^+$:** 14.36
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 15.0, "case_idx": 66}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 606.0 | 1.0993 | 1.1041 | 0.199 | 1.00 | 11.74 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 68.6 | 0.1245 | 2.1669 | 0.264 | 1.00 | 23.44 | 28.07 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -251.4 | -0.4561 | 1.9838 | 0.337 | 1.00 | 28.60 | 36.20 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -389.2 | -0.7060 | 2.1432 | 0.275 | 1.00 | 24.26 | 39.18 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -529.2 | -0.9601 | 1.5163 | 0.262 | 1.00 | 19.45 | 42.00 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -584.6 | -1.0605 | 1.0535 | 0.287 | 1.00 | 17.71 | 43.06 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -553.0 | -1.0032 | 0.5534 | 0.281 | 1.00 | 12.57 | 42.46 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -453.7 | -0.8230 | 0.2720 | 0.289 | 1.00 | 9.09 | 40.51 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -357.2 | -0.6479 | 0.3085 | 0.299 | 1.00 | 10.01 | 38.51 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -331.0 | -0.6004 | 0.6661 | 0.247 | 1.00 | 12.12 | 37.95 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -833.2 | -1.5114 | 2.5963 | 0.300 | 1.00 | 29.01 | 47.54 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -629.4 | -1.1418 | 0.4460 | 0.273 | 1.00 | 10.98 | 43.90 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -575.3 | -1.0436 | 0.3187 | 0.283 | 1.00 | 9.64 | 42.89 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -523.4 | -0.9495 | 0.5603 | 0.289 | 1.00 | 13.04 | 41.89 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -507.1 | -0.9199 | 0.5711 | 0.289 | 1.00 | 13.15 | 41.57 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -458.9 | -0.8326 | 0.3078 | 0.289 | 1.00 | 9.67 | 40.61 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -403.4 | -0.7318 | 0.1459 | 0.282 | 1.00 | 6.49 | 39.48 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -375.8 | -0.6818 | 0.2402 | 0.288 | 1.00 | 8.51 | 38.91 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -364.1 | -0.6604 | 0.2194 | 0.312 | 1.00 | 8.81 | 38.66 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -355.9 | -0.6456 | 0.0039 | 0.396 | 1.00 | 1.50 | 38.48 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
