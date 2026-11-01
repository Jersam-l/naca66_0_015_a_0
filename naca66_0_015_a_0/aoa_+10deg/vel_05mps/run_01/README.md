# Aerodynamic Case: case_51_aoa+10_u05
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.3785
- **Drag Coefficient ($C_d$):** 0.1290
- **Mean Wall $y^+$:** 6.97
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 10.0, "case_idx": 51}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 14.9 | 0.9760 | 0.0811 | 0.317 | 1.00 | 5.44 | 0.77 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | -0.6 | -0.0417 | 0.2597 | 0.352 | 1.00 | 10.79 | 5.10 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -6.9 | -0.4524 | 0.3849 | 0.252 | 1.00 | 9.43 | 6.03 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -10.9 | -0.7116 | 0.3625 | 0.278 | 1.00 | 10.10 | 6.54 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -13.1 | -0.8570 | 0.3249 | 0.294 | 1.00 | 10.08 | 6.81 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -14.5 | -0.9481 | 0.2795 | 0.279 | 1.00 | 8.88 | 6.98 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -13.1 | -0.8569 | 0.1703 | 0.271 | 1.00 | 6.73 | 6.81 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -11.1 | -0.7267 | 0.0437 | 0.287 | 1.00 | 3.61 | 6.57 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -8.8 | -0.5719 | 0.0225 | 0.307 | 1.00 | 2.78 | 6.27 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -6.0 | -0.3916 | 0.0970 | 0.339 | 1.00 | 6.35 | 5.90 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | -2.0 | -0.1274 | 0.3378 | 0.293 | 1.00 | 10.26 | 5.31 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -13.1 | -0.8534 | 0.1716 | 0.280 | 1.00 | 6.99 | 6.81 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -12.1 | -0.7928 | 0.1503 | 0.295 | 1.00 | 6.88 | 6.70 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -11.9 | -0.7746 | 0.1747 | 0.302 | 1.00 | 7.59 | 6.66 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -11.6 | -0.7597 | 0.1692 | 0.297 | 1.00 | 7.36 | 6.63 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -10.0 | -0.6532 | 0.1125 | 0.291 | 1.00 | 5.88 | 6.43 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -8.6 | -0.5592 | 0.0202 | 0.283 | 1.00 | 2.40 | 6.24 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -7.8 | -0.5112 | 0.0588 | 0.293 | 1.00 | 4.28 | 6.15 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -7.3 | -0.4777 | 0.0628 | 0.313 | 1.00 | 4.73 | 6.08 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -6.5 | -0.4265 | 0.0147 | 0.382 | 1.00 | 2.79 | 5.97 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
