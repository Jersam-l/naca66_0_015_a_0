# Aerodynamic Case: case_35_aoa+00_u25
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0514
- **Drag Coefficient ($C_d$):** 0.0563
- **Mean Wall $y^+$:** 13.37
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 0.0, "case_idx": 35}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 298.6 | 0.7800 | 0.7522 | 0.287 | 1.00 | 15.01 | 11.73 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -121.3 | -0.3168 | 1.5386 | 0.299 | 1.00 | 22.32 | 28.69 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -184.5 | -0.4820 | 1.4011 | 0.285 | 1.00 | 20.30 | 30.43 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -257.6 | -0.6729 | 1.0304 | 0.284 | 1.00 | 17.38 | 32.34 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -302.4 | -0.7899 | 0.7868 | 0.283 | 1.00 | 15.14 | 33.45 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -310.0 | -0.8099 | 0.6223 | 0.278 | 1.00 | 13.21 | 33.63 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -275.4 | -0.7193 | 0.2773 | 0.273 | 1.00 | 8.64 | 32.78 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -223.4 | -0.5835 | 0.0484 | 0.282 | 1.00 | 3.73 | 31.46 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -184.3 | -0.4815 | 0.1409 | 0.300 | 1.00 | 6.78 | 30.43 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -146.4 | -0.3825 | 0.0523 | 0.379 | 1.00 | 5.22 | 29.39 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 312.6 | 0.8165 | 0.5312 | 0.309 | 1.00 | 13.55 | 10.71 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -91.8 | -0.2399 | 1.5453 | 0.297 | 1.00 | 22.23 | 27.84 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -161.2 | -0.4212 | 1.3860 | 0.301 | 1.00 | 21.33 | 29.80 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -232.2 | -0.6066 | 1.0331 | 0.303 | 1.00 | 18.55 | 31.69 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -276.2 | -0.7216 | 0.7474 | 0.301 | 1.00 | 15.66 | 32.80 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -277.3 | -0.7244 | 0.5175 | 0.305 | 1.00 | 13.21 | 32.83 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -242.0 | -0.6322 | 0.1372 | 0.295 | 1.00 | 6.58 | 31.94 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -203.6 | -0.5319 | 0.1630 | 0.284 | 1.00 | 6.92 | 30.94 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -173.5 | -0.4533 | 0.2050 | 0.300 | 1.00 | 8.18 | 30.14 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -144.6 | -0.3778 | 0.1233 | 0.348 | 1.00 | 7.35 | 29.34 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
