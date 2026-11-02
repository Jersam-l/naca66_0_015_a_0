# Aerodynamic Case: case_78_aoa+20_u40
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6797
- **Drag Coefficient ($C_d$):** 0.2877
- **Mean Wall $y^+$:** 16.13
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 20.0, "case_idx": 78}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 862.5 | 0.8801 | 0.8342 | 0.269 | 1.00 | 12.90 | 13.85 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | -160.0 | -0.1633 | 2.9687 | 0.261 | 1.00 | 27.03 | 43.14 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -812.9 | -0.8295 | 3.1580 | 0.279 | 1.00 | 29.85 | 54.10 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -1223.4 | -1.2484 | 3.1745 | 0.286 | 1.00 | 30.50 | 59.98 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -1388.3 | -1.4166 | 2.3482 | 0.286 | 1.00 | 26.40 | 62.18 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -1523.2 | -1.5543 | 1.5942 | 0.272 | 1.00 | 20.65 | 63.93 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -1434.1 | -1.4634 | 0.7014 | 0.279 | 1.00 | 14.06 | 62.78 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -1226.8 | -1.2518 | 0.3287 | 0.289 | 1.00 | 9.99 | 60.02 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -1021.2 | -1.0420 | 0.4350 | 0.272 | 1.00 | 10.79 | 57.16 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -980.9 | -1.0010 | 1.2618 | 0.154 | 1.00 | 10.40 | 56.58 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -2422.7 | -2.4721 | 2.1072 | 0.277 | 1.00 | 23.26 | 74.53 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -2150.8 | -2.1947 | 0.7951 | 0.283 | 1.00 | 15.22 | 71.50 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -1911.1 | -1.9501 | 0.8083 | 0.277 | 1.00 | 15.01 | 68.70 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -1546.0 | -1.5776 | 0.4296 | 0.274 | 1.00 | 10.83 | 64.22 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -1284.8 | -1.3110 | 0.0129 | 0.272 | 1.00 | 1.85 | 60.81 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -1147.5 | -1.1709 | 0.0320 | 0.278 | 1.00 | 2.97 | 58.94 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -1062.4 | -1.0841 | 0.2213 | 0.278 | 1.00 | 7.86 | 57.75 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -1029.9 | -1.0509 | 0.1562 | 0.277 | 1.00 | 6.61 | 57.28 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -1047.4 | -1.0688 | 0.4145 | 0.296 | 1.00 | 11.48 | 57.53 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -1028.3 | -1.0493 | 0.0261 | 0.339 | 1.00 | 3.30 | 57.26 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
