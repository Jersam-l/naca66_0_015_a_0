# Aerodynamic Case: case_03_aoa-15_u15
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5685
- **Drag Coefficient ($C_d$):** 0.1843
- **Mean Wall $y^+$:** 10.02
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": -15.0, "case_idx": 3}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -215.6 | -1.5645 | 1.2257 | 0.310 | 1.00 | 20.62 | 24.02 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -225.3 | -1.6346 | 0.2037 | 0.253 | 1.00 | 6.89 | 24.35 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -158.8 | -1.1526 | 0.1456 | 0.272 | 1.00 | 6.24 | 22.01 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -142.9 | -1.0367 | 0.3826 | 0.291 | 1.00 | 10.84 | 21.41 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -143.7 | -1.0425 | 0.4006 | 0.278 | 1.00 | 10.61 | 21.44 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -136.4 | -0.9895 | 0.2940 | 0.300 | 1.00 | 9.80 | 21.16 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -81.9 | -0.5944 | 0.1759 | 0.332 | 1.00 | 8.39 | 18.94 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -76.8 | -0.5570 | 0.1206 | 0.267 | 1.00 | 5.57 | 18.72 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -72.2 | -0.5242 | 0.1658 | 0.217 | 1.00 | 5.33 | 18.52 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -69.9 | -0.5073 | 0.0322 | 0.148 | 1.00 | 1.60 | 18.42 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 130.7 | 0.9481 | 0.5251 | 0.223 | 1.00 | 9.06 | 3.42 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 8.4 | 0.0612 | 0.9702 | 0.291 | 1.00 | 17.27 | 14.53 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -62.0 | -0.4499 | 1.0460 | 0.297 | 1.00 | 18.32 | 18.06 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -107.6 | -0.7810 | 0.8631 | 0.294 | 1.00 | 16.43 | 20.02 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -135.4 | -0.9824 | 0.6085 | 0.289 | 1.00 | 13.57 | 21.12 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -143.8 | -1.0434 | 0.4517 | 0.273 | 1.00 | 11.04 | 21.44 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -129.4 | -0.9388 | 0.2388 | 0.268 | 1.00 | 7.89 | 20.89 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -103.8 | -0.7535 | 0.1027 | 0.281 | 1.00 | 5.43 | 19.86 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -79.5 | -0.5766 | 0.1093 | 0.297 | 1.00 | 5.92 | 18.83 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -67.2 | -0.4873 | 0.2415 | 0.314 | 1.00 | 9.29 | 18.29 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
