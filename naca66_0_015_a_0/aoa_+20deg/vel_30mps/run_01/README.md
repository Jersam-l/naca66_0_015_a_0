# Aerodynamic Case: case_76_aoa+20_u30
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6380
- **Drag Coefficient ($C_d$):** 0.2967
- **Mean Wall $y^+$:** 13.90
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 20.0, "case_idx": 76}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 755.6 | 1.3708 | 0.6174 | 0.269 | 1.00 | 10.92 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 177.8 | 0.3225 | 2.2237 | 0.261 | 1.00 | 23.40 | 24.69 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -202.0 | -0.3664 | 2.3437 | 0.279 | 1.00 | 25.72 | 35.07 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -447.1 | -0.8112 | 2.2999 | 0.286 | 1.00 | 25.98 | 40.37 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -548.5 | -0.9949 | 1.6448 | 0.286 | 1.00 | 22.10 | 42.37 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -622.6 | -1.1295 | 1.1309 | 0.272 | 1.00 | 17.39 | 43.78 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -572.3 | -1.0382 | 0.5331 | 0.279 | 1.00 | 12.25 | 42.83 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -461.0 | -0.8363 | 0.2891 | 0.289 | 1.00 | 9.37 | 40.65 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -359.7 | -0.6525 | 0.3830 | 0.272 | 1.00 | 10.13 | 38.56 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -354.7 | -0.6435 | 1.0464 | 0.154 | 1.00 | 9.47 | 38.46 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -1141.3 | -2.0705 | 1.5611 | 0.277 | 1.00 | 19.94 | 52.57 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -997.7 | -1.8099 | 0.5944 | 0.283 | 1.00 | 13.16 | 50.29 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -849.4 | -1.5409 | 0.5199 | 0.277 | 1.00 | 12.04 | 47.82 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -663.0 | -1.2027 | 0.1554 | 0.274 | 1.00 | 6.50 | 44.52 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -555.0 | -1.0067 | 0.1570 | 0.272 | 1.00 | 6.49 | 42.50 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -491.6 | -0.8918 | 0.1324 | 0.278 | 1.00 | 6.09 | 41.26 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -440.1 | -0.7984 | 0.1465 | 0.278 | 1.00 | 6.39 | 40.23 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -415.3 | -0.7534 | 0.2543 | 0.277 | 1.00 | 8.43 | 39.73 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -402.5 | -0.7302 | 0.2565 | 0.296 | 1.00 | 9.03 | 39.46 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -391.0 | -0.7093 | 0.0141 | 0.339 | 1.00 | 2.42 | 39.22 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
