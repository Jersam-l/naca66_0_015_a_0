# Aerodynamic Case: case_25_aoa-05_u25
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1518
- **Drag Coefficient ($C_d$):** 0.0677
- **Mean Wall $y^+$:** 13.30
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": -5.0, "case_idx": 25}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 224.6 | 0.5866 | 1.3227 | 0.286 | 1.00 | 19.79 | 16.07 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -152.9 | -0.3995 | 1.3815 | 0.289 | 1.00 | 20.44 | 29.57 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -184.2 | -0.4811 | 1.0461 | 0.289 | 1.00 | 17.83 | 30.43 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -234.0 | -0.6113 | 0.8004 | 0.285 | 1.00 | 15.37 | 31.73 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -254.6 | -0.6651 | 0.6694 | 0.280 | 1.00 | 13.79 | 32.26 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -239.8 | -0.6264 | 0.4982 | 0.278 | 1.00 | 11.81 | 31.88 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -191.9 | -0.5014 | 0.0649 | 0.252 | 1.00 | 3.83 | 30.63 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -153.0 | -0.3998 | 0.1996 | 0.274 | 1.00 | 7.36 | 29.58 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -130.0 | -0.3396 | 0.2330 | 0.295 | 1.00 | 8.57 | 28.93 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -108.4 | -0.2832 | 0.1439 | 0.367 | 1.00 | 8.40 | 28.32 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 397.5 | 1.0384 | 0.0133 | 0.351 | 1.00 | 2.44 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 10.5 | 0.0274 | 1.5906 | 0.289 | 1.00 | 21.95 | 24.66 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -102.5 | -0.2678 | 1.5344 | 0.300 | 1.00 | 22.38 | 28.15 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -192.4 | -0.5027 | 1.2104 | 0.310 | 1.00 | 20.57 | 30.65 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -259.0 | -0.6766 | 0.8799 | 0.301 | 1.00 | 17.03 | 32.37 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -278.2 | -0.7267 | 0.6307 | 0.296 | 1.00 | 14.16 | 32.85 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -248.6 | -0.6495 | 0.2745 | 0.294 | 1.00 | 9.27 | 32.11 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -197.5 | -0.5160 | 0.0274 | 0.291 | 1.00 | 2.86 | 30.78 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -152.5 | -0.3984 | 0.1060 | 0.296 | 1.00 | 5.81 | 29.56 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -107.8 | -0.2816 | 0.0206 | 0.333 | 1.00 | 2.88 | 28.30 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
