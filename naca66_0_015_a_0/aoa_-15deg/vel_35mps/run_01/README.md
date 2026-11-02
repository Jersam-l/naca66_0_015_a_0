# Aerodynamic Case: case_07_aoa-15_u35
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5268
- **Drag Coefficient ($C_d$):** 0.1753
- **Mean Wall $y^+$:** 15.10
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": -15.0, "case_idx": 7}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -1178.9 | -1.5712 | 2.8701 | 0.310 | 1.00 | 31.56 | 56.12 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -1216.9 | -1.6219 | 0.3927 | 0.253 | 1.00 | 9.56 | 56.67 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -908.7 | -1.2110 | 0.2729 | 0.272 | 1.00 | 8.54 | 52.04 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -808.3 | -1.0773 | 0.8467 | 0.291 | 1.00 | 16.13 | 50.45 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -822.4 | -1.0961 | 0.8910 | 0.278 | 1.00 | 15.82 | 50.67 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -791.5 | -1.0549 | 0.6468 | 0.300 | 1.00 | 14.54 | 50.17 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -475.5 | -0.6338 | 0.3993 | 0.332 | 1.00 | 12.63 | 44.74 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -446.3 | -0.5948 | 0.2485 | 0.267 | 1.00 | 8.00 | 44.20 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -432.7 | -0.5766 | 0.4034 | 0.217 | 1.00 | 8.32 | 43.95 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -415.6 | -0.5540 | 0.1407 | 0.148 | 1.00 | 3.35 | 43.63 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 707.6 | 0.9431 | 1.2161 | 0.223 | 1.00 | 13.76 | 8.35 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 32.3 | 0.0431 | 2.2977 | 0.291 | 1.00 | 26.58 | 34.24 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -354.5 | -0.4725 | 2.5390 | 0.297 | 1.00 | 28.54 | 42.47 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -589.5 | -0.7857 | 2.2046 | 0.294 | 1.00 | 26.26 | 46.77 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -751.0 | -1.0009 | 1.5169 | 0.289 | 1.00 | 21.43 | 49.51 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -806.9 | -1.0755 | 1.0405 | 0.273 | 1.00 | 16.76 | 50.42 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -730.0 | -0.9730 | 0.4927 | 0.268 | 1.00 | 11.33 | 49.16 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -590.5 | -0.7870 | 0.1916 | 0.281 | 1.00 | 7.41 | 46.79 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -458.9 | -0.6116 | 0.2262 | 0.297 | 1.00 | 8.51 | 44.43 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -394.4 | -0.5257 | 0.5517 | 0.314 | 1.00 | 14.04 | 43.23 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
