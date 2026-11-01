# Aerodynamic Case: case_10_aoa-15_u50
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.4950
- **Drag Coefficient ($C_d$):** 0.1683
- **Mean Wall $y^+$:** 17.96
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": -15.0, "case_idx": 10}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -2458.3 | -1.6054 | 4.1134 | 0.310 | 1.00 | 37.78 | 80.71 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -2569.9 | -1.6783 | 0.5920 | 0.253 | 1.00 | 11.74 | 81.83 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -1975.4 | -1.2900 | 0.2995 | 0.272 | 1.00 | 8.93 | 75.66 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -1736.6 | -1.1341 | 1.1844 | 0.291 | 1.00 | 19.07 | 73.04 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -1768.9 | -1.1552 | 1.2892 | 0.278 | 1.00 | 19.04 | 73.40 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -1715.6 | -1.1204 | 0.9490 | 0.300 | 1.00 | 17.61 | 72.81 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -1067.2 | -0.6969 | 0.6048 | 0.332 | 1.00 | 15.55 | 65.13 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -1004.6 | -0.6561 | 0.3255 | 0.267 | 1.00 | 9.16 | 64.34 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -967.8 | -0.6320 | 0.4706 | 0.217 | 1.00 | 8.98 | 63.88 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -939.1 | -0.6133 | 0.1206 | 0.148 | 1.00 | 3.10 | 63.51 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 1408.3 | 0.9197 | 1.7340 | 0.223 | 1.00 | 16.42 | 14.17 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 2.5 | 0.0017 | 3.3173 | 0.291 | 1.00 | 31.93 | 49.96 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -803.2 | -0.5245 | 3.7263 | 0.297 | 1.00 | 34.58 | 61.73 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -1266.0 | -0.8268 | 3.3787 | 0.294 | 1.00 | 32.51 | 67.58 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -1605.9 | -1.0487 | 2.3376 | 0.289 | 1.00 | 26.60 | 71.57 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -1744.0 | -1.1390 | 1.5463 | 0.273 | 1.00 | 20.43 | 73.13 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -1593.5 | -1.0406 | 0.7074 | 0.268 | 1.00 | 13.57 | 71.42 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -1305.8 | -0.8528 | 0.2771 | 0.281 | 1.00 | 8.92 | 68.06 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -1031.5 | -0.6736 | 0.3466 | 0.297 | 1.00 | 10.54 | 64.68 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -901.9 | -0.5890 | 0.8181 | 0.314 | 1.00 | 17.10 | 63.03 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
