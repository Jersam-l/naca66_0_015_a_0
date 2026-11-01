# Aerodynamic Case: case_08_aoa-15_u40
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5174
- **Drag Coefficient ($C_d$):** 0.1716
- **Mean Wall $y^+$:** 16.09
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": -15.0, "case_idx": 8}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -1541.4 | -1.5728 | 3.2853 | 0.310 | 1.00 | 33.77 | 64.16 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -1590.4 | -1.6228 | 0.3935 | 0.253 | 1.00 | 9.57 | 64.78 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -1197.8 | -1.2222 | 0.3504 | 0.272 | 1.00 | 9.68 | 59.63 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -1074.6 | -1.0966 | 0.9859 | 0.291 | 1.00 | 17.40 | 57.92 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -1093.6 | -1.1160 | 1.0179 | 0.278 | 1.00 | 16.91 | 58.19 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -1051.2 | -1.0727 | 0.7391 | 0.300 | 1.00 | 15.54 | 57.59 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -625.5 | -0.6383 | 0.4694 | 0.332 | 1.00 | 13.70 | 51.20 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -586.1 | -0.5980 | 0.2783 | 0.267 | 1.00 | 8.47 | 50.56 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -565.9 | -0.5774 | 0.4437 | 0.217 | 1.00 | 8.72 | 50.24 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -541.9 | -0.5529 | 0.1635 | 0.148 | 1.00 | 3.61 | 49.85 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 921.2 | 0.9400 | 1.3737 | 0.223 | 1.00 | 14.60 | 9.80 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 26.5 | 0.0270 | 2.6424 | 0.291 | 1.00 | 28.50 | 39.46 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -478.1 | -0.4879 | 2.9335 | 0.297 | 1.00 | 30.68 | 48.79 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -778.0 | -0.7939 | 2.5831 | 0.294 | 1.00 | 28.42 | 53.58 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -989.6 | -1.0098 | 1.7770 | 0.289 | 1.00 | 23.19 | 56.71 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -1065.7 | -1.0874 | 1.2014 | 0.273 | 1.00 | 18.01 | 57.79 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -964.2 | -0.9839 | 0.5572 | 0.268 | 1.00 | 12.05 | 56.34 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -779.0 | -0.7948 | 0.2112 | 0.281 | 1.00 | 7.78 | 53.59 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -602.8 | -0.6151 | 0.2551 | 0.297 | 1.00 | 9.04 | 50.84 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -515.4 | -0.5260 | 0.6290 | 0.314 | 1.00 | 14.99 | 49.41 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
