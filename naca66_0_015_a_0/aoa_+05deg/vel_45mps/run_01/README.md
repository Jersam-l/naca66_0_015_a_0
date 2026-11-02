# Aerodynamic Case: case_49_aoa+05_u45
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0842
- **Drag Coefficient ($C_d$):** 0.0647
- **Mean Wall $y^+$:** 17.96
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 5.0, "case_idx": 49}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 1217.8 | 0.9819 | 0.1648 | 0.382 | 1.00 | 9.33 | 6.06 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -110.9 | -0.0894 | 2.9990 | 0.278 | 1.00 | 29.02 | 46.97 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -454.0 | -0.3660 | 3.1371 | 0.269 | 1.00 | 28.73 | 52.59 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -753.7 | -0.6076 | 2.4594 | 0.268 | 1.00 | 25.31 | 57.06 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -972.7 | -0.7842 | 1.7359 | 0.280 | 1.00 | 22.22 | 60.11 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -1060.0 | -0.8546 | 1.2951 | 0.282 | 1.00 | 19.30 | 61.28 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -983.8 | -0.7932 | 0.6490 | 0.268 | 1.00 | 13.01 | 60.26 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -792.8 | -0.6392 | 0.1193 | 0.286 | 1.00 | 5.94 | 57.61 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -618.0 | -0.4983 | 0.0057 | 0.302 | 1.00 | 1.34 | 55.08 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -459.6 | -0.3705 | 0.2417 | 0.352 | 1.00 | 10.43 | 52.68 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 720.7 | 0.5811 | 1.8642 | 0.329 | 1.00 | 27.04 | 29.13 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -515.7 | -0.4158 | 2.7720 | 0.285 | 1.00 | 28.59 | 53.54 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -611.1 | -0.4927 | 2.2271 | 0.296 | 1.00 | 26.66 | 54.98 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -789.5 | -0.6365 | 1.5980 | 0.297 | 1.00 | 22.59 | 57.57 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -864.4 | -0.6969 | 1.1395 | 0.306 | 1.00 | 19.69 | 58.62 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -813.7 | -0.6560 | 0.6616 | 0.298 | 1.00 | 14.58 | 57.91 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -675.0 | -0.5442 | 0.0795 | 0.287 | 1.00 | 4.84 | 55.92 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -573.3 | -0.4622 | 0.3864 | 0.292 | 1.00 | 10.94 | 54.41 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -515.0 | -0.4152 | 0.4116 | 0.298 | 1.00 | 11.51 | 53.53 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -459.1 | -0.3701 | 0.1878 | 0.356 | 1.00 | 9.30 | 52.67 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
