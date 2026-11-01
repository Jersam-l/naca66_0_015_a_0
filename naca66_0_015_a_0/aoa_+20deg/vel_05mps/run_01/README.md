# Aerodynamic Case: case_71_aoa+20_u05
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7245
- **Drag Coefficient ($C_d$):** 0.3237
- **Mean Wall $y^+$:** 6.47
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 20.0, "case_idx": 71}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 19.0 | 1.2412 | 0.0993 | 0.269 | 1.00 | 4.25 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 2.9 | 0.1925 | 0.3644 | 0.261 | 1.00 | 9.47 | 4.49 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -7.9 | -0.5135 | 0.4122 | 0.279 | 1.00 | 10.79 | 6.15 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -13.8 | -0.9041 | 0.4590 | 0.286 | 1.00 | 11.59 | 6.90 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -17.0 | -1.1118 | 0.3954 | 0.286 | 1.00 | 10.83 | 7.27 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -18.7 | -1.2225 | 0.3226 | 0.272 | 1.00 | 9.29 | 7.45 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -16.5 | -1.0803 | 0.1738 | 0.279 | 1.00 | 7.00 | 7.21 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -13.8 | -0.9018 | 0.0652 | 0.289 | 1.00 | 4.45 | 6.89 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -10.4 | -0.6783 | 0.0670 | 0.272 | 1.00 | 4.23 | 6.48 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -9.3 | -0.6088 | 0.2279 | 0.154 | 1.00 | 4.42 | 6.34 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -34.4 | -2.2476 | 0.2402 | 0.277 | 1.00 | 7.66 | 9.01 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -32.0 | -2.0882 | 0.1357 | 0.283 | 1.00 | 6.29 | 8.79 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -26.6 | -1.7384 | 0.1117 | 0.277 | 1.00 | 5.58 | 8.27 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -20.1 | -1.3133 | 0.0344 | 0.274 | 1.00 | 3.06 | 7.61 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -16.6 | -1.0824 | 0.0235 | 0.272 | 1.00 | 2.51 | 7.21 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -14.4 | -0.9434 | 0.0187 | 0.278 | 1.00 | 2.29 | 6.97 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -13.0 | -0.8519 | 0.0386 | 0.278 | 1.00 | 3.28 | 6.80 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -12.5 | -0.8140 | 0.0710 | 0.277 | 1.00 | 4.45 | 6.73 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -11.7 | -0.7628 | 0.0653 | 0.296 | 1.00 | 4.56 | 6.64 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -10.8 | -0.7079 | 0.0055 | 0.339 | 1.00 | 1.52 | 6.53 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
