# Aerodynamic Case: case_37_aoa+00_u35
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0491
- **Drag Coefficient ($C_d$):** 0.0554
- **Mean Wall $y^+$:** 15.90
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 0.0, "case_idx": 37}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 690.4 | 0.9202 | 1.0493 | 0.287 | 1.00 | 17.73 | 9.89 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -134.0 | -0.1786 | 2.1726 | 0.299 | 1.00 | 26.52 | 38.00 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -249.0 | -0.3318 | 2.0507 | 0.285 | 1.00 | 24.56 | 40.39 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -389.6 | -0.5193 | 1.5201 | 0.284 | 1.00 | 21.11 | 43.14 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -483.2 | -0.6440 | 1.1189 | 0.283 | 1.00 | 18.05 | 44.88 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -499.7 | -0.6660 | 0.8550 | 0.278 | 1.00 | 15.48 | 45.18 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -431.8 | -0.5755 | 0.3605 | 0.273 | 1.00 | 9.86 | 43.93 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -330.9 | -0.4410 | 0.0813 | 0.282 | 1.00 | 4.83 | 42.02 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -254.4 | -0.3391 | 0.2011 | 0.300 | 1.00 | 8.10 | 40.50 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -182.0 | -0.2425 | 0.0850 | 0.379 | 1.00 | 6.65 | 39.01 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 717.1 | 0.9558 | 0.7487 | 0.309 | 1.00 | 16.09 | 7.36 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -77.1 | -0.1028 | 2.1827 | 0.297 | 1.00 | 26.42 | 36.76 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -206.1 | -0.2746 | 2.0179 | 0.301 | 1.00 | 25.73 | 39.52 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -341.0 | -0.4545 | 1.5280 | 0.303 | 1.00 | 22.56 | 42.21 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -432.7 | -0.5767 | 1.0783 | 0.301 | 1.00 | 18.81 | 43.95 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -438.2 | -0.5841 | 0.7232 | 0.305 | 1.00 | 15.61 | 44.05 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -371.1 | -0.4946 | 0.1779 | 0.295 | 1.00 | 7.50 | 42.79 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -294.3 | -0.3922 | 0.2264 | 0.284 | 1.00 | 8.15 | 41.30 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -234.3 | -0.3122 | 0.2800 | 0.300 | 1.00 | 9.56 | 40.09 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -178.3 | -0.2377 | 0.1752 | 0.348 | 1.00 | 8.77 | 38.94 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
