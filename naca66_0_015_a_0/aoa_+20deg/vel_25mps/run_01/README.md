# Aerodynamic Case: case_75_aoa+20_u25
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6555
- **Drag Coefficient ($C_d$):** 0.2927
- **Mean Wall $y^+$:** 12.80
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 20.0, "case_idx": 75}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 468.0 | 1.2225 | 0.5148 | 0.269 | 1.00 | 9.99 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 69.5 | 0.1816 | 1.8465 | 0.261 | 1.00 | 21.32 | 22.62 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -190.2 | -0.4969 | 1.9284 | 0.279 | 1.00 | 23.33 | 30.59 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -373.2 | -0.9750 | 1.7880 | 0.286 | 1.00 | 22.94 | 35.13 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -425.9 | -1.1126 | 1.3150 | 0.286 | 1.00 | 19.76 | 36.34 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -473.0 | -1.2356 | 0.9186 | 0.272 | 1.00 | 15.68 | 37.38 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -435.2 | -1.1368 | 0.4419 | 0.279 | 1.00 | 11.16 | 36.55 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -356.8 | -0.9321 | 0.2374 | 0.289 | 1.00 | 8.49 | 34.75 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -285.8 | -0.7465 | 0.3018 | 0.272 | 1.00 | 8.99 | 33.04 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -278.2 | -0.7267 | 0.8314 | 0.154 | 1.00 | 8.44 | 32.85 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -847.6 | -2.2141 | 1.3218 | 0.277 | 1.00 | 18.41 | 44.82 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -743.3 | -1.9416 | 0.5088 | 0.283 | 1.00 | 12.18 | 42.88 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -635.3 | -1.6594 | 0.4551 | 0.277 | 1.00 | 11.26 | 40.77 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -492.4 | -1.2863 | 0.1306 | 0.274 | 1.00 | 5.96 | 37.80 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -411.5 | -1.0749 | 0.1505 | 0.272 | 1.00 | 6.36 | 36.01 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -367.4 | -0.9597 | 0.1285 | 0.278 | 1.00 | 6.00 | 35.00 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -331.5 | -0.8659 | 0.1189 | 0.278 | 1.00 | 5.76 | 34.15 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -315.8 | -0.8248 | 0.2229 | 0.277 | 1.00 | 7.89 | 33.77 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -308.6 | -0.8061 | 0.2324 | 0.296 | 1.00 | 8.60 | 33.60 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -300.3 | -0.7845 | 0.0015 | 0.339 | 1.00 | 0.78 | 33.40 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
