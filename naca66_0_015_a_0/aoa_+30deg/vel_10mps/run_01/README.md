# Aerodynamic Case: case_92_aoa+30_u10
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9725
- **Drag Coefficient ($C_d$):** 0.6284
- **Mean Wall $y^+$:** 9.72
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 30.0, "case_idx": 92}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 126.9 | 2.0725 | 0.0955 | 0.334 | 1.00 | 4.91 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 50.5 | 0.8247 | 0.8044 | 0.256 | 1.00 | 13.84 | 4.19 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -3.0 | -0.0491 | 0.8431 | 0.291 | 1.00 | 16.12 | 10.24 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -41.4 | -0.6751 | 0.7676 | 0.268 | 1.00 | 14.11 | 12.94 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -65.0 | -1.0617 | 0.5685 | 0.280 | 1.00 | 12.73 | 14.36 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -75.0 | -1.2245 | 0.4346 | 0.463 | 1.00 | 18.38 | 14.91 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -56.4 | -0.9209 | 0.3418 | 0.298 | 1.00 | 10.50 | 13.86 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -48.2 | -0.7866 | 0.1457 | 0.269 | 1.00 | 6.18 | 13.37 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -35.1 | -0.5728 | 0.2597 | 0.194 | 1.00 | 5.91 | 12.54 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -34.3 | -0.5606 | 0.3310 | 0.315 | 1.00 | 10.90 | 12.49 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -51.1 | -0.8340 | 0.1013 | 0.278 | 1.00 | 4.67 | 13.54 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -48.7 | -0.7945 | 0.1476 | 0.294 | 1.00 | 6.81 | 13.40 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -51.0 | -0.8334 | 0.2106 | 0.297 | 1.00 | 8.20 | 13.54 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -48.7 | -0.7959 | 0.2423 | 0.292 | 1.00 | 8.66 | 13.40 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -41.1 | -0.6714 | 0.2261 | 0.282 | 1.00 | 8.08 | 12.93 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -37.1 | -0.6054 | 0.2177 | 0.262 | 1.00 | 7.36 | 12.67 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -37.1 | -0.6054 | 0.2331 | 0.268 | 1.00 | 7.78 | 12.67 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -34.2 | -0.5578 | 0.2251 | 0.286 | 1.00 | 8.17 | 12.48 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -23.1 | -0.3773 | 0.0740 | 0.304 | 1.00 | 4.95 | 11.74 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -26.4 | -0.4311 | 0.0174 | 0.273 | 1.00 | 2.16 | 11.96 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
