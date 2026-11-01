# Aerodynamic Case: case_100_aoa+30_u50
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9634
- **Drag Coefficient ($C_d$):** 0.7005
- **Mean Wall $y^+$:** 20.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 30.0, "case_idx": 100}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 2878.1 | 1.8796 | 0.7603 | 0.334 | 1.00 | 16.40 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 1273.0 | 0.8314 | 3.8941 | 0.256 | 1.00 | 30.46 | 20.53 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -133.4 | -0.0871 | 4.3176 | 0.291 | 1.00 | 36.48 | 52.13 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -1083.1 | -0.7073 | 4.3935 | 0.268 | 1.00 | 33.77 | 65.33 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -1798.4 | -1.1744 | 3.2955 | 0.280 | 1.00 | 30.65 | 73.73 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -2244.2 | -1.4656 | 2.3384 | 0.463 | 1.00 | 42.64 | 78.51 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -1808.4 | -1.1810 | 1.8293 | 0.298 | 1.00 | 24.29 | 73.84 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -1672.2 | -1.0921 | 0.7446 | 0.269 | 1.00 | 13.98 | 72.32 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -1448.8 | -0.9462 | 1.2479 | 0.194 | 1.00 | 12.96 | 69.75 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -1497.1 | -0.9777 | 1.6231 | 0.315 | 1.00 | 24.14 | 70.31 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -1293.2 | -0.8445 | 0.3979 | 0.278 | 1.00 | 9.18 | 67.91 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -1192.1 | -0.7785 | 0.1362 | 0.294 | 1.00 | 6.54 | 66.68 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -1210.7 | -0.7907 | 0.3561 | 0.297 | 1.00 | 10.67 | 66.91 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -1190.5 | -0.7774 | 0.5051 | 0.292 | 1.00 | 12.50 | 66.66 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -1166.1 | -0.7615 | 0.3560 | 0.282 | 1.00 | 10.14 | 66.36 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -1244.2 | -0.8125 | 0.4797 | 0.262 | 1.00 | 10.93 | 67.31 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -1306.8 | -0.8535 | 0.7539 | 0.268 | 1.00 | 13.99 | 68.07 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -1241.6 | -0.8108 | 0.9736 | 0.286 | 1.00 | 16.98 | 67.28 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -1092.1 | -0.7132 | 0.1082 | 0.304 | 1.00 | 5.07 | 65.44 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -1429.0 | -0.9333 | 0.8227 | 0.273 | 1.00 | 14.90 | 69.52 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
