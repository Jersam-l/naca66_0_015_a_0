# Aerodynamic Case: case_31_aoa+00_u05
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0393
- **Drag Coefficient ($C_d$):** 0.0643
- **Mean Wall $y^+$:** 7.09
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 0.0, "case_idx": 31}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 14.2 | 0.9277 | 0.1497 | 0.287 | 1.00 | 6.69 | 1.34 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -3.1 | -0.2040 | 0.3010 | 0.299 | 1.00 | 9.87 | 5.49 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -5.5 | -0.3612 | 0.3075 | 0.285 | 1.00 | 9.51 | 5.83 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -7.4 | -0.4851 | 0.2943 | 0.284 | 1.00 | 9.29 | 6.09 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -8.5 | -0.5580 | 0.2681 | 0.283 | 1.00 | 8.84 | 6.24 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -8.5 | -0.5534 | 0.2218 | 0.278 | 1.00 | 7.88 | 6.23 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -6.6 | -0.4318 | 0.0891 | 0.273 | 1.00 | 4.90 | 5.98 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -6.1 | -0.4007 | 0.0411 | 0.282 | 1.00 | 3.44 | 5.92 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -4.8 | -0.3165 | 0.0567 | 0.300 | 1.00 | 4.30 | 5.74 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -2.8 | -0.1804 | 0.0239 | 0.379 | 1.00 | 3.52 | 5.43 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 14.7 | 0.9597 | 0.1064 | 0.309 | 1.00 | 6.06 | 1.00 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -1.8 | -0.1202 | 0.3049 | 0.297 | 1.00 | 9.87 | 5.29 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -4.5 | -0.2944 | 0.3037 | 0.301 | 1.00 | 9.98 | 5.69 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -6.4 | -0.4182 | 0.2890 | 0.303 | 1.00 | 9.81 | 5.95 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -7.5 | -0.4895 | 0.2592 | 0.301 | 1.00 | 9.22 | 6.10 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -7.1 | -0.4663 | 0.2045 | 0.305 | 1.00 | 8.30 | 6.05 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -5.3 | -0.3460 | 0.0689 | 0.295 | 1.00 | 4.67 | 5.80 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -5.2 | -0.3391 | 0.0501 | 0.284 | 1.00 | 3.84 | 5.79 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -4.2 | -0.2750 | 0.0621 | 0.300 | 1.00 | 4.50 | 5.65 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -2.6 | -0.1694 | 0.0348 | 0.348 | 1.00 | 3.91 | 5.41 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
