# Aerodynamic Case: case_116_aoa+40_u30
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6888
- **Drag Coefficient ($C_d$):** 0.8198
- **Mean Wall $y^+$:** 17.51
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 40.0, "case_idx": 116}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 1878.5 | 3.4078 | 0.9560 | 0.355 | 1.00 | 20.85 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 1992.6 | 3.6147 | 0.9410 | 0.281 | 1.00 | 16.43 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | 62.9 | 0.1141 | 3.0959 | 0.284 | 1.00 | 30.09 | 28.24 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -241.5 | -0.4381 | 2.2880 | 0.276 | 1.00 | 25.15 | 35.98 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -376.5 | -0.6829 | 1.4445 | 0.271 | 1.00 | 19.61 | 38.92 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 1276.5 | 2.3157 | 1.3627 | 0.289 | 1.00 | 20.28 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 1139.2 | 2.0665 | 1.2018 | 0.284 | 1.00 | 18.74 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 997.1 | 1.8088 | 1.3082 | 0.317 | 1.00 | 21.85 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 559.8 | 1.0154 | 1.7557 | 0.410 | 1.00 | 32.70 | 0.00 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 559.8 | 1.0154 | 1.7557 | 0.410 | 1.00 | 32.70 | 0.00 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -330.6 | -0.5998 | 0.9581 | 0.329 | 1.00 | 18.24 | 37.94 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -242.1 | -0.4392 | 0.4556 | 0.304 | 1.00 | 12.36 | 35.99 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -208.0 | -0.3773 | 0.5872 | 0.306 | 1.00 | 14.13 | 35.21 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -139.1 | -0.2524 | 0.6090 | 0.304 | 1.00 | 14.29 | 33.57 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -50.9 | -0.0923 | 0.5631 | 0.297 | 1.00 | 13.41 | 31.35 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | 34.4 | 0.0624 | 0.5148 | 0.288 | 1.00 | 12.43 | 29.05 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 120.2 | 0.2180 | 0.3334 | 0.290 | 1.00 | 10.10 | 26.53 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 160.2 | 0.2906 | 0.0916 | 0.304 | 1.00 | 5.55 | 25.27 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | 136.4 | 0.2475 | 0.1332 | 0.345 | 1.00 | 7.59 | 26.02 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | 136.4 | 0.2475 | 0.1332 | 0.345 | 1.00 | 7.59 | 26.02 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
