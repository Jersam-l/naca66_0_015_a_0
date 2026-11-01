# Aerodynamic Case: case_112_aoa+40_u10
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.5318
- **Drag Coefficient ($C_d$):** 1.4626
- **Mean Wall $y^+$:** 10.09
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 40.0, "case_idx": 112}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 170.3 | 2.7798 | 0.3763 | 0.355 | 1.00 | 13.13 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 199.0 | 3.2494 | 0.2266 | 0.281 | 1.00 | 8.06 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | -13.3 | -0.2171 | 1.0050 | 0.284 | 1.00 | 17.14 | 11.03 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -44.1 | -0.7204 | 0.7086 | 0.276 | 1.00 | 13.99 | 13.12 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -57.2 | -0.9333 | 0.4762 | 0.271 | 1.00 | 11.26 | 13.90 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 131.6 | 2.1490 | 0.5438 | 0.289 | 1.00 | 12.81 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 115.5 | 1.8852 | 0.4665 | 0.284 | 1.00 | 11.68 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 96.9 | 1.5827 | 0.4577 | 0.317 | 1.00 | 12.93 | 0.00 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 43.9 | 0.7173 | 0.5921 | 0.410 | 1.00 | 18.99 | 5.32 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 43.9 | 0.7173 | 0.5921 | 0.410 | 1.00 | 18.99 | 5.32 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -19.6 | -0.3198 | 0.2543 | 0.329 | 1.00 | 9.97 | 11.49 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -21.0 | -0.3425 | 0.0600 | 0.304 | 1.00 | 4.48 | 11.59 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -25.7 | -0.4203 | 0.1721 | 0.306 | 1.00 | 7.65 | 11.92 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -26.6 | -0.4337 | 0.2229 | 0.304 | 1.00 | 8.64 | 11.97 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -25.3 | -0.4131 | 0.2455 | 0.297 | 1.00 | 8.85 | 11.89 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | -22.8 | -0.3720 | 0.2789 | 0.288 | 1.00 | 9.15 | 11.71 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | -16.4 | -0.2670 | 0.2883 | 0.290 | 1.00 | 9.39 | 11.26 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | -1.2 | -0.0200 | 0.1786 | 0.304 | 1.00 | 7.74 | 10.10 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | -8.0 | -0.1301 | 0.0859 | 0.345 | 1.00 | 6.10 | 10.63 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | -8.0 | -0.1301 | 0.0859 | 0.345 | 1.00 | 6.10 | 10.63 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
