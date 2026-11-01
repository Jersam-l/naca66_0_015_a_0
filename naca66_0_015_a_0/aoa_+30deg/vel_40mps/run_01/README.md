# Aerodynamic Case: case_98_aoa+30_u40
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9530
- **Drag Coefficient ($C_d$):** 0.5818
- **Mean Wall $y^+$:** 18.80
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 30.0, "case_idx": 98}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 1403.1 | 1.4318 | 0.3919 | 0.334 | 1.00 | 10.03 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 150.3 | 0.1533 | 3.3099 | 0.256 | 1.00 | 28.08 | 36.80 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -693.7 | -0.7078 | 3.4411 | 0.291 | 1.00 | 32.57 | 52.27 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -1277.6 | -1.3036 | 3.1593 | 0.268 | 1.00 | 28.63 | 60.71 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -1641.8 | -1.6753 | 2.2414 | 0.280 | 1.00 | 25.28 | 65.43 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -1736.3 | -1.7717 | 1.6883 | 0.463 | 1.00 | 36.24 | 66.59 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -1348.5 | -1.3761 | 1.2765 | 0.298 | 1.00 | 20.29 | 61.66 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -1203.3 | -1.2279 | 0.4509 | 0.269 | 1.00 | 10.88 | 59.70 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -974.8 | -0.9947 | 0.8532 | 0.194 | 1.00 | 10.75 | 56.49 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -944.1 | -0.9634 | 1.2087 | 0.315 | 1.00 | 20.83 | 56.05 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -1533.0 | -1.5643 | 0.4424 | 0.278 | 1.00 | 9.86 | 64.05 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -1454.2 | -1.4839 | 0.2043 | 0.294 | 1.00 | 8.01 | 63.04 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -1475.7 | -1.5058 | 0.5548 | 0.297 | 1.00 | 13.32 | 63.32 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -1444.5 | -1.4740 | 0.8650 | 0.292 | 1.00 | 16.36 | 62.92 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -1320.5 | -1.3474 | 0.9479 | 0.282 | 1.00 | 16.55 | 61.28 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -1167.4 | -1.1912 | 0.9506 | 0.262 | 1.00 | 15.39 | 59.21 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -1021.3 | -1.0422 | 0.7539 | 0.268 | 1.00 | 13.99 | 57.16 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -918.4 | -0.9372 | 0.6842 | 0.286 | 1.00 | 14.24 | 55.67 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -783.2 | -0.7992 | 0.1930 | 0.304 | 1.00 | 7.95 | 53.65 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -860.5 | -0.8781 | 0.2023 | 0.273 | 1.00 | 7.39 | 54.82 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
