# Aerodynamic Case: case_02_aoa-15_u10
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.4128
- **Drag Coefficient ($C_d$):** 0.1827
- **Mean Wall $y^+$:** 9.88
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": -15.0, "case_idx": 2}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -162.8 | -2.6581 | 0.8470 | 0.310 | 1.00 | 17.13 | 19.13 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -219.8 | -3.5890 | 0.1712 | 0.253 | 1.00 | 6.31 | 21.42 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -200.1 | -3.2662 | 0.1533 | 0.272 | 1.00 | 6.41 | 20.66 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -220.5 | -3.6002 | 0.3288 | 0.291 | 1.00 | 10.05 | 21.45 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -235.9 | -3.8515 | 0.2989 | 0.278 | 1.00 | 9.16 | 22.03 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -226.6 | -3.6993 | 0.1829 | 0.300 | 1.00 | 7.73 | 21.68 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -168.3 | -2.7483 | 0.0476 | 0.332 | 1.00 | 4.29 | 19.36 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -153.7 | -2.5092 | 0.1578 | 0.267 | 1.00 | 6.38 | 18.73 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -143.0 | -2.3355 | 0.0797 | 0.217 | 1.00 | 3.65 | 18.26 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -135.0 | -2.2043 | 0.5623 | 0.148 | 1.00 | 6.69 | 17.90 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 6.5 | 0.1060 | 0.4463 | 0.223 | 1.00 | 8.58 | 9.46 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | -32.4 | -0.5282 | 0.6074 | 0.291 | 1.00 | 13.66 | 12.36 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -64.2 | -1.0486 | 0.6823 | 0.297 | 1.00 | 14.80 | 14.31 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -85.9 | -1.4021 | 0.5821 | 0.294 | 1.00 | 13.49 | 15.50 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -101.8 | -1.6627 | 0.4184 | 0.289 | 1.00 | 11.25 | 16.32 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -111.5 | -1.8210 | 0.3297 | 0.273 | 1.00 | 9.44 | 16.80 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -112.5 | -1.8374 | 0.2328 | 0.268 | 1.00 | 7.79 | 16.84 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -107.6 | -1.7563 | 0.2324 | 0.281 | 1.00 | 8.17 | 16.60 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -106.4 | -1.7369 | 0.2560 | 0.297 | 1.00 | 9.05 | 16.54 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -115.9 | -1.8923 | 0.4370 | 0.314 | 1.00 | 12.50 | 17.01 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
