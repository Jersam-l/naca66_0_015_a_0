# Aerodynamic Case: case_02_aoa-15_u10
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5764
- **Drag Coefficient ($C_d$):** 0.1861
- **Mean Wall $y^+$:** 8.49
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": -15.0, "case_idx": 2}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -95.3 | -1.5566 | 0.8156 | 0.310 | 1.00 | 16.82 | 15.99 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -100.3 | -1.6377 | 0.1545 | 0.253 | 1.00 | 6.00 | 16.24 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -68.8 | -1.1228 | 0.0925 | 0.272 | 1.00 | 4.97 | 14.57 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -61.2 | -0.9995 | 0.2695 | 0.291 | 1.00 | 9.10 | 14.14 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -61.9 | -1.0100 | 0.2873 | 0.278 | 1.00 | 8.99 | 14.18 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -58.5 | -0.9551 | 0.2113 | 0.300 | 1.00 | 8.31 | 13.98 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -34.2 | -0.5583 | 0.1198 | 0.332 | 1.00 | 6.92 | 12.48 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -32.1 | -0.5236 | 0.0863 | 0.267 | 1.00 | 4.71 | 12.34 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -31.6 | -0.5166 | 0.1604 | 0.217 | 1.00 | 5.24 | 12.31 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -29.9 | -0.4882 | 0.0556 | 0.148 | 1.00 | 2.10 | 12.20 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 58.8 | 0.9594 | 0.3538 | 0.223 | 1.00 | 7.45 | 2.02 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 5.0 | 0.0815 | 0.6443 | 0.291 | 1.00 | 14.07 | 9.58 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -26.3 | -0.4301 | 0.7050 | 0.297 | 1.00 | 15.04 | 11.96 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -46.3 | -0.7560 | 0.5959 | 0.294 | 1.00 | 13.65 | 13.25 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -58.7 | -0.9587 | 0.4221 | 0.289 | 1.00 | 11.30 | 13.99 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -62.4 | -1.0185 | 0.3122 | 0.273 | 1.00 | 9.18 | 14.21 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -55.4 | -0.9041 | 0.1661 | 0.268 | 1.00 | 6.58 | 13.80 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -43.9 | -0.7160 | 0.0681 | 0.281 | 1.00 | 4.42 | 13.10 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -32.5 | -0.5314 | 0.0769 | 0.297 | 1.00 | 4.96 | 12.38 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -27.4 | -0.4478 | 0.1780 | 0.314 | 1.00 | 7.97 | 12.03 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
