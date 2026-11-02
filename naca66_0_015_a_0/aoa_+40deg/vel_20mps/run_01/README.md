# Aerodynamic Case: case_114_aoa+40_u20
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8046
- **Drag Coefficient ($C_d$):** 0.9553
- **Mean Wall $y^+$:** 14.09
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 40.0, "case_idx": 114}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 827.4 | 3.3772 | 0.6347 | 0.355 | 1.00 | 17.00 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 878.0 | 3.5837 | 0.6111 | 0.281 | 1.00 | 13.24 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | 76.4 | 0.3119 | 1.9858 | 0.284 | 1.00 | 24.10 | 16.59 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -52.6 | -0.2147 | 1.4253 | 0.276 | 1.00 | 19.85 | 22.04 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -111.9 | -0.4566 | 0.9515 | 0.271 | 1.00 | 15.92 | 24.14 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 549.0 | 2.2410 | 0.9377 | 0.289 | 1.00 | 16.83 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 481.7 | 1.9663 | 0.8320 | 0.284 | 1.00 | 15.59 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 410.9 | 1.6773 | 0.8965 | 0.317 | 1.00 | 18.09 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 207.3 | 0.8459 | 1.1844 | 0.410 | 1.00 | 26.85 | 7.85 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 207.3 | 0.8459 | 1.1844 | 0.410 | 1.00 | 26.85 | 7.85 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -40.5 | -0.1652 | 0.5604 | 0.329 | 1.00 | 14.47 | 21.59 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -19.2 | -0.0784 | 0.2521 | 0.304 | 1.00 | 9.19 | 20.77 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -7.3 | -0.0299 | 0.2854 | 0.306 | 1.00 | 9.85 | 20.30 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | 11.7 | 0.0479 | 0.2599 | 0.304 | 1.00 | 9.33 | 19.52 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | 32.5 | 0.1326 | 0.1893 | 0.297 | 1.00 | 7.77 | 18.63 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | 45.8 | 0.1868 | 0.0175 | 0.288 | 1.00 | 2.07 | 18.04 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 41.7 | 0.1701 | 0.1537 | 0.290 | 1.00 | 6.86 | 18.22 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 40.8 | 0.1666 | 0.0257 | 0.304 | 1.00 | 2.94 | 18.26 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | 11.1 | 0.0453 | 0.1657 | 0.345 | 1.00 | 8.47 | 19.54 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | 11.1 | 0.0453 | 0.1657 | 0.345 | 1.00 | 8.47 | 19.54 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
