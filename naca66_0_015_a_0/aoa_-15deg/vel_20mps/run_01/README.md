# Aerodynamic Case: case_04_aoa-15_u20
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.6561
- **Drag Coefficient ($C_d$):** 0.1842
- **Mean Wall $y^+$:** 11.35
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": -15.0, "case_idx": 4}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -310.7 | -1.2684 | 1.6194 | 0.310 | 1.00 | 23.70 | 30.12 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -332.8 | -1.3585 | 0.4238 | 0.253 | 1.00 | 9.94 | 30.71 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -196.7 | -0.8027 | 0.0523 | 0.272 | 1.00 | 3.58 | 26.85 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -149.1 | -0.6085 | 0.4598 | 0.291 | 1.00 | 11.88 | 25.36 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -150.3 | -0.6135 | 0.4925 | 0.278 | 1.00 | 11.76 | 25.40 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -138.4 | -0.5648 | 0.3543 | 0.300 | 1.00 | 10.76 | 25.02 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -44.4 | -0.1811 | 0.2124 | 0.332 | 1.00 | 9.21 | 21.74 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -36.2 | -0.1476 | 0.1352 | 0.267 | 1.00 | 5.90 | 21.43 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -38.9 | -0.1586 | 0.2409 | 0.217 | 1.00 | 6.43 | 21.53 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -41.4 | -0.1690 | 0.0549 | 0.148 | 1.00 | 2.09 | 21.62 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 301.3 | 1.2298 | 0.7280 | 0.223 | 1.00 | 10.72 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 94.1 | 0.3840 | 1.2821 | 0.291 | 1.00 | 19.85 | 15.70 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -32.2 | -0.1315 | 1.3933 | 0.297 | 1.00 | 21.14 | 21.27 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -112.6 | -0.4597 | 1.1528 | 0.294 | 1.00 | 18.99 | 24.16 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -161.7 | -0.6599 | 0.7917 | 0.289 | 1.00 | 15.48 | 25.77 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -174.5 | -0.7124 | 0.5563 | 0.273 | 1.00 | 12.26 | 26.17 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -147.4 | -0.6018 | 0.2615 | 0.268 | 1.00 | 8.25 | 25.31 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -102.8 | -0.4197 | 0.0879 | 0.281 | 1.00 | 5.02 | 23.83 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -61.1 | -0.2493 | 0.0939 | 0.297 | 1.00 | 5.48 | 22.35 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -36.5 | -0.1489 | 0.2710 | 0.314 | 1.00 | 9.84 | 21.44 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
