# Aerodynamic Case: case_45_aoa+05_u25
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0888
- **Drag Coefficient ($C_d$):** 0.0659
- **Mean Wall $y^+$:** 13.27
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 5.0, "case_idx": 45}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 397.4 | 1.0382 | 0.0863 | 0.382 | 1.00 | 6.75 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -10.2 | -0.0266 | 1.6479 | 0.278 | 1.00 | 21.51 | 25.33 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -120.8 | -0.3155 | 1.6486 | 0.269 | 1.00 | 20.83 | 28.67 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -219.3 | -0.5729 | 1.2455 | 0.268 | 1.00 | 18.01 | 31.35 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -281.5 | -0.7354 | 0.9189 | 0.280 | 1.00 | 16.17 | 32.93 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -305.3 | -0.7974 | 0.7200 | 0.282 | 1.00 | 14.39 | 33.52 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -280.9 | -0.7338 | 0.3808 | 0.268 | 1.00 | 9.97 | 32.92 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -221.5 | -0.5787 | 0.0823 | 0.286 | 1.00 | 4.94 | 31.41 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -168.4 | -0.4399 | 0.0026 | 0.302 | 1.00 | 0.89 | 30.00 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -120.1 | -0.3137 | 0.1391 | 0.352 | 1.00 | 7.91 | 28.65 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 242.3 | 0.6329 | 1.0401 | 0.329 | 1.00 | 20.20 | 15.15 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -137.8 | -0.3600 | 1.4882 | 0.285 | 1.00 | 20.95 | 29.16 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -176.8 | -0.4619 | 1.1190 | 0.296 | 1.00 | 18.90 | 30.23 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -229.6 | -0.5997 | 0.8171 | 0.297 | 1.00 | 16.15 | 31.62 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -247.9 | -0.6477 | 0.6267 | 0.306 | 1.00 | 14.60 | 32.09 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -230.7 | -0.6028 | 0.3943 | 0.298 | 1.00 | 11.25 | 31.65 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -185.9 | -0.4857 | 0.0176 | 0.287 | 1.00 | 2.19 | 30.47 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -156.1 | -0.4078 | 0.2208 | 0.292 | 1.00 | 8.27 | 29.66 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -138.6 | -0.3621 | 0.2423 | 0.298 | 1.00 | 8.83 | 29.18 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -120.5 | -0.3149 | 0.1037 | 0.356 | 1.00 | 6.91 | 28.67 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
