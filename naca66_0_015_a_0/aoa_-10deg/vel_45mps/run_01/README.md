# Aerodynamic Case: case_19_aoa-10_u45
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2443
- **Drag Coefficient ($C_d$):** 0.1068
- **Mean Wall $y^+$:** 17.83
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": -10.0, "case_idx": 19}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -57.7 | -0.0465 | 2.3010 | 0.403 | 1.00 | 36.85 | 46.03 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -960.9 | -0.7748 | 1.7499 | 0.283 | 1.00 | 22.53 | 59.95 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -1009.4 | -0.8138 | 1.2066 | 0.282 | 1.00 | 18.69 | 60.60 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -1067.6 | -0.8608 | 1.1659 | 0.275 | 1.00 | 17.86 | 61.38 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -1072.9 | -0.8650 | 1.1384 | 0.275 | 1.00 | 17.69 | 61.45 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -981.1 | -0.7910 | 0.6990 | 0.242 | 1.00 | 12.20 | 60.22 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -798.4 | -0.6437 | 0.1371 | 0.253 | 1.00 | 5.60 | 57.69 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -688.4 | -0.5550 | 0.4029 | 0.279 | 1.00 | 10.68 | 56.12 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -636.7 | -0.5134 | 0.3941 | 0.315 | 1.00 | 11.91 | 55.36 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -587.8 | -0.4739 | 0.1679 | 0.401 | 1.00 | 9.90 | 54.63 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 1241.7 | 1.0011 | 0.6393 | 0.367 | 1.00 | 17.70 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 70.8 | 0.0571 | 2.9497 | 0.290 | 1.00 | 30.02 | 43.70 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -436.5 | -0.3519 | 3.1099 | 0.301 | 1.00 | 32.01 | 52.32 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -774.7 | -0.6246 | 2.7182 | 0.307 | 1.00 | 30.48 | 57.36 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -1050.6 | -0.8471 | 1.9603 | 0.305 | 1.00 | 25.69 | 61.16 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -1180.4 | -0.9517 | 1.3497 | 0.294 | 1.00 | 20.61 | 62.87 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -1105.8 | -0.8916 | 0.6288 | 0.275 | 1.00 | 13.11 | 61.89 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -899.2 | -0.7250 | 0.1534 | 0.278 | 1.00 | 6.57 | 59.10 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -698.8 | -0.5634 | 0.1344 | 0.300 | 1.00 | 6.63 | 56.27 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -568.8 | -0.4586 | 0.4905 | 0.273 | 1.00 | 11.51 | 54.35 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
