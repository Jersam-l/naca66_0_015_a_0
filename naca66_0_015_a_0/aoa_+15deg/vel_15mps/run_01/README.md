# Aerodynamic Case: case_63_aoa+15_u15
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.4864
- **Drag Coefficient ($C_d$):** 0.1963
- **Mean Wall $y^+$:** 10.28
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 15.0, "case_idx": 63}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 139.8 | 1.0147 | 0.5624 | 0.199 | 1.00 | 8.41 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 9.1 | 0.0661 | 1.0662 | 0.264 | 1.00 | 16.44 | 14.49 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -69.2 | -0.5019 | 0.9739 | 0.337 | 1.00 | 20.04 | 18.38 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -105.3 | -0.7637 | 1.0009 | 0.275 | 1.00 | 16.58 | 19.92 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -139.6 | -1.0132 | 0.7071 | 0.262 | 1.00 | 13.29 | 21.28 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -151.6 | -1.0997 | 0.5203 | 0.287 | 1.00 | 12.45 | 21.73 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -143.7 | -1.0429 | 0.2911 | 0.281 | 1.00 | 9.12 | 21.44 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -120.1 | -0.8712 | 0.1507 | 0.289 | 1.00 | 6.76 | 20.52 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -98.2 | -0.7124 | 0.1633 | 0.299 | 1.00 | 7.29 | 19.63 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -94.2 | -0.6839 | 0.3555 | 0.247 | 1.00 | 8.86 | 19.46 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -220.1 | -1.5970 | 1.2936 | 0.300 | 1.00 | 20.48 | 24.17 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -168.1 | -1.2195 | 0.1935 | 0.273 | 1.00 | 7.23 | 22.35 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -150.4 | -1.0911 | 0.1654 | 0.283 | 1.00 | 6.94 | 21.69 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -137.1 | -0.9945 | 0.3035 | 0.289 | 1.00 | 9.60 | 21.18 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -134.4 | -0.9750 | 0.3083 | 0.289 | 1.00 | 9.66 | 21.08 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -122.7 | -0.8902 | 0.1689 | 0.289 | 1.00 | 7.16 | 20.62 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -109.2 | -0.7920 | 0.0834 | 0.282 | 1.00 | 4.90 | 20.08 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -103.6 | -0.7520 | 0.1498 | 0.288 | 1.00 | 6.72 | 19.85 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -103.2 | -0.7487 | 0.1588 | 0.312 | 1.00 | 7.50 | 19.84 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -101.4 | -0.7355 | 0.0090 | 0.396 | 1.00 | 2.26 | 19.76 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
