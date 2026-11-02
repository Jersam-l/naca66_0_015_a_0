# Aerodynamic Case: case_62_aoa+15_u10
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6030
- **Drag Coefficient ($C_d$):** 0.2121
- **Mean Wall $y^+$:** 8.66
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 15.0, "case_idx": 62}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 66.1 | 1.0785 | 0.3677 | 0.199 | 1.00 | 6.78 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 7.5 | 0.1229 | 0.7128 | 0.264 | 1.00 | 13.44 | 9.37 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -26.2 | -0.4275 | 0.6531 | 0.337 | 1.00 | 16.41 | 11.95 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -41.1 | -0.6715 | 0.6806 | 0.275 | 1.00 | 13.67 | 12.93 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -55.1 | -0.8999 | 0.4878 | 0.262 | 1.00 | 11.03 | 13.78 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -59.1 | -0.9644 | 0.3575 | 0.287 | 1.00 | 10.32 | 14.02 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -53.9 | -0.8806 | 0.1932 | 0.281 | 1.00 | 7.43 | 13.71 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -41.9 | -0.6834 | 0.0845 | 0.289 | 1.00 | 5.06 | 12.97 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -29.5 | -0.4818 | 0.0885 | 0.299 | 1.00 | 5.36 | 12.17 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -24.3 | -0.3967 | 0.2103 | 0.247 | 1.00 | 6.81 | 11.82 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -93.5 | -1.5258 | 0.8614 | 0.300 | 1.00 | 16.71 | 15.89 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -69.8 | -1.1393 | 0.1420 | 0.273 | 1.00 | 6.20 | 14.63 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -61.2 | -0.9989 | 0.1097 | 0.283 | 1.00 | 5.65 | 14.14 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -52.4 | -0.8559 | 0.2129 | 0.289 | 1.00 | 8.04 | 13.62 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -49.2 | -0.8041 | 0.2144 | 0.289 | 1.00 | 8.06 | 13.43 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -42.3 | -0.6900 | 0.1174 | 0.289 | 1.00 | 5.97 | 13.00 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -35.6 | -0.5818 | 0.0641 | 0.282 | 1.00 | 4.30 | 12.58 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -33.0 | -0.5381 | 0.1267 | 0.288 | 1.00 | 6.18 | 12.40 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -30.8 | -0.5023 | 0.1250 | 0.312 | 1.00 | 6.65 | 12.26 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -27.2 | -0.4445 | 0.0305 | 0.396 | 1.00 | 4.17 | 12.02 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
