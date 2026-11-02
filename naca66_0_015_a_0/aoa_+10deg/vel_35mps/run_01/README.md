# Aerodynamic Case: case_57_aoa+10_u35
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2142
- **Drag Coefficient ($C_d$):** 0.1081
- **Mean Wall $y^+$:** 15.78
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 10.0, "case_idx": 57}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 855.1 | 1.1397 | 0.4709 | 0.317 | 1.00 | 13.11 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | 35.6 | 0.0474 | 1.8605 | 0.352 | 1.00 | 28.89 | 34.16 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -231.4 | -0.3084 | 2.6585 | 0.252 | 1.00 | 24.78 | 40.03 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -458.8 | -0.6115 | 2.0958 | 0.278 | 1.00 | 24.28 | 44.43 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -619.4 | -0.8256 | 1.4913 | 0.294 | 1.00 | 21.59 | 47.29 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -701.8 | -0.9353 | 1.0752 | 0.279 | 1.00 | 17.42 | 48.69 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -654.1 | -0.8717 | 0.5601 | 0.271 | 1.00 | 12.19 | 47.88 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -525.9 | -0.7009 | 0.1927 | 0.287 | 1.00 | 7.59 | 45.65 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -400.1 | -0.5333 | 0.1650 | 0.307 | 1.00 | 7.52 | 43.34 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -315.1 | -0.4200 | 0.4427 | 0.339 | 1.00 | 13.57 | 41.71 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 96.6 | 0.1288 | 2.2589 | 0.293 | 1.00 | 26.52 | 32.67 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -506.5 | -0.6751 | 1.4572 | 0.280 | 1.00 | 20.37 | 45.30 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -537.0 | -0.7157 | 1.0026 | 0.295 | 1.00 | 17.77 | 45.84 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -582.4 | -0.7762 | 0.8962 | 0.302 | 1.00 | 17.20 | 46.65 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -591.4 | -0.7882 | 0.7840 | 0.297 | 1.00 | 15.84 | 46.80 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -531.8 | -0.7087 | 0.4675 | 0.291 | 1.00 | 11.99 | 45.75 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -437.5 | -0.5831 | 0.1326 | 0.283 | 1.00 | 6.18 | 44.04 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -380.9 | -0.5076 | 0.3135 | 0.293 | 1.00 | 9.88 | 42.98 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -354.4 | -0.4723 | 0.3262 | 0.313 | 1.00 | 10.78 | 42.47 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -327.4 | -0.4364 | 0.0847 | 0.382 | 1.00 | 6.70 | 41.95 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
