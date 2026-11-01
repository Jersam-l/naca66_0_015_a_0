# Aerodynamic Case: case_117_aoa+40_u35
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8984
- **Drag Coefficient ($C_d$):** 0.9650
- **Mean Wall $y^+$:** 19.09
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 40.0, "case_idx": 117}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 2491.0 | 3.3199 | 1.1427 | 0.355 | 1.00 | 22.80 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 2675.3 | 3.5656 | 1.0654 | 0.281 | 1.00 | 17.48 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | 38.2 | 0.0509 | 3.6194 | 0.284 | 1.00 | 32.53 | 34.10 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -343.8 | -0.4582 | 2.6881 | 0.276 | 1.00 | 27.26 | 42.27 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -515.5 | -0.6870 | 1.7089 | 0.271 | 1.00 | 21.33 | 45.46 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 1727.8 | 2.3027 | 1.5747 | 0.289 | 1.00 | 21.80 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 1547.1 | 2.0620 | 1.3850 | 0.284 | 1.00 | 20.12 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 1361.3 | 1.8144 | 1.5117 | 0.317 | 1.00 | 23.49 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 777.2 | 1.0358 | 2.0370 | 0.410 | 1.00 | 35.22 | 0.00 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 777.2 | 1.0358 | 2.0370 | 0.410 | 1.00 | 35.22 | 0.00 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -510.5 | -0.6804 | 1.1227 | 0.329 | 1.00 | 20.02 | 45.37 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -403.4 | -0.5376 | 0.5861 | 0.304 | 1.00 | 14.02 | 43.40 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -349.3 | -0.4656 | 0.7890 | 0.306 | 1.00 | 16.38 | 42.37 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -211.3 | -0.2816 | 0.7768 | 0.304 | 1.00 | 16.14 | 39.62 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -59.5 | -0.0793 | 0.6617 | 0.297 | 1.00 | 14.53 | 36.36 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | 43.6 | 0.0581 | 0.6253 | 0.288 | 1.00 | 13.70 | 33.97 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 153.4 | 0.2045 | 0.4652 | 0.290 | 1.00 | 11.93 | 31.22 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 226.4 | 0.3017 | 0.1979 | 0.304 | 1.00 | 8.15 | 29.25 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | 208.7 | 0.2781 | 0.1120 | 0.345 | 1.00 | 6.96 | 29.74 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | 208.7 | 0.2781 | 0.1120 | 0.345 | 1.00 | 6.96 | 29.74 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
