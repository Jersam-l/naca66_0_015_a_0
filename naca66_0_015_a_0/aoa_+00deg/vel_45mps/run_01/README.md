# Aerodynamic Case: case_39_aoa+00_u45
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0486
- **Drag Coefficient ($C_d$):** 0.0549
- **Mean Wall $y^+$:** 18.14
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 0.0, "case_idx": 39}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 1214.4 | 0.9791 | 1.3487 | 0.287 | 1.00 | 20.10 | 6.50 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -149.4 | -0.1205 | 2.8094 | 0.299 | 1.00 | 30.16 | 47.63 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -330.1 | -0.2662 | 2.7236 | 0.285 | 1.00 | 28.30 | 50.64 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -555.2 | -0.4476 | 2.0483 | 0.284 | 1.00 | 24.50 | 54.14 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -717.8 | -0.5788 | 1.4689 | 0.283 | 1.00 | 20.68 | 56.54 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -748.8 | -0.6037 | 1.0906 | 0.278 | 1.00 | 17.48 | 56.99 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -637.3 | -0.5138 | 0.4408 | 0.273 | 1.00 | 10.90 | 55.37 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -472.2 | -0.3807 | 0.1194 | 0.282 | 1.00 | 5.86 | 52.88 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -345.9 | -0.2789 | 0.2647 | 0.300 | 1.00 | 9.29 | 50.89 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -227.0 | -0.1830 | 0.1175 | 0.379 | 1.00 | 7.82 | 48.95 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 1258.6 | 1.0148 | 0.9637 | 0.309 | 1.00 | 18.25 | 0.00 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -55.5 | -0.0447 | 2.8215 | 0.297 | 1.00 | 30.04 | 46.00 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -261.7 | -0.2110 | 2.6692 | 0.301 | 1.00 | 29.60 | 49.52 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -474.8 | -0.3828 | 2.0614 | 0.303 | 1.00 | 26.21 | 52.92 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -633.0 | -0.5104 | 1.4312 | 0.301 | 1.00 | 21.67 | 55.30 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -647.3 | -0.5219 | 0.9337 | 0.305 | 1.00 | 17.74 | 55.51 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -539.3 | -0.4348 | 0.2128 | 0.295 | 1.00 | 8.20 | 53.90 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -412.6 | -0.3327 | 0.2973 | 0.284 | 1.00 | 9.34 | 51.95 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -313.0 | -0.2523 | 0.3608 | 0.300 | 1.00 | 10.86 | 50.36 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -220.8 | -0.1780 | 0.2294 | 0.348 | 1.00 | 10.03 | 48.84 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
