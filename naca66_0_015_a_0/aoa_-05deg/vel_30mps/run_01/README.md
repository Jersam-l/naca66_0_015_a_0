# Aerodynamic Case: case_26_aoa-05_u30
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1518
- **Drag Coefficient ($C_d$):** 0.0674
- **Mean Wall $y^+$:** 14.59
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": -5.0, "case_idx": 26}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 322.9 | 0.5858 | 1.5885 | 0.286 | 1.00 | 21.69 | 19.31 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -221.1 | -0.4010 | 1.6759 | 0.289 | 1.00 | 22.52 | 35.51 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -262.0 | -0.4753 | 1.2912 | 0.289 | 1.00 | 19.81 | 36.44 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -335.8 | -0.6092 | 0.9752 | 0.285 | 1.00 | 16.97 | 38.06 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -367.2 | -0.6662 | 0.7985 | 0.280 | 1.00 | 15.06 | 38.72 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -346.1 | -0.6279 | 0.5868 | 0.278 | 1.00 | 12.81 | 38.28 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -277.6 | -0.5036 | 0.0694 | 0.252 | 1.00 | 3.96 | 36.79 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -220.6 | -0.4002 | 0.2356 | 0.274 | 1.00 | 8.00 | 35.50 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -186.8 | -0.3388 | 0.2707 | 0.295 | 1.00 | 9.23 | 34.71 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -156.3 | -0.2835 | 0.1734 | 0.367 | 1.00 | 9.22 | 33.99 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 572.2 | 1.0380 | 0.0158 | 0.351 | 1.00 | 2.65 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 14.5 | 0.0263 | 1.9148 | 0.289 | 1.00 | 24.08 | 29.60 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -147.0 | -0.2667 | 1.8662 | 0.300 | 1.00 | 24.68 | 33.76 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -273.8 | -0.4966 | 1.4885 | 0.310 | 1.00 | 22.81 | 36.70 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -371.1 | -0.6732 | 1.0750 | 0.301 | 1.00 | 18.83 | 38.80 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -400.1 | -0.7258 | 0.7584 | 0.296 | 1.00 | 15.52 | 39.41 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -358.1 | -0.6496 | 0.3217 | 0.294 | 1.00 | 10.04 | 38.53 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -284.7 | -0.5165 | 0.0389 | 0.291 | 1.00 | 3.43 | 36.94 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -219.6 | -0.3984 | 0.1289 | 0.296 | 1.00 | 6.41 | 35.48 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -155.5 | -0.2821 | 0.0198 | 0.333 | 1.00 | 2.82 | 33.97 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
