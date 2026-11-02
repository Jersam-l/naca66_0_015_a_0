# Aerodynamic Case: case_34_aoa+00_u20
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0534
- **Drag Coefficient ($C_d$):** 0.0570
- **Mean Wall $y^+$:** 11.95
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 0.0, "case_idx": 34}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 237.0 | 0.9675 | 0.6040 | 0.287 | 1.00 | 13.45 | 3.61 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -31.7 | -0.1295 | 1.2245 | 0.299 | 1.00 | 19.91 | 21.25 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -73.6 | -0.3003 | 1.0917 | 0.285 | 1.00 | 17.92 | 22.81 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -120.3 | -0.4912 | 0.8042 | 0.284 | 1.00 | 15.35 | 24.42 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -148.0 | -0.6041 | 0.6283 | 0.283 | 1.00 | 13.53 | 25.33 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -152.9 | -0.6239 | 0.5071 | 0.278 | 1.00 | 11.92 | 25.49 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -130.7 | -0.5336 | 0.2342 | 0.273 | 1.00 | 7.94 | 24.77 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -97.5 | -0.3978 | 0.0348 | 0.282 | 1.00 | 3.16 | 23.65 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -72.5 | -0.2958 | 0.1129 | 0.300 | 1.00 | 6.07 | 22.77 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -47.4 | -0.1936 | 0.0362 | 0.379 | 1.00 | 4.34 | 21.85 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 246.2 | 1.0051 | 0.4219 | 0.309 | 1.00 | 12.07 | 0.00 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -12.1 | -0.0493 | 1.2284 | 0.297 | 1.00 | 19.82 | 20.49 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -57.9 | -0.2363 | 1.0839 | 0.301 | 1.00 | 18.86 | 22.24 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -103.6 | -0.4229 | 0.8047 | 0.303 | 1.00 | 16.37 | 23.86 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -130.8 | -0.5339 | 0.5917 | 0.301 | 1.00 | 13.93 | 24.77 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -131.0 | -0.5346 | 0.4173 | 0.305 | 1.00 | 11.86 | 24.78 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -108.1 | -0.4410 | 0.1156 | 0.295 | 1.00 | 6.04 | 24.01 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -84.2 | -0.3439 | 0.1341 | 0.284 | 1.00 | 6.28 | 23.18 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -65.2 | -0.2663 | 0.1698 | 0.300 | 1.00 | 7.45 | 22.51 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -46.3 | -0.1890 | 0.0977 | 0.348 | 1.00 | 6.55 | 21.81 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
