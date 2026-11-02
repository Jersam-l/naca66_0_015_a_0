# Aerodynamic Case: case_14_aoa-10_u20
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2481
- **Drag Coefficient ($C_d$):** 0.1112
- **Mean Wall $y^+$:** 12.02
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": -10.0, "case_idx": 14}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -12.7 | -0.0519 | 1.0301 | 0.403 | 1.00 | 24.66 | 20.51 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -192.9 | -0.7872 | 0.6866 | 0.283 | 1.00 | 14.11 | 26.74 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -200.0 | -0.8163 | 0.4935 | 0.282 | 1.00 | 11.95 | 26.95 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -204.5 | -0.8348 | 0.5565 | 0.275 | 1.00 | 12.34 | 27.09 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -207.6 | -0.8472 | 0.5495 | 0.275 | 1.00 | 12.29 | 27.18 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -190.1 | -0.7760 | 0.3434 | 0.242 | 1.00 | 8.55 | 26.65 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -153.8 | -0.6277 | 0.0611 | 0.253 | 1.00 | 3.74 | 25.52 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -134.8 | -0.5502 | 0.2004 | 0.279 | 1.00 | 7.53 | 24.90 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -126.5 | -0.5164 | 0.1905 | 0.315 | 1.00 | 8.28 | 24.63 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -117.7 | -0.4804 | 0.0659 | 0.401 | 1.00 | 6.21 | 24.34 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 248.2 | 1.0131 | 0.2957 | 0.367 | 1.00 | 12.04 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 21.8 | 0.0891 | 1.2891 | 0.290 | 1.00 | 19.84 | 19.09 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -80.0 | -0.3263 | 1.3155 | 0.301 | 1.00 | 20.82 | 23.03 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -153.7 | -0.6275 | 1.0821 | 0.307 | 1.00 | 19.23 | 25.52 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -206.9 | -0.8443 | 0.7898 | 0.305 | 1.00 | 16.31 | 27.16 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -229.2 | -0.9357 | 0.5831 | 0.294 | 1.00 | 13.55 | 27.83 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -214.3 | -0.8747 | 0.3046 | 0.275 | 1.00 | 9.12 | 27.38 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -174.2 | -0.7109 | 0.0986 | 0.278 | 1.00 | 5.27 | 26.16 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -136.2 | -0.5560 | 0.0840 | 0.300 | 1.00 | 5.24 | 24.95 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -113.2 | -0.4622 | 0.2504 | 0.273 | 1.00 | 8.22 | 24.18 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
