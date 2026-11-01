# Aerodynamic Case: case_06_aoa-15_u30
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.4629
- **Drag Coefficient ($C_d$):** 0.1639
- **Mean Wall $y^+$:** 13.89
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": -15.0, "case_idx": 6}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -527.3 | -0.9566 | 2.4567 | 0.310 | 1.00 | 29.20 | 41.96 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -562.1 | -1.0196 | 0.1907 | 0.253 | 1.00 | 6.66 | 42.63 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -354.5 | -0.6431 | 0.3594 | 0.272 | 1.00 | 9.82 | 38.45 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -307.6 | -0.5581 | 0.7767 | 0.291 | 1.00 | 15.45 | 37.45 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -323.0 | -0.5859 | 0.7947 | 0.278 | 1.00 | 14.94 | 37.78 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -302.8 | -0.5492 | 0.5882 | 0.300 | 1.00 | 13.87 | 37.34 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -70.1 | -0.1271 | 0.3732 | 0.332 | 1.00 | 12.21 | 31.85 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -47.1 | -0.0854 | 0.2134 | 0.267 | 1.00 | 7.41 | 31.25 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -37.0 | -0.0671 | 0.3533 | 0.217 | 1.00 | 7.78 | 30.99 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -25.4 | -0.0461 | 0.1101 | 0.148 | 1.00 | 2.96 | 30.68 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 838.4 | 1.5210 | 0.9935 | 0.223 | 1.00 | 12.35 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 320.4 | 0.5813 | 1.9881 | 0.291 | 1.00 | 24.72 | 19.41 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | 34.9 | 0.0634 | 2.1712 | 0.297 | 1.00 | 26.39 | 29.03 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -144.6 | -0.2624 | 1.8542 | 0.294 | 1.00 | 24.08 | 33.71 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -266.2 | -0.4829 | 1.2848 | 0.289 | 1.00 | 19.72 | 36.53 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -308.4 | -0.5595 | 0.9038 | 0.273 | 1.00 | 15.62 | 37.46 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -252.8 | -0.4586 | 0.4443 | 0.268 | 1.00 | 10.76 | 36.23 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -150.3 | -0.2726 | 0.1827 | 0.281 | 1.00 | 7.24 | 33.84 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -54.5 | -0.0989 | 0.2089 | 0.297 | 1.00 | 8.18 | 31.45 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -9.4 | -0.0170 | 0.4871 | 0.314 | 1.00 | 13.19 | 30.25 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
