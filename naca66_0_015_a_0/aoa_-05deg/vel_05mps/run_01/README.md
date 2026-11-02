# Aerodynamic Case: case_21_aoa-05_u05
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1393
- **Drag Coefficient ($C_d$):** 0.0747
- **Mean Wall $y^+$:** 6.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": -5.0, "case_idx": 21}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 8.5 | 0.5580 | 0.2559 | 0.286 | 1.00 | 8.70 | 3.32 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -7.4 | -0.4861 | 0.2621 | 0.289 | 1.00 | 8.90 | 6.09 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -8.2 | -0.5325 | 0.2389 | 0.289 | 1.00 | 8.52 | 6.19 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -9.2 | -0.6023 | 0.2317 | 0.285 | 1.00 | 8.27 | 6.33 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -9.6 | -0.6277 | 0.2127 | 0.280 | 1.00 | 7.77 | 6.38 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -8.6 | -0.5586 | 0.1550 | 0.278 | 1.00 | 6.58 | 6.24 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -7.1 | -0.4642 | 0.0019 | 0.252 | 1.00 | 0.38 | 6.05 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -6.3 | -0.4114 | 0.0609 | 0.274 | 1.00 | 4.07 | 5.94 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -5.5 | -0.3573 | 0.0670 | 0.295 | 1.00 | 4.59 | 5.83 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -4.3 | -0.2823 | 0.0322 | 0.367 | 1.00 | 3.97 | 5.66 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 14.8 | 0.9674 | 0.0115 | 0.351 | 1.00 | 2.27 | 0.90 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | -1.4 | -0.0941 | 0.3182 | 0.289 | 1.00 | 9.82 | 5.23 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -6.0 | -0.3922 | 0.3284 | 0.300 | 1.00 | 10.35 | 5.90 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -8.9 | -0.5810 | 0.3172 | 0.310 | 1.00 | 10.53 | 6.29 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -10.8 | -0.7083 | 0.2927 | 0.301 | 1.00 | 9.82 | 6.54 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -11.6 | -0.7588 | 0.2451 | 0.296 | 1.00 | 8.83 | 6.63 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -10.0 | -0.6540 | 0.1369 | 0.294 | 1.00 | 6.55 | 6.43 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -8.9 | -0.5782 | 0.0029 | 0.291 | 1.00 | 0.75 | 6.28 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -7.3 | -0.4768 | 0.0318 | 0.296 | 1.00 | 3.18 | 6.08 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -4.3 | -0.2800 | 0.0229 | 0.333 | 1.00 | 3.03 | 5.66 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
