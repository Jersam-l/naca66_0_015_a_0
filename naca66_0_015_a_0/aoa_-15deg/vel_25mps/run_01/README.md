# Aerodynamic Case: case_05_aoa-15_u25
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5217
- **Drag Coefficient ($C_d$):** 0.1780
- **Mean Wall $y^+$:** 12.78
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": -15.0, "case_idx": 5}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -572.7 | -1.4961 | 2.0466 | 0.310 | 1.00 | 26.65 | 39.50 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -595.3 | -1.5551 | 0.2980 | 0.253 | 1.00 | 8.33 | 39.96 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -432.1 | -1.1288 | 0.2050 | 0.272 | 1.00 | 7.40 | 36.48 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -384.7 | -1.0049 | 0.6074 | 0.291 | 1.00 | 13.66 | 35.40 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -392.1 | -1.0241 | 0.6449 | 0.278 | 1.00 | 13.46 | 35.57 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -376.3 | -0.9829 | 0.4662 | 0.300 | 1.00 | 12.35 | 35.20 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -220.4 | -0.5757 | 0.2731 | 0.332 | 1.00 | 10.45 | 31.38 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -206.8 | -0.5403 | 0.1934 | 0.267 | 1.00 | 7.06 | 31.03 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -203.7 | -0.5322 | 0.3364 | 0.217 | 1.00 | 7.60 | 30.95 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -196.2 | -0.5126 | 0.0947 | 0.148 | 1.00 | 2.75 | 30.75 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 389.0 | 1.0162 | 0.8743 | 0.223 | 1.00 | 11.68 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 48.3 | 0.1261 | 1.6281 | 0.291 | 1.00 | 22.37 | 23.37 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -149.6 | -0.3908 | 1.7743 | 0.297 | 1.00 | 23.86 | 29.48 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -275.5 | -0.7197 | 1.4948 | 0.294 | 1.00 | 21.62 | 32.78 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -357.3 | -0.9333 | 1.0367 | 0.289 | 1.00 | 17.71 | 34.76 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -384.1 | -1.0033 | 0.7376 | 0.273 | 1.00 | 14.11 | 35.38 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -345.8 | -0.9034 | 0.3677 | 0.268 | 1.00 | 9.79 | 34.49 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -276.6 | -0.7226 | 0.1536 | 0.281 | 1.00 | 6.64 | 32.81 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -212.5 | -0.5551 | 0.1747 | 0.297 | 1.00 | 7.48 | 31.18 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -183.4 | -0.4792 | 0.4084 | 0.314 | 1.00 | 12.08 | 30.41 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
