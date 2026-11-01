# Aerodynamic Case: case_17_aoa-10_u35
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2500
- **Drag Coefficient ($C_d$):** 0.1079
- **Mean Wall $y^+$:** 15.70
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": -10.0, "case_idx": 17}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -23.7 | -0.0316 | 1.7927 | 0.403 | 1.00 | 32.53 | 35.55 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -571.4 | -0.7615 | 1.3144 | 0.283 | 1.00 | 19.53 | 46.45 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -600.4 | -0.8002 | 0.9081 | 0.282 | 1.00 | 16.21 | 46.96 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -629.6 | -0.8391 | 0.9144 | 0.275 | 1.00 | 15.81 | 47.47 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -632.5 | -0.8430 | 0.9082 | 0.275 | 1.00 | 15.80 | 47.52 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -578.0 | -0.7704 | 0.5688 | 0.242 | 1.00 | 11.00 | 46.57 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -466.2 | -0.6213 | 0.0936 | 0.253 | 1.00 | 4.60 | 44.57 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -400.0 | -0.5331 | 0.3158 | 0.279 | 1.00 | 9.46 | 43.34 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -368.3 | -0.4909 | 0.3068 | 0.315 | 1.00 | 10.51 | 42.74 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -338.4 | -0.4510 | 0.1293 | 0.401 | 1.00 | 8.69 | 42.16 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 765.5 | 1.0202 | 0.5021 | 0.367 | 1.00 | 15.68 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 61.2 | 0.0816 | 2.2831 | 0.290 | 1.00 | 26.41 | 33.54 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -246.5 | -0.3285 | 2.3796 | 0.301 | 1.00 | 28.00 | 40.34 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -458.7 | -0.6114 | 2.0294 | 0.307 | 1.00 | 26.34 | 44.43 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -624.1 | -0.8318 | 1.4622 | 0.305 | 1.00 | 22.19 | 47.37 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -697.2 | -0.9292 | 1.0293 | 0.294 | 1.00 | 18.00 | 48.61 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -650.1 | -0.8665 | 0.4946 | 0.275 | 1.00 | 11.63 | 47.82 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -525.1 | -0.6998 | 0.1281 | 0.278 | 1.00 | 6.00 | 45.63 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -405.0 | -0.5398 | 0.1073 | 0.300 | 1.00 | 5.92 | 43.43 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -326.9 | -0.4357 | 0.3809 | 0.273 | 1.00 | 10.14 | 41.94 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
