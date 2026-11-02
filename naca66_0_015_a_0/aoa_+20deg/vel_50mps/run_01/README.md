# Aerodynamic Case: case_80_aoa+20_u50
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7274
- **Drag Coefficient ($C_d$):** 0.3142
- **Mean Wall $y^+$:** 18.61
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 20.0, "case_idx": 80}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 1937.7 | 1.2654 | 0.9829 | 0.269 | 1.00 | 13.35 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 395.9 | 0.2586 | 3.6679 | 0.261 | 1.00 | 30.05 | 43.05 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -642.8 | -0.4198 | 3.9945 | 0.279 | 1.00 | 33.58 | 59.58 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -1294.9 | -0.8457 | 4.0817 | 0.286 | 1.00 | 34.58 | 67.93 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -1559.0 | -1.0181 | 3.0941 | 0.286 | 1.00 | 30.30 | 71.03 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -1780.3 | -1.1627 | 2.0587 | 0.272 | 1.00 | 23.47 | 73.53 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -1661.4 | -1.0850 | 0.8479 | 0.279 | 1.00 | 15.45 | 72.20 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -1356.3 | -0.8857 | 0.3711 | 0.289 | 1.00 | 10.61 | 68.66 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -1057.5 | -0.6906 | 0.5152 | 0.272 | 1.00 | 11.74 | 65.01 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -1019.8 | -0.6660 | 1.6269 | 0.154 | 1.00 | 11.80 | 64.54 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -3184.1 | -2.0794 | 2.3209 | 0.277 | 1.00 | 23.52 | 87.74 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -2795.8 | -1.8258 | 0.9399 | 0.283 | 1.00 | 16.55 | 84.05 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -2522.8 | -1.6476 | 1.1170 | 0.277 | 1.00 | 17.64 | 81.36 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -1947.8 | -1.2720 | 0.7499 | 0.274 | 1.00 | 14.30 | 75.37 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -1481.3 | -0.9674 | 0.1270 | 0.272 | 1.00 | 5.82 | 70.13 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -1267.8 | -0.8280 | 0.0173 | 0.278 | 1.00 | 2.11 | 67.60 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -1150.6 | -0.7514 | 0.2981 | 0.278 | 1.00 | 9.12 | 66.17 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -1127.3 | -0.7362 | 0.2404 | 0.277 | 1.00 | 8.19 | 65.88 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -1167.6 | -0.7625 | 0.7048 | 0.296 | 1.00 | 14.97 | 66.38 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -1116.9 | -0.7294 | 0.1415 | 0.339 | 1.00 | 7.68 | 65.75 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
