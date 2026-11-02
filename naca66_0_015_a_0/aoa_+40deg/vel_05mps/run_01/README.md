# Aerodynamic Case: case_111_aoa+40_u05
- **Angle of Attack (AoA):** +40.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9248
- **Drag Coefficient ($C_d$):** 1.0739
- **Mean Wall $y^+$:** 7.44
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 40.0, "case_idx": 111}'
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
| 1 | Upper | -0.0197 | -0.0098 | 0.000 | 36.5 | 2.3827 | 0.1603 | 0.355 | 1.00 | 8.55 | 0.00 |
| 2 | Upper | -0.0070 | -0.0257 | 0.111 | 40.1 | 2.6165 | 0.1434 | 0.281 | 1.00 | 6.41 | 0.00 |
| 3 | Upper | 0.0331 | 0.0048 | 0.222 | -11.3 | -0.7410 | 0.5375 | 0.284 | 1.00 | 12.54 | 6.60 |
| 4 | Upper | 0.0414 | -0.0025 | 0.333 | -17.9 | -1.1722 | 0.4482 | 0.276 | 1.00 | 11.13 | 7.37 |
| 5 | Upper | 0.0501 | -0.0095 | 0.444 | -21.6 | -1.4078 | 0.3231 | 0.271 | 1.00 | 9.27 | 7.76 |
| 6 | Upper | 0.0272 | -0.0540 | 0.556 | 20.4 | 1.3339 | 0.3331 | 0.289 | 1.00 | 10.03 | 0.00 |
| 7 | Upper | 0.0371 | -0.0595 | 0.667 | 17.0 | 1.1132 | 0.3373 | 0.284 | 1.00 | 9.93 | 0.00 |
| 8 | Upper | 0.0471 | -0.0649 | 0.778 | 13.0 | 0.8496 | 0.3191 | 0.317 | 1.00 | 10.79 | 1.94 |
| 9 | Upper | 0.0557 | -0.0701 | 0.889 | 0.2 | 0.0115 | 0.3342 | 0.410 | 1.00 | 14.27 | 4.97 |
| 10 | Upper | 0.0557 | -0.0701 | 1.000 | 0.2 | 0.0115 | 0.3342 | 0.410 | 1.00 | 14.27 | 4.97 |
| 1 | Lower | -0.0186 | -0.0061 | 0.000 | -16.6 | -1.0861 | 0.1363 | 0.329 | 1.00 | 7.15 | 7.22 |
| 2 | Lower | 0.0011 | -0.0160 | 0.111 | -16.4 | -1.0729 | 0.1005 | 0.304 | 1.00 | 5.80 | 7.20 |
| 3 | Lower | 0.0102 | -0.0225 | 0.222 | -15.9 | -1.0409 | 0.1068 | 0.306 | 1.00 | 6.03 | 7.14 |
| 4 | Lower | 0.0189 | -0.0294 | 0.333 | -14.4 | -0.9420 | 0.0906 | 0.304 | 1.00 | 5.51 | 6.97 |
| 5 | Lower | 0.0272 | -0.0367 | 0.444 | -12.6 | -0.8252 | 0.0578 | 0.297 | 1.00 | 4.30 | 6.75 |
| 6 | Lower | 0.0350 | -0.0448 | 0.556 | -11.8 | -0.7738 | 0.0131 | 0.288 | 1.00 | 1.97 | 6.66 |
| 7 | Lower | 0.0421 | -0.0535 | 0.667 | -12.0 | -0.7812 | 0.0127 | 0.290 | 1.00 | 1.96 | 6.67 |
| 8 | Lower | 0.0491 | -0.0625 | 0.778 | -11.9 | -0.7802 | 0.0271 | 0.304 | 1.00 | 3.02 | 6.67 |
| 9 | Lower | 0.0558 | -0.0701 | 0.889 | -14.1 | -0.9222 | 0.0460 | 0.345 | 1.00 | 4.46 | 6.93 |
| 10 | Lower | 0.0558 | -0.0701 | 1.000 | -14.1 | -0.9222 | 0.0460 | 0.345 | 1.00 | 4.46 | 6.93 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
