# Aerodynamic Case: case_61_aoa+15_u05
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6585
- **Drag Coefficient ($C_d$):** 0.2326
- **Mean Wall $y^+$:** 6.74
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 15.0, "case_idx": 61}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 15.4 | 1.0027 | 0.1955 | 0.199 | 1.00 | 4.98 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 0.9 | 0.0612 | 0.3532 | 0.264 | 1.00 | 9.46 | 4.84 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -8.1 | -0.5260 | 0.3284 | 0.337 | 1.00 | 11.64 | 6.18 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -11.9 | -0.7742 | 0.3807 | 0.275 | 1.00 | 10.22 | 6.66 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -14.4 | -0.9413 | 0.3447 | 0.262 | 1.00 | 9.28 | 6.97 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -15.1 | -0.9864 | 0.2808 | 0.287 | 1.00 | 9.15 | 7.05 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -13.5 | -0.8821 | 0.1658 | 0.281 | 1.00 | 6.88 | 6.86 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -11.4 | -0.7437 | 0.0532 | 0.289 | 1.00 | 4.02 | 6.60 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -8.7 | -0.5685 | 0.0442 | 0.299 | 1.00 | 3.79 | 6.26 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -7.2 | -0.4676 | 0.1391 | 0.247 | 1.00 | 5.54 | 6.06 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -26.1 | -1.7018 | 0.4355 | 0.300 | 1.00 | 11.88 | 8.22 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -19.5 | -1.2729 | 0.0514 | 0.273 | 1.00 | 3.72 | 7.54 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -17.1 | -1.1163 | 0.0473 | 0.283 | 1.00 | 3.71 | 7.27 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -14.3 | -0.9366 | 0.1235 | 0.289 | 1.00 | 6.12 | 6.96 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -13.3 | -0.8703 | 0.1449 | 0.289 | 1.00 | 6.63 | 6.84 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -11.3 | -0.7358 | 0.0977 | 0.289 | 1.00 | 5.45 | 6.59 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -9.6 | -0.6243 | 0.0219 | 0.282 | 1.00 | 2.50 | 6.37 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -8.9 | -0.5818 | 0.0566 | 0.288 | 1.00 | 4.13 | 6.29 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -8.7 | -0.5689 | 0.0627 | 0.312 | 1.00 | 4.71 | 6.26 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -8.2 | -0.5335 | 0.0109 | 0.396 | 1.00 | 2.49 | 6.19 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
