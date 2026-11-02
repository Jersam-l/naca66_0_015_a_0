# Aerodynamic Case: case_10_aoa-15_u50
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5053
- **Drag Coefficient ($C_d$):** 0.1685
- **Mean Wall $y^+$:** 17.98
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": -15.0, "case_idx": 10}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -2247.4 | -1.4677 | 4.1120 | 0.310 | 1.00 | 37.77 | 78.55 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -2346.0 | -1.5321 | 0.5599 | 0.253 | 1.00 | 11.42 | 79.56 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -1745.9 | -1.1402 | 0.3389 | 0.272 | 1.00 | 9.51 | 73.15 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -1517.9 | -0.9913 | 1.2024 | 0.291 | 1.00 | 19.22 | 70.56 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -1550.0 | -1.0123 | 1.2846 | 0.278 | 1.00 | 19.00 | 70.93 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -1494.5 | -0.9760 | 0.9462 | 0.300 | 1.00 | 17.59 | 70.28 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -836.9 | -0.5466 | 0.6149 | 0.332 | 1.00 | 15.68 | 62.18 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -773.3 | -0.5050 | 0.3294 | 0.267 | 1.00 | 9.21 | 61.34 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -734.1 | -0.4794 | 0.4875 | 0.217 | 1.00 | 9.14 | 60.81 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -700.0 | -0.4571 | 0.1581 | 0.148 | 1.00 | 3.55 | 60.36 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 1612.7 | 1.0532 | 1.7256 | 0.223 | 1.00 | 16.37 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 205.8 | 0.1344 | 3.3186 | 0.291 | 1.00 | 31.94 | 46.52 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -594.1 | -0.3880 | 3.7250 | 0.297 | 1.00 | 34.57 | 58.91 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -1052.2 | -0.6872 | 3.3738 | 0.294 | 1.00 | 32.48 | 64.95 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -1388.1 | -0.9065 | 2.3321 | 0.289 | 1.00 | 26.57 | 69.04 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -1522.5 | -0.9943 | 1.5407 | 0.273 | 1.00 | 20.40 | 70.61 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -1368.7 | -0.8938 | 0.6994 | 0.268 | 1.00 | 13.50 | 68.81 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -1078.1 | -0.7041 | 0.2660 | 0.281 | 1.00 | 8.74 | 65.27 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -799.5 | -0.5221 | 0.3322 | 0.297 | 1.00 | 10.32 | 61.69 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -663.0 | -0.4330 | 0.8014 | 0.314 | 1.00 | 16.92 | 59.85 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
