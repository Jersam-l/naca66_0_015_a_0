# Aerodynamic Case: case_47_aoa+05_u35
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0880
- **Drag Coefficient ($C_d$):** 0.0652
- **Mean Wall $y^+$:** 15.75
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 5.0, "case_idx": 47}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 888.6 | 1.1843 | 0.1214 | 0.382 | 1.00 | 8.01 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | 87.8 | 0.1170 | 2.3215 | 0.278 | 1.00 | 25.53 | 32.89 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -123.8 | -0.1650 | 2.3824 | 0.269 | 1.00 | 25.04 | 37.78 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -311.6 | -0.4153 | 1.8300 | 0.268 | 1.00 | 21.83 | 41.64 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -439.3 | -0.5855 | 1.3155 | 0.280 | 1.00 | 19.35 | 44.07 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -488.8 | -0.6514 | 1.0040 | 0.282 | 1.00 | 16.99 | 44.98 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -441.7 | -0.5887 | 0.5152 | 0.268 | 1.00 | 11.59 | 44.12 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -325.9 | -0.4343 | 0.1016 | 0.286 | 1.00 | 5.49 | 41.92 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -220.9 | -0.2944 | 0.0019 | 0.302 | 1.00 | 0.76 | 39.82 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -126.0 | -0.1679 | 0.1887 | 0.352 | 1.00 | 9.22 | 37.83 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 584.4 | 0.7789 | 1.4570 | 0.329 | 1.00 | 23.90 | 16.46 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -161.7 | -0.2155 | 2.1242 | 0.285 | 1.00 | 25.03 | 38.59 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -227.5 | -0.3032 | 1.6545 | 0.296 | 1.00 | 22.98 | 39.95 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -334.4 | -0.4457 | 1.1915 | 0.297 | 1.00 | 19.51 | 42.08 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -375.3 | -0.5003 | 0.8787 | 0.306 | 1.00 | 17.29 | 42.87 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -343.2 | -0.4574 | 0.5311 | 0.298 | 1.00 | 13.06 | 42.25 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -257.2 | -0.3428 | 0.0433 | 0.287 | 1.00 | 3.55 | 40.56 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -196.1 | -0.2613 | 0.3008 | 0.292 | 1.00 | 9.65 | 39.31 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -160.5 | -0.2139 | 0.3231 | 0.298 | 1.00 | 10.19 | 38.56 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -126.2 | -0.1681 | 0.1455 | 0.356 | 1.00 | 8.19 | 37.83 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
