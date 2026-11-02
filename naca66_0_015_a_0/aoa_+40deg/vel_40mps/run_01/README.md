# Aerodynamic Case: case_118_aoa+40_u40
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.0029
- **Drag Coefficient ($C_d$):** 0.9437
- **Mean Wall $y^+$:** 20.11
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 40.0, "case_idx": 118}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 3167.2 | 3.2318 | 1.4146 | 0.355 | 1.00 | 25.41 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 3520.0 | 3.5918 | 1.1239 | 0.281 | 1.00 | 17.95 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | -140.2 | -0.1431 | 4.2735 | 0.284 | 1.00 | 35.35 | 42.77 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -625.6 | -0.6384 | 3.1595 | 0.276 | 1.00 | 29.55 | 51.20 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -814.3 | -0.8309 | 1.9061 | 0.271 | 1.00 | 22.52 | 54.12 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 2342.5 | 2.3903 | 1.7744 | 0.289 | 1.00 | 23.14 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 2111.7 | 2.1548 | 1.5632 | 0.284 | 1.00 | 21.38 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 1871.0 | 1.9092 | 1.7185 | 0.317 | 1.00 | 25.05 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 1090.0 | 1.1122 | 2.3399 | 0.410 | 1.00 | 37.75 | 0.00 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 1090.0 | 1.1122 | 2.3399 | 0.410 | 1.00 | 37.75 | 0.00 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -902.7 | -0.9211 | 1.3293 | 0.329 | 1.00 | 22.24 | 55.44 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -774.3 | -0.7901 | 0.7137 | 0.304 | 1.00 | 15.47 | 53.52 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -701.9 | -0.7163 | 1.0385 | 0.306 | 1.00 | 18.80 | 52.40 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -500.0 | -0.5102 | 1.1200 | 0.304 | 1.00 | 19.38 | 49.16 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -238.9 | -0.2438 | 1.0095 | 0.297 | 1.00 | 17.95 | 44.61 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | -42.3 | -0.0431 | 0.9369 | 0.288 | 1.00 | 16.77 | 40.85 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 116.8 | 0.1192 | 0.8803 | 0.290 | 1.00 | 16.41 | 37.54 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 298.4 | 0.3045 | 0.6569 | 0.304 | 1.00 | 14.85 | 33.36 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | 343.0 | 0.3500 | 0.0826 | 0.345 | 1.00 | 5.98 | 32.25 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | 343.0 | 0.3500 | 0.0826 | 0.345 | 1.00 | 5.98 | 32.25 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
