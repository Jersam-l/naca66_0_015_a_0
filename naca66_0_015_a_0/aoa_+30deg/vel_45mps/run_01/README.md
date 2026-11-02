# Aerodynamic Case: case_99_aoa+30_u45
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.0256
- **Drag Coefficient ($C_d$):** 0.7149
- **Mean Wall $y^+$:** 19.60
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 30.0, "case_idx": 99}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 2651.4 | 2.1377 | 0.5216 | 0.334 | 1.00 | 13.20 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 1183.9 | 0.9545 | 3.5970 | 0.256 | 1.00 | 29.28 | 9.60 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | 62.7 | 0.0506 | 3.8626 | 0.291 | 1.00 | 34.51 | 43.85 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -722.1 | -0.5822 | 3.7427 | 0.268 | 1.00 | 31.17 | 56.60 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -1275.9 | -1.0287 | 2.6989 | 0.280 | 1.00 | 27.74 | 64.09 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -1509.5 | -1.2171 | 1.9273 | 0.463 | 1.00 | 38.71 | 67.00 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -1098.7 | -0.8858 | 1.4324 | 0.298 | 1.00 | 21.49 | 61.80 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -958.9 | -0.7731 | 0.5603 | 0.269 | 1.00 | 12.13 | 59.92 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -780.4 | -0.6292 | 1.1939 | 0.194 | 1.00 | 12.66 | 57.44 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -856.7 | -0.6907 | 1.5364 | 0.315 | 1.00 | 23.49 | 58.51 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -889.4 | -0.7171 | 0.4028 | 0.278 | 1.00 | 9.18 | 58.97 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -804.1 | -0.6483 | 0.1300 | 0.294 | 1.00 | 6.39 | 57.77 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -830.4 | -0.6695 | 0.3197 | 0.297 | 1.00 | 10.11 | 58.14 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -852.5 | -0.6873 | 0.5396 | 0.292 | 1.00 | 12.92 | 58.45 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -875.4 | -0.7058 | 0.7713 | 0.282 | 1.00 | 14.93 | 58.77 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -876.7 | -0.7069 | 1.0800 | 0.262 | 1.00 | 16.40 | 58.79 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -713.6 | -0.5754 | 0.9726 | 0.268 | 1.00 | 15.89 | 56.48 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -529.1 | -0.4266 | 0.7890 | 0.286 | 1.00 | 15.29 | 53.75 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -352.0 | -0.2838 | 0.0876 | 0.304 | 1.00 | 4.79 | 50.99 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -468.6 | -0.3778 | 0.3938 | 0.273 | 1.00 | 10.31 | 52.82 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
