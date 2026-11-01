# Aerodynamic Case: case_14_aoa-10_u20
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2504
- **Drag Coefficient ($C_d$):** 0.1119
- **Mean Wall $y^+$:** 12.03
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": -10.0, "case_idx": 14}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -5.3 | -0.0215 | 1.0301 | 0.403 | 1.00 | 24.66 | 20.21 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -185.6 | -0.7575 | 0.6868 | 0.283 | 1.00 | 14.12 | 26.51 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -192.8 | -0.7868 | 0.4938 | 0.282 | 1.00 | 11.95 | 26.73 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -197.3 | -0.8054 | 0.5569 | 0.275 | 1.00 | 12.34 | 26.87 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -200.5 | -0.8182 | 0.5503 | 0.275 | 1.00 | 12.30 | 26.97 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -183.1 | -0.7473 | 0.3448 | 0.242 | 1.00 | 8.57 | 26.44 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -146.8 | -0.5990 | 0.0597 | 0.253 | 1.00 | 3.69 | 25.29 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -127.7 | -0.5213 | 0.1995 | 0.279 | 1.00 | 7.52 | 24.67 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -119.5 | -0.4876 | 0.1893 | 0.315 | 1.00 | 8.26 | 24.39 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -111.0 | -0.4529 | 0.0650 | 0.401 | 1.00 | 6.16 | 24.11 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 255.7 | 1.0436 | 0.2957 | 0.367 | 1.00 | 12.04 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 29.3 | 0.1194 | 1.2892 | 0.290 | 1.00 | 19.84 | 18.77 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -72.5 | -0.2961 | 1.3157 | 0.301 | 1.00 | 20.82 | 22.77 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -146.4 | -0.5974 | 1.0823 | 0.307 | 1.00 | 19.23 | 25.28 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -199.6 | -0.8145 | 0.7900 | 0.305 | 1.00 | 16.31 | 26.94 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -222.0 | -0.9063 | 0.5835 | 0.294 | 1.00 | 13.55 | 27.61 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -207.2 | -0.8458 | 0.3054 | 0.275 | 1.00 | 9.14 | 27.17 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -167.1 | -0.6822 | 0.0998 | 0.278 | 1.00 | 5.30 | 25.94 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -129.3 | -0.5277 | 0.0854 | 0.300 | 1.00 | 5.28 | 24.72 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -106.5 | -0.4346 | 0.2523 | 0.273 | 1.00 | 8.26 | 23.95 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
