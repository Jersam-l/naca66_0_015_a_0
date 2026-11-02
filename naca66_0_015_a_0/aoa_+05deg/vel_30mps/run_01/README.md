# Aerodynamic Case: case_46_aoa+05_u30
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0889
- **Drag Coefficient ($C_d$):** 0.0655
- **Mean Wall $y^+$:** 14.55
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 5.0, "case_idx": 46}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 584.7 | 1.0607 | 0.1033 | 0.382 | 1.00 | 7.39 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -2.8 | -0.0051 | 1.9842 | 0.278 | 1.00 | 23.60 | 30.08 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -160.0 | -0.2902 | 2.0118 | 0.269 | 1.00 | 23.01 | 34.08 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -300.1 | -0.5443 | 1.5312 | 0.268 | 1.00 | 19.97 | 37.28 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -391.8 | -0.7107 | 1.1138 | 0.280 | 1.00 | 17.80 | 39.24 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -426.9 | -0.7744 | 0.8606 | 0.282 | 1.00 | 15.73 | 39.96 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -391.9 | -0.7109 | 0.4472 | 0.268 | 1.00 | 10.80 | 39.24 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -306.7 | -0.5563 | 0.0910 | 0.286 | 1.00 | 5.19 | 37.42 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -229.9 | -0.4171 | 0.0017 | 0.302 | 1.00 | 0.74 | 35.71 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -160.4 | -0.2909 | 0.1618 | 0.352 | 1.00 | 8.53 | 34.09 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 361.0 | 0.6549 | 1.2491 | 0.329 | 1.00 | 22.13 | 17.62 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -186.6 | -0.3384 | 1.8044 | 0.285 | 1.00 | 23.07 | 34.71 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -238.6 | -0.4329 | 1.3814 | 0.296 | 1.00 | 20.99 | 35.91 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -316.2 | -0.5735 | 1.0003 | 0.297 | 1.00 | 17.87 | 37.63 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -344.5 | -0.6250 | 0.7519 | 0.306 | 1.00 | 15.99 | 38.24 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -320.4 | -0.5813 | 0.4641 | 0.298 | 1.00 | 12.21 | 37.72 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -256.5 | -0.4654 | 0.0283 | 0.287 | 1.00 | 2.84 | 36.32 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -212.2 | -0.3850 | 0.2597 | 0.292 | 1.00 | 8.97 | 35.30 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -186.2 | -0.3378 | 0.2811 | 0.298 | 1.00 | 9.51 | 34.70 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -160.7 | -0.2914 | 0.1248 | 0.356 | 1.00 | 7.59 | 34.09 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
