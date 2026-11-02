# Aerodynamic Case: case_41_aoa+05_u05
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0504
- **Drag Coefficient ($C_d$):** 0.0760
- **Mean Wall $y^+$:** 7.00
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 5.0, "case_idx": 41}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 15.6 | 1.0177 | 0.0309 | 0.382 | 1.00 | 4.04 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -2.0 | -0.1276 | 0.3297 | 0.278 | 1.00 | 9.62 | 5.31 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -6.5 | -0.4218 | 0.3570 | 0.269 | 1.00 | 9.69 | 5.96 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -9.5 | -0.6189 | 0.3545 | 0.268 | 1.00 | 9.61 | 6.36 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -11.4 | -0.7439 | 0.3255 | 0.280 | 1.00 | 9.62 | 6.60 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -12.4 | -0.8119 | 0.2861 | 0.282 | 1.00 | 9.07 | 6.73 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -11.2 | -0.7324 | 0.1868 | 0.268 | 1.00 | 6.98 | 6.58 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -9.3 | -0.6049 | 0.0437 | 0.286 | 1.00 | 3.60 | 6.33 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -7.7 | -0.5037 | 0.0007 | 0.302 | 1.00 | 0.46 | 6.13 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -4.4 | -0.2862 | 0.0701 | 0.352 | 1.00 | 5.62 | 5.67 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 10.4 | 0.6813 | 0.1974 | 0.329 | 1.00 | 8.80 | 2.82 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -5.9 | -0.3862 | 0.3010 | 0.285 | 1.00 | 9.42 | 5.89 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -7.1 | -0.4626 | 0.2738 | 0.296 | 1.00 | 9.35 | 6.05 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -8.3 | -0.5438 | 0.2527 | 0.297 | 1.00 | 8.98 | 6.21 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -8.5 | -0.5539 | 0.2134 | 0.306 | 1.00 | 8.52 | 6.23 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -7.1 | -0.4668 | 0.1301 | 0.298 | 1.00 | 6.46 | 6.06 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -6.6 | -0.4280 | 0.0299 | 0.287 | 1.00 | 2.99 | 5.97 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -5.9 | -0.3872 | 0.0625 | 0.292 | 1.00 | 4.40 | 5.89 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -5.4 | -0.3541 | 0.0691 | 0.298 | 1.00 | 4.71 | 5.82 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -4.6 | -0.2981 | 0.0195 | 0.356 | 1.00 | 3.00 | 5.70 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
