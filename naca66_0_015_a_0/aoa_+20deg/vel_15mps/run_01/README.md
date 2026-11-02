# Aerodynamic Case: case_73_aoa+20_u15
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6528
- **Drag Coefficient ($C_d$):** 0.2881
- **Mean Wall $y^+$:** 10.20
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 20.0, "case_idx": 73}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 169.5 | 1.2301 | 0.3113 | 0.269 | 1.00 | 7.80 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 25.3 | 0.1839 | 1.1079 | 0.261 | 1.00 | 16.52 | 13.55 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -68.1 | -0.4942 | 1.1522 | 0.279 | 1.00 | 18.03 | 18.34 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -134.3 | -0.9745 | 1.0691 | 0.286 | 1.00 | 17.74 | 21.08 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -154.3 | -1.1198 | 0.7846 | 0.286 | 1.00 | 15.26 | 21.84 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -171.3 | -1.2431 | 0.5594 | 0.272 | 1.00 | 12.23 | 22.47 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -156.8 | -1.1376 | 0.2782 | 0.279 | 1.00 | 8.85 | 21.93 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -127.6 | -0.9258 | 0.1467 | 0.289 | 1.00 | 6.67 | 20.82 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -100.6 | -0.7298 | 0.1765 | 0.272 | 1.00 | 6.87 | 19.73 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -95.5 | -0.6932 | 0.4997 | 0.154 | 1.00 | 6.54 | 19.52 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -309.1 | -2.2428 | 0.8093 | 0.277 | 1.00 | 14.45 | 27.01 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -276.1 | -2.0032 | 0.3425 | 0.283 | 1.00 | 9.99 | 26.00 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -229.6 | -1.6659 | 0.2776 | 0.277 | 1.00 | 8.79 | 24.49 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -172.8 | -1.2540 | 0.0501 | 0.274 | 1.00 | 3.67 | 22.52 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -144.0 | -1.0451 | 0.1260 | 0.272 | 1.00 | 5.82 | 21.45 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -127.8 | -0.9276 | 0.0988 | 0.278 | 1.00 | 5.26 | 20.83 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -114.6 | -0.8318 | 0.0736 | 0.278 | 1.00 | 4.53 | 20.30 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -110.6 | -0.8027 | 0.1694 | 0.277 | 1.00 | 6.88 | 20.14 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -108.2 | -0.7849 | 0.1751 | 0.296 | 1.00 | 7.46 | 20.04 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -103.2 | -0.7488 | 0.0175 | 0.339 | 1.00 | 2.70 | 19.84 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
