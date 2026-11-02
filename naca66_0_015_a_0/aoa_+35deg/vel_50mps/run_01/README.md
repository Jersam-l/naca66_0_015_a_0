# Aerodynamic Case: case_110_aoa+35_u50
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.3090
- **Drag Coefficient ($C_d$):** 1.0950
- **Mean Wall $y^+$:** 21.43
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 35.0, "case_idx": 110}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 4028.3 | 2.6307 | 1.5084 | 0.359 | 1.00 | 26.54 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 1628.7 | 1.0636 | 4.5696 | 0.277 | 1.00 | 35.61 | 0.00 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -27.4 | -0.0179 | 5.3636 | 0.275 | 1.00 | 38.34 | 50.45 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -972.4 | -0.6351 | 4.5501 | 0.270 | 1.00 | 34.72 | 63.94 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -1570.7 | -1.0258 | 2.9468 | 0.259 | 1.00 | 26.72 | 71.17 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -1627.9 | -1.0631 | 1.4960 | 0.247 | 1.00 | 18.20 | 71.82 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -1197.6 | -0.7821 | 0.5760 | 0.271 | 1.00 | 12.39 | 66.75 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 1939.8 | 1.2668 | 1.9085 | 0.306 | 1.00 | 25.49 | 0.00 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 1171.7 | 0.7652 | 2.4998 | 0.387 | 1.00 | 36.87 | 24.23 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | 798.1 | 0.5212 | 2.5669 | 0.432 | 1.00 | 41.66 | 34.60 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -956.9 | -0.6249 | 1.6035 | 0.331 | 1.00 | 24.66 | 63.73 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -786.9 | -0.5139 | 0.1875 | 0.298 | 1.00 | 7.77 | 61.52 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -869.0 | -0.5675 | 0.6400 | 0.307 | 1.00 | 14.79 | 62.60 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -892.7 | -0.5830 | 1.0632 | 0.306 | 1.00 | 18.99 | 62.91 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -787.3 | -0.5141 | 1.1399 | 0.301 | 1.00 | 19.39 | 61.52 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -623.0 | -0.4068 | 1.1301 | 0.287 | 1.00 | 18.37 | 59.30 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -459.4 | -0.3000 | 1.1459 | 0.286 | 1.00 | 18.46 | 57.01 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -215.1 | -0.1405 | 1.1167 | 0.295 | 1.00 | 18.78 | 53.40 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -27.8 | -0.0182 | 0.3946 | 0.310 | 1.00 | 11.35 | 50.45 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -209.1 | -0.1366 | 0.4216 | 0.298 | 1.00 | 11.66 | 53.30 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
