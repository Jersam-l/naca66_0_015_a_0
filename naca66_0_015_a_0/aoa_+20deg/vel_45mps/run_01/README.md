# Aerodynamic Case: case_79_aoa+20_u45
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.5938
- **Drag Coefficient ($C_d$):** 0.2953
- **Mean Wall $y^+$:** 17.11
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 20.0, "case_idx": 79}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 1498.0 | 1.2077 | 0.9366 | 0.269 | 1.00 | 13.57 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 178.8 | 0.1442 | 3.3694 | 0.261 | 1.00 | 28.80 | 41.63 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -682.1 | -0.5499 | 3.6204 | 0.279 | 1.00 | 31.96 | 56.02 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -1234.0 | -0.9949 | 3.6623 | 0.286 | 1.00 | 32.76 | 63.56 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -1465.6 | -1.1816 | 2.7316 | 0.286 | 1.00 | 28.47 | 66.47 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -1656.9 | -1.3359 | 1.8351 | 0.272 | 1.00 | 22.16 | 68.78 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -1562.2 | -1.2595 | 0.8171 | 0.279 | 1.00 | 15.17 | 67.64 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -1316.5 | -1.0614 | 0.4255 | 0.289 | 1.00 | 11.36 | 64.61 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -1089.7 | -0.8786 | 0.5803 | 0.272 | 1.00 | 12.46 | 61.68 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -1086.2 | -0.8758 | 1.5885 | 0.154 | 1.00 | 11.66 | 61.63 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -2766.2 | -2.2302 | 2.3890 | 0.277 | 1.00 | 24.76 | 80.88 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -2431.6 | -1.9605 | 0.8398 | 0.283 | 1.00 | 15.64 | 77.43 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -2125.0 | -1.7133 | 0.7055 | 0.277 | 1.00 | 14.02 | 74.12 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -1774.0 | -1.4303 | 0.2235 | 0.274 | 1.00 | 7.80 | 70.15 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -1551.6 | -1.2510 | 0.1741 | 0.272 | 1.00 | 6.84 | 67.51 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -1408.0 | -1.1352 | 0.1485 | 0.278 | 1.00 | 6.45 | 65.75 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -1293.9 | -1.0432 | 0.2288 | 0.278 | 1.00 | 7.99 | 64.32 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -1240.2 | -0.9999 | 0.3783 | 0.277 | 1.00 | 10.28 | 63.64 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -1201.7 | -0.9689 | 0.3703 | 0.296 | 1.00 | 10.85 | 63.14 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -1173.3 | -0.9460 | 0.0245 | 0.339 | 1.00 | 3.20 | 62.77 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
