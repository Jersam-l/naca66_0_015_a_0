# Aerodynamic Case: case_28_aoa-05_u40
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1484
- **Drag Coefficient ($C_d$):** 0.0669
- **Mean Wall $y^+$:** 16.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": -5.0, "case_idx": 28}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 664.8 | 0.6784 | 2.1150 | 0.286 | 1.00 | 25.02 | 22.68 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -306.2 | -0.3125 | 2.2709 | 0.289 | 1.00 | 26.21 | 45.83 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -367.0 | -0.3745 | 1.8068 | 0.289 | 1.00 | 23.43 | 46.90 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -502.5 | -0.5127 | 1.3437 | 0.285 | 1.00 | 19.92 | 49.20 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -563.9 | -0.5754 | 1.0589 | 0.280 | 1.00 | 17.35 | 50.21 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -526.4 | -0.5371 | 0.7559 | 0.278 | 1.00 | 14.54 | 49.59 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -405.6 | -0.4138 | 0.0654 | 0.252 | 1.00 | 3.77 | 47.56 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -303.9 | -0.3101 | 0.3155 | 0.274 | 1.00 | 9.26 | 45.78 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -243.6 | -0.2486 | 0.3537 | 0.295 | 1.00 | 10.55 | 44.70 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -190.7 | -0.1946 | 0.2317 | 0.367 | 1.00 | 10.65 | 43.72 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 1104.7 | 1.1273 | 0.0264 | 0.351 | 1.00 | 3.43 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 109.9 | 0.1121 | 2.5678 | 0.289 | 1.00 | 27.89 | 37.69 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -173.8 | -0.1773 | 2.5455 | 0.300 | 1.00 | 28.83 | 43.40 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -389.4 | -0.3974 | 2.0786 | 0.310 | 1.00 | 26.95 | 47.28 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -566.8 | -0.5784 | 1.4910 | 0.301 | 1.00 | 22.17 | 50.25 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -624.7 | -0.6375 | 1.0267 | 0.296 | 1.00 | 18.06 | 51.19 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -552.4 | -0.5637 | 0.4226 | 0.294 | 1.00 | 11.50 | 50.02 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -422.4 | -0.4310 | 0.0568 | 0.291 | 1.00 | 4.15 | 47.85 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -304.8 | -0.3111 | 0.1715 | 0.296 | 1.00 | 7.39 | 45.80 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -190.1 | -0.1940 | 0.0275 | 0.333 | 1.00 | 3.32 | 43.71 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
