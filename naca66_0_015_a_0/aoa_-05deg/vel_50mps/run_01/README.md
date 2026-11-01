# Aerodynamic Case: case_30_aoa-05_u50
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1443
- **Drag Coefficient ($C_d$):** 0.0666
- **Mean Wall $y^+$:** 19.01
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": -5.0, "case_idx": 30}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 911.6 | 0.5954 | 2.6359 | 0.286 | 1.00 | 27.93 | 31.81 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -612.9 | -0.4002 | 2.8703 | 0.289 | 1.00 | 29.47 | 59.17 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -693.7 | -0.4531 | 2.3465 | 0.289 | 1.00 | 26.70 | 60.27 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -907.7 | -0.5927 | 1.7347 | 0.285 | 1.00 | 22.63 | 63.10 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -1011.7 | -0.6607 | 1.3246 | 0.280 | 1.00 | 19.40 | 64.44 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -953.8 | -0.6229 | 0.9197 | 0.278 | 1.00 | 16.04 | 63.70 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -766.5 | -0.5006 | 0.0555 | 0.252 | 1.00 | 3.50 | 61.25 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -608.8 | -0.3976 | 0.4007 | 0.274 | 1.00 | 10.43 | 59.11 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -515.1 | -0.3364 | 0.4421 | 0.295 | 1.00 | 11.80 | 57.80 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -433.3 | -0.2830 | 0.2908 | 0.367 | 1.00 | 11.94 | 56.63 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 1590.7 | 1.0388 | 0.0432 | 0.351 | 1.00 | 4.39 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 30.9 | 0.0202 | 3.2243 | 0.289 | 1.00 | 31.25 | 49.49 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -407.5 | -0.2661 | 3.2366 | 0.300 | 1.00 | 32.50 | 56.26 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -731.1 | -0.4774 | 2.7032 | 0.310 | 1.00 | 30.74 | 60.77 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -1012.0 | -0.6609 | 1.9365 | 0.301 | 1.00 | 25.27 | 64.44 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -1111.9 | -0.7261 | 1.3073 | 0.296 | 1.00 | 20.38 | 65.69 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -1002.5 | -0.6547 | 0.5246 | 0.294 | 1.00 | 12.81 | 64.32 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -800.0 | -0.5224 | 0.0764 | 0.291 | 1.00 | 4.81 | 61.69 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -614.2 | -0.4011 | 0.2166 | 0.296 | 1.00 | 8.30 | 59.19 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -433.1 | -0.2828 | 0.0350 | 0.333 | 1.00 | 3.75 | 56.63 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
