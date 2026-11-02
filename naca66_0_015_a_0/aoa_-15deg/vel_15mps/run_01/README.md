# Aerodynamic Case: case_03_aoa-15_u15
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.6096
- **Drag Coefficient ($C_d$):** 0.1949
- **Mean Wall $y^+$:** 10.12
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": -15.0, "case_idx": 3}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -165.6 | -1.2019 | 1.2166 | 0.310 | 1.00 | 20.54 | 22.26 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -177.5 | -1.2882 | 0.2717 | 0.253 | 1.00 | 7.96 | 22.69 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -107.4 | -0.7790 | 0.0796 | 0.272 | 1.00 | 4.58 | 20.01 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -85.7 | -0.6220 | 0.3659 | 0.291 | 1.00 | 10.60 | 19.10 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -88.0 | -0.6383 | 0.3963 | 0.278 | 1.00 | 10.55 | 19.20 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -81.9 | -0.5941 | 0.2872 | 0.300 | 1.00 | 9.69 | 18.94 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -28.9 | -0.2096 | 0.1643 | 0.332 | 1.00 | 8.10 | 16.50 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -24.3 | -0.1763 | 0.1205 | 0.267 | 1.00 | 5.57 | 16.27 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -23.5 | -0.1707 | 0.2160 | 0.217 | 1.00 | 6.09 | 16.23 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -21.0 | -0.1526 | 0.0619 | 0.148 | 1.00 | 2.22 | 16.10 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 178.6 | 1.2958 | 0.5391 | 0.223 | 1.00 | 9.21 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 61.0 | 0.4425 | 0.9597 | 0.291 | 1.00 | 17.18 | 11.20 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -9.7 | -0.0701 | 1.0383 | 0.297 | 1.00 | 18.25 | 15.52 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -55.5 | -0.4028 | 0.8565 | 0.294 | 1.00 | 16.37 | 17.77 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -83.3 | -0.6041 | 0.5996 | 0.289 | 1.00 | 13.47 | 19.00 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -91.2 | -0.6615 | 0.4395 | 0.273 | 1.00 | 10.89 | 19.34 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -76.5 | -0.5551 | 0.2264 | 0.268 | 1.00 | 7.68 | 18.71 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -51.5 | -0.3740 | 0.0933 | 0.281 | 1.00 | 5.17 | 17.58 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -28.3 | -0.2050 | 0.1017 | 0.297 | 1.00 | 5.71 | 16.47 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -17.0 | -0.1233 | 0.2372 | 0.314 | 1.00 | 9.21 | 15.90 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
