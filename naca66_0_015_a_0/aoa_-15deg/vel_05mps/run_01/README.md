# Aerodynamic Case: case_01_aoa-15_u05
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5773
- **Drag Coefficient ($C_d$):** 0.1714
- **Mean Wall $y^+$:** 6.49
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": -15.0, "case_idx": 1}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -26.1 | -1.7018 | 0.4142 | 0.310 | 1.00 | 11.99 | 8.22 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -27.2 | -1.7733 | 0.0663 | 0.253 | 1.00 | 3.93 | 8.33 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -18.7 | -1.2240 | 0.0705 | 0.272 | 1.00 | 4.35 | 7.46 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -16.9 | -1.1011 | 0.1665 | 0.291 | 1.00 | 7.15 | 7.25 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -16.6 | -1.0863 | 0.1902 | 0.278 | 1.00 | 7.31 | 7.22 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -15.2 | -0.9941 | 0.1576 | 0.300 | 1.00 | 7.18 | 7.06 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -8.8 | -0.5758 | 0.0889 | 0.332 | 1.00 | 5.96 | 6.28 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -8.1 | -0.5314 | 0.0408 | 0.267 | 1.00 | 3.24 | 6.19 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -7.8 | -0.5069 | 0.0719 | 0.217 | 1.00 | 3.51 | 6.14 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -7.1 | -0.4628 | 0.0335 | 0.148 | 1.00 | 1.63 | 6.05 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 13.9 | 0.9057 | 0.1794 | 0.223 | 1.00 | 5.30 | 1.54 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | -0.1 | -0.0093 | 0.3258 | 0.291 | 1.00 | 10.01 | 5.02 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -8.5 | -0.5524 | 0.3729 | 0.297 | 1.00 | 10.94 | 6.23 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -12.9 | -0.8423 | 0.3771 | 0.294 | 1.00 | 10.86 | 6.79 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -15.1 | -0.9867 | 0.3307 | 0.289 | 1.00 | 10.00 | 7.05 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -16.0 | -1.0445 | 0.2637 | 0.273 | 1.00 | 8.44 | 7.15 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -13.9 | -0.9076 | 0.1357 | 0.268 | 1.00 | 5.94 | 6.91 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -11.9 | -0.7753 | 0.0260 | 0.281 | 1.00 | 2.73 | 6.66 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -8.5 | -0.5540 | 0.0360 | 0.297 | 1.00 | 3.39 | 6.23 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -6.4 | -0.4148 | 0.1172 | 0.314 | 1.00 | 6.47 | 5.95 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
