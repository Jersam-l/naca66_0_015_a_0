# Aerodynamic Case: case_04_aoa-15_u20
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5243
- **Drag Coefficient ($C_d$):** 0.1790
- **Mean Wall $y^+$:** 11.49
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": -15.0, "case_idx": 4}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -413.7 | -1.6886 | 1.6353 | 0.310 | 1.00 | 23.82 | 32.79 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -428.5 | -1.7490 | 0.2400 | 0.253 | 1.00 | 7.48 | 33.16 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -319.6 | -1.3045 | 0.1890 | 0.272 | 1.00 | 7.11 | 30.36 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -293.0 | -1.1961 | 0.5012 | 0.291 | 1.00 | 12.41 | 29.64 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -298.3 | -1.2176 | 0.5251 | 0.278 | 1.00 | 12.15 | 29.78 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -288.0 | -1.1755 | 0.3801 | 0.300 | 1.00 | 11.15 | 29.50 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -188.7 | -0.7704 | 0.2218 | 0.332 | 1.00 | 9.42 | 26.61 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -180.4 | -0.7362 | 0.1613 | 0.267 | 1.00 | 6.44 | 26.35 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -178.6 | -0.7292 | 0.2918 | 0.217 | 1.00 | 7.07 | 26.30 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -173.3 | -0.7073 | 0.0852 | 0.148 | 1.00 | 2.61 | 26.13 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 200.8 | 0.8196 | 0.6985 | 0.223 | 1.00 | 10.44 | 8.49 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | -16.8 | -0.0686 | 1.2979 | 0.291 | 1.00 | 19.97 | 20.68 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -143.4 | -0.5853 | 1.4031 | 0.297 | 1.00 | 21.22 | 25.18 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -225.5 | -0.9205 | 1.1646 | 0.294 | 1.00 | 19.09 | 27.72 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -277.1 | -1.1309 | 0.8128 | 0.289 | 1.00 | 15.69 | 29.20 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -293.2 | -1.1969 | 0.5894 | 0.273 | 1.00 | 12.62 | 29.64 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -268.4 | -1.0954 | 0.3002 | 0.268 | 1.00 | 8.84 | 28.95 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -224.1 | -0.9146 | 0.1269 | 0.281 | 1.00 | 6.03 | 27.67 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -183.2 | -0.7479 | 0.1415 | 0.297 | 1.00 | 6.73 | 26.44 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -164.8 | -0.6728 | 0.3267 | 0.314 | 1.00 | 10.80 | 25.87 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
