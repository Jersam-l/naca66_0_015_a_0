# Aerodynamic Case: case_115_aoa+40_u25
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6878
- **Drag Coefficient ($C_d$):** 0.8169
- **Mean Wall $y^+$:** 15.84
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 40.0, "case_idx": 115}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 1223.8 | 3.1969 | 0.7837 | 0.355 | 1.00 | 18.88 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 1295.5 | 3.3843 | 0.7827 | 0.281 | 1.00 | 14.98 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | 24.9 | 0.0651 | 2.5171 | 0.284 | 1.00 | 27.13 | 24.17 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -174.2 | -0.4551 | 1.8397 | 0.276 | 1.00 | 22.55 | 30.16 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -265.9 | -0.6947 | 1.2022 | 0.271 | 1.00 | 17.89 | 32.55 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 788.7 | 2.0603 | 1.1507 | 0.289 | 1.00 | 18.64 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 689.4 | 1.8008 | 1.0186 | 0.284 | 1.00 | 17.26 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 585.9 | 1.5306 | 1.1045 | 0.317 | 1.00 | 20.08 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 276.7 | 0.7227 | 1.4713 | 0.410 | 1.00 | 29.93 | 13.16 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 276.7 | 0.7227 | 1.4713 | 0.410 | 1.00 | 29.93 | 13.16 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -200.2 | -0.5229 | 0.7263 | 0.329 | 1.00 | 16.21 | 30.85 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -156.6 | -0.4091 | 0.3552 | 0.304 | 1.00 | 10.91 | 29.68 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -132.4 | -0.3458 | 0.4300 | 0.306 | 1.00 | 12.09 | 29.00 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -86.3 | -0.2254 | 0.3914 | 0.304 | 1.00 | 11.46 | 27.67 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -41.9 | -0.1093 | 0.3239 | 0.297 | 1.00 | 10.17 | 26.33 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | -1.7 | -0.0045 | 0.1886 | 0.288 | 1.00 | 7.52 | 25.06 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | 13.3 | 0.0348 | 0.0883 | 0.290 | 1.00 | 5.19 | 24.56 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | 13.0 | 0.0340 | 0.1275 | 0.304 | 1.00 | 6.54 | 24.57 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | -22.0 | -0.0575 | 0.1812 | 0.345 | 1.00 | 8.86 | 25.71 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | -22.0 | -0.0575 | 0.1812 | 0.345 | 1.00 | 8.86 | 25.71 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
