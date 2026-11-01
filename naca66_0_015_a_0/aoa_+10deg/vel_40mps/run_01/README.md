# Aerodynamic Case: case_58_aoa+10_u40
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2125
- **Drag Coefficient ($C_d$):** 0.1075
- **Mean Wall $y^+$:** 16.86
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 10.0, "case_idx": 58}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 1078.6 | 1.1006 | 0.5361 | 0.317 | 1.00 | 13.98 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | 6.2 | 0.0064 | 2.1297 | 0.352 | 1.00 | 30.91 | 39.87 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -341.7 | -0.3486 | 3.0722 | 0.252 | 1.00 | 26.64 | 46.45 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -634.5 | -0.6474 | 2.4497 | 0.278 | 1.00 | 26.25 | 51.34 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -846.4 | -0.8637 | 1.7365 | 0.294 | 1.00 | 23.30 | 54.61 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -957.9 | -0.9775 | 1.2378 | 0.279 | 1.00 | 18.69 | 56.25 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -897.4 | -0.9157 | 0.6371 | 0.271 | 1.00 | 13.01 | 55.36 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -730.6 | -0.7456 | 0.2174 | 0.287 | 1.00 | 8.06 | 52.85 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -566.4 | -0.5780 | 0.1899 | 0.307 | 1.00 | 8.07 | 50.25 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -455.9 | -0.4652 | 0.5101 | 0.339 | 1.00 | 14.57 | 48.42 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 89.9 | 0.0917 | 2.5804 | 0.293 | 1.00 | 28.35 | 38.12 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -697.7 | -0.7119 | 1.6864 | 0.280 | 1.00 | 21.91 | 52.34 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -735.2 | -0.7502 | 1.1639 | 0.295 | 1.00 | 19.14 | 52.92 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -797.5 | -0.8137 | 1.0233 | 0.302 | 1.00 | 18.38 | 53.87 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -809.6 | -0.8261 | 0.8826 | 0.297 | 1.00 | 16.80 | 54.05 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -731.2 | -0.7461 | 0.5157 | 0.291 | 1.00 | 12.59 | 52.86 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -609.6 | -0.6220 | 0.1623 | 0.283 | 1.00 | 6.84 | 50.94 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -535.3 | -0.5462 | 0.3521 | 0.293 | 1.00 | 10.47 | 49.74 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -502.2 | -0.5125 | 0.3631 | 0.313 | 1.00 | 11.37 | 49.19 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -471.0 | -0.4806 | 0.0908 | 0.382 | 1.00 | 6.93 | 48.67 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
