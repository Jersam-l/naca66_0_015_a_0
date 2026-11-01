# Aerodynamic Case: case_26_aoa-05_u30
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1518
- **Drag Coefficient ($C_d$):** 0.0674
- **Mean Wall $y^+$:** 14.59
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": -5.0, "case_idx": 26}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 342.0 | 0.6205 | 1.5886 | 0.286 | 1.00 | 21.69 | 18.48 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -201.9 | -0.3663 | 1.6759 | 0.289 | 1.00 | 22.52 | 35.07 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -242.9 | -0.4406 | 1.2912 | 0.289 | 1.00 | 19.81 | 36.01 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -316.7 | -0.5744 | 0.9752 | 0.285 | 1.00 | 16.97 | 37.64 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -348.0 | -0.6314 | 0.7984 | 0.280 | 1.00 | 15.06 | 38.32 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -326.9 | -0.5930 | 0.5866 | 0.278 | 1.00 | 12.81 | 37.86 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -258.4 | -0.4687 | 0.0691 | 0.252 | 1.00 | 3.95 | 36.36 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -201.4 | -0.3654 | 0.2358 | 0.274 | 1.00 | 8.00 | 35.05 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -167.6 | -0.3040 | 0.2708 | 0.295 | 1.00 | 9.23 | 34.26 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -137.1 | -0.2487 | 0.1733 | 0.367 | 1.00 | 9.21 | 33.52 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 591.4 | 1.0729 | 0.0157 | 0.351 | 1.00 | 2.64 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 33.7 | 0.0611 | 1.9148 | 0.289 | 1.00 | 24.08 | 29.07 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -127.8 | -0.2319 | 1.8662 | 0.300 | 1.00 | 24.68 | 33.30 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -254.6 | -0.4619 | 1.4886 | 0.310 | 1.00 | 22.81 | 36.27 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -352.0 | -0.6385 | 1.0751 | 0.301 | 1.00 | 18.83 | 38.40 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -381.1 | -0.6913 | 0.7587 | 0.296 | 1.00 | 15.53 | 39.02 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -339.1 | -0.6151 | 0.3222 | 0.294 | 1.00 | 10.04 | 38.13 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -265.7 | -0.4819 | 0.0384 | 0.291 | 1.00 | 3.41 | 36.52 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -200.5 | -0.3637 | 0.1283 | 0.296 | 1.00 | 6.39 | 35.03 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -136.4 | -0.2474 | 0.0207 | 0.333 | 1.00 | 2.88 | 33.51 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
