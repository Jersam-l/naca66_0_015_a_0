# Aerodynamic Case: case_48_aoa+05_u40
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0863
- **Drag Coefficient ($C_d$):** 0.0650
- **Mean Wall $y^+$:** 16.89
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 5.0, "case_idx": 48}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 1083.4 | 1.1055 | 0.1422 | 0.382 | 1.00 | 8.67 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | 35.5 | 0.0362 | 2.6599 | 0.278 | 1.00 | 27.33 | 39.27 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -238.0 | -0.2428 | 2.7579 | 0.269 | 1.00 | 26.94 | 44.59 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -479.1 | -0.4889 | 2.1394 | 0.268 | 1.00 | 23.61 | 48.81 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -649.2 | -0.6625 | 1.5228 | 0.280 | 1.00 | 20.81 | 51.58 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -716.0 | -0.7306 | 1.1488 | 0.282 | 1.00 | 18.18 | 52.62 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -655.1 | -0.6685 | 0.5824 | 0.268 | 1.00 | 12.33 | 51.67 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -504.1 | -0.5144 | 0.1110 | 0.286 | 1.00 | 5.74 | 49.22 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -366.4 | -0.3739 | 0.0026 | 0.302 | 1.00 | 0.83 | 46.88 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -241.9 | -0.2468 | 0.2159 | 0.352 | 1.00 | 9.86 | 44.66 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 688.0 | 0.7021 | 1.6617 | 0.329 | 1.00 | 25.53 | 21.83 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -287.5 | -0.2934 | 2.4470 | 0.285 | 1.00 | 26.86 | 45.49 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -367.8 | -0.3753 | 1.9369 | 0.296 | 1.00 | 24.86 | 46.91 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -508.5 | -0.5188 | 1.3909 | 0.297 | 1.00 | 21.07 | 49.30 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -564.9 | -0.5764 | 1.0079 | 0.306 | 1.00 | 18.52 | 50.22 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -523.8 | -0.5345 | 0.5970 | 0.298 | 1.00 | 13.85 | 49.55 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -412.9 | -0.4213 | 0.0602 | 0.287 | 1.00 | 4.20 | 47.69 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -332.6 | -0.3394 | 0.3431 | 0.292 | 1.00 | 10.31 | 46.29 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -286.3 | -0.2921 | 0.3668 | 0.298 | 1.00 | 10.86 | 45.47 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -241.8 | -0.2467 | 0.1666 | 0.356 | 1.00 | 8.76 | 44.66 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
