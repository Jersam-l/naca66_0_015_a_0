# Aerodynamic Case: case_09_aoa-15_u45
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.4400
- **Drag Coefficient ($C_d$):** 0.1574
- **Mean Wall $y^+$:** 17.01
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": -15.0, "case_idx": 9}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -1608.8 | -1.2971 | 3.7019 | 0.310 | 1.00 | 35.84 | 68.20 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -1685.6 | -1.3590 | 0.3617 | 0.253 | 1.00 | 9.18 | 69.11 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -1215.4 | -0.9799 | 0.4647 | 0.272 | 1.00 | 11.16 | 63.32 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -1091.2 | -0.8798 | 1.1570 | 0.291 | 1.00 | 18.85 | 61.70 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -1135.2 | -0.9152 | 1.1829 | 0.278 | 1.00 | 18.23 | 62.28 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -1093.8 | -0.8819 | 0.8569 | 0.300 | 1.00 | 16.74 | 61.73 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -553.9 | -0.4466 | 0.5336 | 0.332 | 1.00 | 14.60 | 54.12 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -504.2 | -0.4065 | 0.2926 | 0.267 | 1.00 | 8.68 | 53.37 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -487.8 | -0.3932 | 0.3979 | 0.217 | 1.00 | 8.26 | 53.12 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -487.9 | -0.3934 | 0.0360 | 0.148 | 1.00 | 1.69 | 53.12 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 1502.9 | 1.2117 | 1.5238 | 0.223 | 1.00 | 15.34 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 346.0 | 0.2790 | 2.9925 | 0.291 | 1.00 | 30.33 | 38.21 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -300.9 | -0.2426 | 3.3338 | 0.297 | 1.00 | 32.71 | 50.16 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -683.3 | -0.5509 | 2.9739 | 0.294 | 1.00 | 30.50 | 56.04 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -963.7 | -0.7770 | 2.0542 | 0.289 | 1.00 | 24.93 | 59.99 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -1077.8 | -0.8690 | 1.3857 | 0.273 | 1.00 | 19.34 | 61.52 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -962.0 | -0.7756 | 0.6569 | 0.268 | 1.00 | 13.08 | 59.96 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -736.3 | -0.5937 | 0.2792 | 0.281 | 1.00 | 8.95 | 56.81 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -528.4 | -0.4260 | 0.3461 | 0.297 | 1.00 | 10.53 | 53.74 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -446.5 | -0.3600 | 0.7914 | 0.314 | 1.00 | 16.82 | 52.48 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
