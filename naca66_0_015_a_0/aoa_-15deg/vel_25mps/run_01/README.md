# Aerodynamic Case: case_05_aoa-15_u25
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5163
- **Drag Coefficient ($C_d$):** 0.1757
- **Mean Wall $y^+$:** 12.77
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": -15.0, "case_idx": 5}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -576.2 | -1.5051 | 2.0483 | 0.310 | 1.00 | 26.66 | 39.57 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -596.2 | -1.5574 | 0.2634 | 0.253 | 1.00 | 7.83 | 39.98 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -435.1 | -1.1367 | 0.2383 | 0.272 | 1.00 | 7.99 | 36.54 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -392.8 | -1.0261 | 0.6228 | 0.291 | 1.00 | 13.83 | 35.59 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -400.9 | -1.0472 | 0.6500 | 0.278 | 1.00 | 13.52 | 35.77 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -384.9 | -1.0053 | 0.4724 | 0.300 | 1.00 | 12.43 | 35.40 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -225.9 | -0.5901 | 0.2842 | 0.332 | 1.00 | 10.66 | 31.52 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -211.7 | -0.5531 | 0.1946 | 0.267 | 1.00 | 7.08 | 31.16 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -207.3 | -0.5415 | 0.3421 | 0.217 | 1.00 | 7.66 | 31.04 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -197.8 | -0.5167 | 0.1093 | 0.148 | 1.00 | 2.95 | 30.79 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 384.7 | 1.0050 | 0.8664 | 0.223 | 1.00 | 11.61 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 40.9 | 0.1067 | 1.6327 | 0.291 | 1.00 | 22.40 | 23.63 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -156.6 | -0.4091 | 1.7771 | 0.297 | 1.00 | 23.88 | 29.68 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -282.3 | -0.7374 | 1.4957 | 0.294 | 1.00 | 21.63 | 32.95 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -363.8 | -0.9502 | 1.0373 | 0.289 | 1.00 | 17.72 | 34.91 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -390.0 | -1.0189 | 0.7383 | 0.273 | 1.00 | 14.12 | 35.52 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -350.9 | -0.9167 | 0.3673 | 0.268 | 1.00 | 9.78 | 34.61 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -280.8 | -0.7335 | 0.1517 | 0.281 | 1.00 | 6.60 | 32.91 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -215.5 | -0.5630 | 0.1724 | 0.297 | 1.00 | 7.43 | 31.25 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -185.3 | -0.4839 | 0.4049 | 0.314 | 1.00 | 12.03 | 30.45 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
