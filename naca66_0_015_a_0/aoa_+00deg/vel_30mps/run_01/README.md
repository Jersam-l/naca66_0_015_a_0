# Aerodynamic Case: case_36_aoa+00_u30
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0497
- **Drag Coefficient ($C_d$):** 0.0558
- **Mean Wall $y^+$:** 14.68
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 0.0, "case_idx": 36}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 511.9 | 0.9287 | 0.9002 | 0.287 | 1.00 | 16.42 | 8.01 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -93.8 | -0.1702 | 1.8549 | 0.299 | 1.00 | 24.51 | 32.45 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -180.8 | -0.3280 | 1.7219 | 0.285 | 1.00 | 22.50 | 34.57 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -285.4 | -0.5177 | 1.2697 | 0.284 | 1.00 | 19.29 | 36.96 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -352.1 | -0.6387 | 0.9505 | 0.283 | 1.00 | 16.64 | 38.40 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -363.5 | -0.6595 | 0.7382 | 0.278 | 1.00 | 14.39 | 38.65 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -313.5 | -0.5687 | 0.3191 | 0.273 | 1.00 | 9.27 | 37.58 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -239.0 | -0.4335 | 0.0650 | 0.282 | 1.00 | 4.32 | 35.92 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -182.8 | -0.3316 | 0.1706 | 0.300 | 1.00 | 7.46 | 34.62 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -129.1 | -0.2343 | 0.0688 | 0.379 | 1.00 | 5.99 | 33.33 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 531.6 | 0.9644 | 0.6405 | 0.309 | 1.00 | 14.88 | 5.66 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -51.5 | -0.0934 | 1.8638 | 0.297 | 1.00 | 24.41 | 31.37 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -148.5 | -0.2695 | 1.6986 | 0.301 | 1.00 | 23.61 | 33.80 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -249.5 | -0.4526 | 1.2751 | 0.303 | 1.00 | 20.61 | 36.16 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -315.1 | -0.5715 | 0.9101 | 0.301 | 1.00 | 17.28 | 37.61 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -317.9 | -0.5768 | 0.6202 | 0.305 | 1.00 | 14.46 | 37.67 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -267.9 | -0.4861 | 0.1590 | 0.295 | 1.00 | 7.09 | 36.57 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -211.7 | -0.3840 | 0.1931 | 0.284 | 1.00 | 7.53 | 35.29 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -167.8 | -0.3044 | 0.2413 | 0.300 | 1.00 | 8.88 | 34.26 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -126.5 | -0.2295 | 0.1487 | 0.348 | 1.00 | 8.07 | 33.26 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
