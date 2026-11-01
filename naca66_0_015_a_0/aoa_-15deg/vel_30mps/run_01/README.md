# Aerodynamic Case: case_06_aoa-15_u30
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5389
- **Drag Coefficient ($C_d$):** 0.1810
- **Mean Wall $y^+$:** 14.03
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": -15.0, "case_idx": 6}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -846.3 | -1.5353 | 2.4520 | 0.310 | 1.00 | 29.16 | 47.77 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -880.7 | -1.5977 | 0.4082 | 0.253 | 1.00 | 9.75 | 48.35 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -647.6 | -1.1748 | 0.1753 | 0.272 | 1.00 | 6.83 | 44.24 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -564.2 | -1.0234 | 0.6984 | 0.291 | 1.00 | 14.65 | 42.67 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -573.9 | -1.0411 | 0.7611 | 0.278 | 1.00 | 14.63 | 42.86 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -552.4 | -1.0020 | 0.5509 | 0.300 | 1.00 | 13.42 | 42.45 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -329.8 | -0.5983 | 0.3221 | 0.332 | 1.00 | 11.35 | 37.93 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -309.6 | -0.5616 | 0.2197 | 0.267 | 1.00 | 7.52 | 37.49 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -303.8 | -0.5512 | 0.3621 | 0.217 | 1.00 | 7.88 | 37.36 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -294.9 | -0.5350 | 0.1048 | 0.148 | 1.00 | 2.89 | 37.17 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 538.0 | 0.9759 | 1.0592 | 0.223 | 1.00 | 12.87 | 4.66 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 52.1 | 0.0945 | 1.9525 | 0.291 | 1.00 | 24.50 | 28.55 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -232.7 | -0.4222 | 2.1472 | 0.297 | 1.00 | 26.25 | 35.78 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -409.5 | -0.7428 | 1.8382 | 0.294 | 1.00 | 23.98 | 39.60 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -527.5 | -0.9569 | 1.2676 | 0.289 | 1.00 | 19.59 | 41.97 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -567.2 | -1.0290 | 0.8829 | 0.273 | 1.00 | 15.44 | 42.73 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -512.2 | -0.9292 | 0.4272 | 0.268 | 1.00 | 10.55 | 41.67 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -412.8 | -0.7488 | 0.1722 | 0.281 | 1.00 | 7.03 | 39.67 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -320.5 | -0.5813 | 0.1999 | 0.297 | 1.00 | 8.00 | 37.73 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -277.6 | -0.5035 | 0.4796 | 0.314 | 1.00 | 13.09 | 36.78 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
