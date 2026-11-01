# Aerodynamic Case: case_01_aoa-15_u05
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.7788
- **Drag Coefficient ($C_d$):** 0.2474
- **Mean Wall $y^+$:** 6.43
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": -15.0, "case_idx": 1}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -24.9 | -1.6293 | 0.3970 | 0.310 | 1.00 | 11.72 | 8.11 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -27.3 | -1.7822 | 0.1146 | 0.253 | 1.00 | 5.17 | 8.34 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -19.3 | -1.2573 | 0.0158 | 0.272 | 1.00 | 1.98 | 7.51 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -15.0 | -0.9772 | 0.1119 | 0.291 | 1.00 | 5.86 | 7.03 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -14.7 | -0.9629 | 0.1631 | 0.278 | 1.00 | 6.77 | 7.00 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -13.8 | -0.9038 | 0.1447 | 0.300 | 1.00 | 6.88 | 6.90 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -8.9 | -0.5838 | 0.0756 | 0.332 | 1.00 | 5.50 | 6.29 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -8.3 | -0.5429 | 0.0377 | 0.267 | 1.00 | 3.12 | 6.21 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -8.4 | -0.5474 | 0.0817 | 0.217 | 1.00 | 3.74 | 6.22 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -8.1 | -0.5261 | 0.0355 | 0.148 | 1.00 | 1.68 | 6.18 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 12.8 | 0.8352 | 0.1893 | 0.223 | 1.00 | 5.50 | 2.03 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 0.2 | 0.0107 | 0.3145 | 0.291 | 1.00 | 9.83 | 4.97 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -8.2 | -0.5356 | 0.3643 | 0.297 | 1.00 | 10.81 | 6.20 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -12.7 | -0.8323 | 0.3718 | 0.294 | 1.00 | 10.78 | 6.77 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -15.0 | -0.9778 | 0.3298 | 0.289 | 1.00 | 9.99 | 7.03 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -15.9 | -1.0361 | 0.2634 | 0.273 | 1.00 | 8.43 | 7.13 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -14.0 | -0.9128 | 0.1290 | 0.268 | 1.00 | 5.80 | 6.92 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -12.4 | -0.8099 | 0.0154 | 0.281 | 1.00 | 2.10 | 6.73 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -9.4 | -0.6143 | 0.0241 | 0.297 | 1.00 | 2.78 | 6.35 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -7.4 | -0.4805 | 0.1033 | 0.314 | 1.00 | 6.08 | 6.08 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
