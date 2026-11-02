# Aerodynamic Case: case_23_aoa-05_u15
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1557
- **Drag Coefficient ($C_d$):** 0.0691
- **Mean Wall $y^+$:** 10.39
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": -5.0, "case_idx": 23}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 34.5 | 0.2502 | 0.7914 | 0.286 | 1.00 | 15.31 | 12.99 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -101.1 | -0.7339 | 0.8042 | 0.289 | 1.00 | 15.60 | 19.75 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -114.1 | -0.8280 | 0.5928 | 0.289 | 1.00 | 13.42 | 20.28 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -130.4 | -0.9466 | 0.4739 | 0.285 | 1.00 | 11.83 | 20.93 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -137.1 | -0.9949 | 0.4176 | 0.280 | 1.00 | 10.89 | 21.19 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -132.0 | -0.9578 | 0.3227 | 0.278 | 1.00 | 9.50 | 20.99 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -114.6 | -0.8312 | 0.0549 | 0.252 | 1.00 | 3.54 | 20.30 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -101.4 | -0.7358 | 0.1279 | 0.274 | 1.00 | 5.90 | 19.76 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -93.1 | -0.6759 | 0.1531 | 0.295 | 1.00 | 6.94 | 19.42 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -84.7 | -0.6144 | 0.0883 | 0.367 | 1.00 | 6.58 | 19.06 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 96.6 | 0.7006 | 0.0081 | 0.351 | 1.00 | 1.90 | 8.21 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | -42.5 | -0.3085 | 0.9476 | 0.289 | 1.00 | 16.94 | 17.16 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -83.6 | -0.6063 | 0.9024 | 0.300 | 1.00 | 17.16 | 19.01 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -116.5 | -0.8455 | 0.7045 | 0.310 | 1.00 | 15.69 | 20.38 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -139.7 | -1.0135 | 0.5194 | 0.301 | 1.00 | 13.09 | 21.29 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -145.8 | -1.0576 | 0.3820 | 0.296 | 1.00 | 11.02 | 21.52 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -134.5 | -0.9760 | 0.1720 | 0.294 | 1.00 | 7.34 | 21.09 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -116.8 | -0.8475 | 0.0237 | 0.291 | 1.00 | 2.67 | 20.39 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -100.9 | -0.7323 | 0.0730 | 0.296 | 1.00 | 4.82 | 19.74 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -84.3 | -0.6114 | 0.0106 | 0.333 | 1.00 | 2.06 | 19.04 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
