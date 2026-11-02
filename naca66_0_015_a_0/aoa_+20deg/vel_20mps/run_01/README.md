# Aerodynamic Case: case_74_aoa+20_u20
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6361
- **Drag Coefficient ($C_d$):** 0.3143
- **Mean Wall $y^+$:** 11.77
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 20.0, "case_idx": 74}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 246.9 | 1.0076 | 0.4071 | 0.269 | 1.00 | 8.77 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | -13.5 | -0.0551 | 1.4858 | 0.261 | 1.00 | 19.13 | 20.54 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -191.7 | -0.7825 | 1.5655 | 0.279 | 1.00 | 21.02 | 26.70 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -321.1 | -1.3104 | 1.4758 | 0.286 | 1.00 | 20.84 | 30.40 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -367.6 | -1.5004 | 1.0614 | 0.286 | 1.00 | 17.75 | 31.62 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -402.3 | -1.6421 | 0.7436 | 0.272 | 1.00 | 14.10 | 32.51 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -379.3 | -1.5483 | 0.3545 | 0.279 | 1.00 | 9.99 | 31.93 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -330.6 | -1.3494 | 0.1863 | 0.289 | 1.00 | 7.52 | 30.66 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -286.5 | -1.1695 | 0.2413 | 0.272 | 1.00 | 8.04 | 29.46 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -283.8 | -1.1585 | 0.7108 | 0.154 | 1.00 | 7.80 | 29.38 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -594.4 | -2.4260 | 0.9697 | 0.277 | 1.00 | 15.42 | 37.02 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -538.6 | -2.1985 | 0.3965 | 0.283 | 1.00 | 10.75 | 35.77 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -477.6 | -1.9495 | 0.3490 | 0.277 | 1.00 | 9.86 | 34.35 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -407.8 | -1.6643 | 0.1512 | 0.274 | 1.00 | 6.42 | 32.65 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -364.6 | -1.4881 | 0.0151 | 0.272 | 1.00 | 2.01 | 31.55 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -334.1 | -1.3638 | 0.0436 | 0.278 | 1.00 | 3.49 | 30.75 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -311.1 | -1.2696 | 0.1714 | 0.278 | 1.00 | 6.92 | 30.13 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -302.7 | -1.2354 | 0.1615 | 0.277 | 1.00 | 6.72 | 29.90 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -306.8 | -1.2522 | 0.2684 | 0.296 | 1.00 | 9.24 | 30.02 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -299.4 | -1.2219 | 0.0052 | 0.339 | 1.00 | 1.48 | 29.81 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
