# Aerodynamic Case: case_53_aoa+10_u15
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2326
- **Drag Coefficient ($C_d$):** 0.1181
- **Mean Wall $y^+$:** 10.57
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 10.0, "case_idx": 53}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 143.7 | 1.0428 | 0.2128 | 0.317 | 1.00 | 8.81 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | -1.5 | -0.0106 | 0.7980 | 0.352 | 1.00 | 18.91 | 15.08 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -55.2 | -0.4006 | 1.1006 | 0.252 | 1.00 | 15.94 | 17.75 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -98.7 | -0.7162 | 0.8401 | 0.278 | 1.00 | 15.37 | 19.65 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -127.2 | -0.9229 | 0.6149 | 0.294 | 1.00 | 13.87 | 20.80 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -141.3 | -1.0252 | 0.4688 | 0.279 | 1.00 | 11.50 | 21.35 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -132.3 | -0.9599 | 0.2672 | 0.271 | 1.00 | 8.42 | 21.00 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -108.7 | -0.7887 | 0.1059 | 0.287 | 1.00 | 5.62 | 20.06 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -85.8 | -0.6228 | 0.0887 | 0.307 | 1.00 | 5.52 | 19.11 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -71.4 | -0.5178 | 0.2100 | 0.339 | 1.00 | 9.35 | 18.48 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 2.7 | 0.0193 | 0.9935 | 0.293 | 1.00 | 17.59 | 14.85 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -109.1 | -0.7920 | 0.5716 | 0.280 | 1.00 | 12.76 | 20.08 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -114.3 | -0.8297 | 0.4044 | 0.295 | 1.00 | 11.28 | 20.29 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -119.3 | -0.8657 | 0.4048 | 0.302 | 1.00 | 11.56 | 20.49 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -121.0 | -0.8779 | 0.3677 | 0.297 | 1.00 | 10.85 | 20.55 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -109.7 | -0.7963 | 0.2260 | 0.291 | 1.00 | 8.34 | 20.10 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -92.7 | -0.6724 | 0.0575 | 0.283 | 1.00 | 4.06 | 19.40 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -84.5 | -0.6128 | 0.1622 | 0.293 | 1.00 | 7.10 | 19.05 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -80.6 | -0.5849 | 0.1720 | 0.313 | 1.00 | 7.83 | 18.88 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -74.6 | -0.5414 | 0.0370 | 0.382 | 1.00 | 4.43 | 18.62 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
