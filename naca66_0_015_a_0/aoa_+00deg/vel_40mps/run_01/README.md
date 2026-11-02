# Aerodynamic Case: case_38_aoa+00_u40
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0487
- **Drag Coefficient ($C_d$):** 0.0551
- **Mean Wall $y^+$:** 17.06
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 0.0, "case_idx": 38}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 957.8 | 0.9773 | 1.1987 | 0.287 | 1.00 | 18.95 | 6.02 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -119.4 | -0.1219 | 2.4908 | 0.299 | 1.00 | 28.40 | 42.37 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -265.5 | -0.2710 | 2.3852 | 0.285 | 1.00 | 26.49 | 45.09 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -446.5 | -0.4556 | 1.7801 | 0.284 | 1.00 | 22.84 | 48.26 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -572.0 | -0.5837 | 1.2918 | 0.283 | 1.00 | 19.40 | 50.34 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -595.0 | -0.6071 | 0.9724 | 0.278 | 1.00 | 16.51 | 50.71 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -506.5 | -0.5169 | 0.4009 | 0.273 | 1.00 | 10.39 | 49.27 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -375.5 | -0.3831 | 0.1006 | 0.282 | 1.00 | 5.38 | 47.04 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -275.6 | -0.2812 | 0.2326 | 0.300 | 1.00 | 8.71 | 45.28 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -181.5 | -0.1852 | 0.1013 | 0.379 | 1.00 | 7.26 | 43.55 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 992.6 | 1.0129 | 0.8566 | 0.309 | 1.00 | 17.21 | 0.00 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -45.3 | -0.0463 | 2.5021 | 0.297 | 1.00 | 28.29 | 40.91 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -210.6 | -0.2149 | 2.3421 | 0.301 | 1.00 | 27.72 | 44.09 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -383.1 | -0.3909 | 1.7906 | 0.303 | 1.00 | 24.42 | 47.17 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -505.8 | -0.5161 | 1.2522 | 0.301 | 1.00 | 20.26 | 49.25 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -515.0 | -0.5255 | 0.8279 | 0.305 | 1.00 | 16.70 | 49.41 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -428.5 | -0.4373 | 0.1960 | 0.295 | 1.00 | 7.87 | 47.95 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -328.2 | -0.3349 | 0.2610 | 0.284 | 1.00 | 8.75 | 46.22 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -249.6 | -0.2546 | 0.3198 | 0.300 | 1.00 | 10.22 | 44.80 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -176.6 | -0.1802 | 0.2020 | 0.348 | 1.00 | 9.41 | 43.45 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
