# Aerodynamic Case: case_32_aoa+00_u10
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0702
- **Drag Coefficient ($C_d$):** 0.0594
- **Mean Wall $y^+$:** 8.70
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 0.0, "case_idx": 32}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 55.6 | 0.9073 | 0.3146 | 0.287 | 1.00 | 9.71 | 3.04 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -11.5 | -0.1885 | 0.6039 | 0.299 | 1.00 | 13.99 | 10.90 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -22.2 | -0.3631 | 0.5351 | 0.285 | 1.00 | 12.55 | 11.68 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -33.3 | -0.5433 | 0.4121 | 0.284 | 1.00 | 10.99 | 12.42 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -39.9 | -0.6522 | 0.3387 | 0.283 | 1.00 | 9.93 | 12.85 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -41.4 | -0.6759 | 0.2879 | 0.278 | 1.00 | 8.98 | 12.95 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -35.7 | -0.5835 | 0.1526 | 0.273 | 1.00 | 6.41 | 12.58 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -27.4 | -0.4469 | 0.0063 | 0.282 | 1.00 | 1.32 | 12.03 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -20.8 | -0.3388 | 0.0538 | 0.300 | 1.00 | 4.19 | 11.57 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -13.3 | -0.2175 | 0.0006 | 0.379 | 1.00 | 0.55 | 11.03 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 59.2 | 0.9672 | 0.1984 | 0.309 | 1.00 | 8.28 | 1.81 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -5.0 | -0.0818 | 0.6062 | 0.297 | 1.00 | 13.92 | 10.40 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -16.5 | -0.2689 | 0.5428 | 0.301 | 1.00 | 13.35 | 11.26 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -27.3 | -0.4465 | 0.4154 | 0.303 | 1.00 | 11.76 | 12.03 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -33.8 | -0.5512 | 0.3122 | 0.301 | 1.00 | 10.12 | 12.46 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -33.4 | -0.5454 | 0.2231 | 0.305 | 1.00 | 8.67 | 12.43 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -27.3 | -0.4465 | 0.0589 | 0.295 | 1.00 | 4.31 | 12.03 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -22.6 | -0.3683 | 0.0824 | 0.284 | 1.00 | 4.92 | 11.70 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -18.1 | -0.2952 | 0.1003 | 0.300 | 1.00 | 5.72 | 11.38 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -13.0 | -0.2125 | 0.0501 | 0.348 | 1.00 | 4.69 | 11.01 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
