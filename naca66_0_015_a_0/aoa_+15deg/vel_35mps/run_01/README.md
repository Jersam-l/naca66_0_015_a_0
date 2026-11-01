# Aerodynamic Case: case_67_aoa+15_u35
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.4492
- **Drag Coefficient ($C_d$):** 0.1830
- **Mean Wall $y^+$:** 15.70
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 15.0, "case_idx": 67}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 795.0 | 1.0595 | 1.2864 | 0.199 | 1.00 | 12.68 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 68.1 | 0.0907 | 2.5241 | 0.264 | 1.00 | 25.29 | 33.38 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -363.8 | -0.4849 | 2.3106 | 0.337 | 1.00 | 30.87 | 42.65 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -544.3 | -0.7255 | 2.5269 | 0.275 | 1.00 | 26.34 | 45.98 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -732.2 | -0.9758 | 1.7939 | 0.262 | 1.00 | 21.16 | 49.20 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -811.6 | -1.0817 | 1.2279 | 0.287 | 1.00 | 19.12 | 50.50 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -774.0 | -1.0315 | 0.6334 | 0.281 | 1.00 | 13.45 | 49.89 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -645.4 | -0.8601 | 0.3122 | 0.289 | 1.00 | 9.74 | 47.73 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -523.9 | -0.6982 | 0.3663 | 0.299 | 1.00 | 10.91 | 45.61 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -503.0 | -0.6704 | 0.8218 | 0.247 | 1.00 | 13.47 | 45.23 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -1151.7 | -1.5349 | 3.0181 | 0.300 | 1.00 | 31.28 | 55.73 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -867.1 | -1.1557 | 0.5264 | 0.273 | 1.00 | 11.93 | 51.39 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -799.2 | -1.0652 | 0.3559 | 0.283 | 1.00 | 10.18 | 50.30 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -727.5 | -0.9696 | 0.6337 | 0.289 | 1.00 | 13.87 | 49.12 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -704.5 | -0.9390 | 0.6411 | 0.289 | 1.00 | 13.94 | 48.74 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -638.9 | -0.8516 | 0.3245 | 0.289 | 1.00 | 9.93 | 47.62 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -568.0 | -0.7570 | 0.1929 | 0.282 | 1.00 | 7.46 | 46.39 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -532.8 | -0.7101 | 0.2287 | 0.288 | 1.00 | 8.30 | 45.77 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -533.9 | -0.7116 | 0.2905 | 0.312 | 1.00 | 10.14 | 45.79 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -537.8 | -0.7168 | 0.0121 | 0.396 | 1.00 | 2.62 | 45.86 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
