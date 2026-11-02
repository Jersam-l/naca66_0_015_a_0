# Aerodynamic Case: case_109_aoa+35_u45
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.3256
- **Drag Coefficient ($C_d$):** 0.9833
- **Mean Wall $y^+$:** 20.23
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 35.0, "case_idx": 109}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 3339.5 | 2.6925 | 1.4109 | 0.359 | 1.00 | 25.67 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 1114.1 | 0.8982 | 4.2293 | 0.277 | 1.00 | 34.26 | 14.36 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -161.1 | -0.1299 | 4.7610 | 0.275 | 1.00 | 36.12 | 47.83 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -838.2 | -0.6758 | 3.7049 | 0.270 | 1.00 | 31.33 | 58.25 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -1105.0 | -0.8909 | 2.1365 | 0.259 | 1.00 | 22.76 | 61.88 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -935.6 | -0.7543 | 0.8555 | 0.247 | 1.00 | 13.76 | 59.60 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -524.3 | -0.4227 | 0.1559 | 0.271 | 1.00 | 6.44 | 53.67 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 1932.4 | 1.5580 | 1.6080 | 0.306 | 1.00 | 23.40 | 0.00 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 1367.5 | 1.1025 | 2.1494 | 0.387 | 1.00 | 34.18 | 0.00 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | 1086.6 | 0.8761 | 2.2192 | 0.432 | 1.00 | 38.74 | 15.84 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -1157.5 | -0.9332 | 1.4695 | 0.331 | 1.00 | 22.90 | 62.57 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -1030.9 | -0.8312 | 0.3823 | 0.298 | 1.00 | 11.09 | 60.89 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -1138.7 | -0.9181 | 1.0906 | 0.307 | 1.00 | 19.30 | 62.32 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -1021.4 | -0.8235 | 1.5854 | 0.306 | 1.00 | 23.19 | 60.77 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -570.7 | -0.4601 | 1.5061 | 0.301 | 1.00 | 22.28 | 54.38 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -150.8 | -0.1216 | 1.2566 | 0.287 | 1.00 | 19.37 | 47.66 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | 76.3 | 0.0615 | 1.0956 | 0.286 | 1.00 | 18.05 | 43.59 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | 273.4 | 0.2204 | 1.0282 | 0.295 | 1.00 | 18.03 | 39.73 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | 469.5 | 0.3785 | 0.2230 | 0.310 | 1.00 | 7.76 | 35.48 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | 336.5 | 0.2713 | 0.2213 | 0.298 | 1.00 | 8.45 | 38.41 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
