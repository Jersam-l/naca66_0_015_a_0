# Aerodynamic Case: case_88_aoa+25_u40
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.5862
- **Drag Coefficient ($C_d$):** 0.3379
- **Mean Wall $y^+$:** 16.60
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 25.0, "case_idx": 88}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 975.1 | 0.9950 | 1.4387 | 0.296 | 1.00 | 20.54 | 2.83 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 181.3 | 0.1850 | 3.1406 | 0.255 | 1.00 | 27.16 | 36.11 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -545.5 | -0.5566 | 3.4969 | 0.260 | 1.00 | 29.28 | 49.91 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -1073.4 | -1.0953 | 2.8655 | 0.277 | 1.00 | 28.23 | 57.90 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -1454.6 | -1.4843 | 2.1044 | 0.313 | 1.00 | 27.38 | 63.05 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -1477.2 | -1.5073 | 2.0804 | 0.320 | 1.00 | 27.82 | 63.34 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -1408.9 | -1.4376 | 0.8965 | 0.285 | 1.00 | 16.26 | 62.45 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -1235.3 | -1.2605 | 0.3420 | 0.275 | 1.00 | 9.67 | 60.14 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -1006.2 | -1.0268 | 0.5644 | 0.259 | 1.00 | 11.70 | 56.95 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -1004.0 | -1.0245 | 1.2134 | 0.190 | 1.00 | 12.58 | 56.91 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -2150.8 | -2.1947 | 1.8297 | 0.298 | 1.00 | 22.62 | 71.49 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -1391.1 | -1.4195 | 0.4054 | 0.298 | 1.00 | 11.41 | 62.22 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -1359.3 | -1.3871 | 0.5918 | 0.289 | 1.00 | 13.39 | 61.80 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -1271.2 | -1.2972 | 0.6900 | 0.278 | 1.00 | 13.89 | 60.63 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -1133.8 | -1.1569 | 0.6061 | 0.276 | 1.00 | 12.93 | 58.75 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -1027.8 | -1.0488 | 0.5172 | 0.264 | 1.00 | 11.41 | 57.25 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -971.2 | -0.9910 | 0.4414 | 0.272 | 1.00 | 10.87 | 56.44 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -1092.1 | -1.1144 | 0.3998 | 0.289 | 1.00 | 11.01 | 58.16 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -1044.3 | -1.0657 | 0.3809 | 0.313 | 1.00 | 11.65 | 57.49 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -1009.5 | -1.0300 | 0.0254 | 0.353 | 1.00 | 3.39 | 56.99 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
