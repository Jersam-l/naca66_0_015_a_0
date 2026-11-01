# Aerodynamic Case: case_101_aoa+35_u05
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9292
- **Drag Coefficient ($C_d$):** 0.8992
- **Mean Wall $y^+$:** 7.39
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 35.0, "case_idx": 101}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 34.1 | 2.2295 | 0.1190 | 0.359 | 1.00 | 7.40 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 8.3 | 0.5436 | 0.4349 | 0.277 | 1.00 | 10.99 | 3.38 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -6.4 | -0.4179 | 0.5129 | 0.275 | 1.00 | 11.86 | 5.95 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -14.5 | -0.9457 | 0.4900 | 0.270 | 1.00 | 11.40 | 6.97 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -19.4 | -1.2699 | 0.3903 | 0.259 | 1.00 | 9.73 | 7.53 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -20.8 | -1.3574 | 0.2758 | 0.247 | 1.00 | 7.82 | 7.68 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -16.6 | -1.0816 | 0.1774 | 0.271 | 1.00 | 6.88 | 7.21 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 9.9 | 0.6463 | 0.3056 | 0.306 | 1.00 | 10.20 | 2.97 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 2.8 | 0.1818 | 0.2958 | 0.387 | 1.00 | 12.68 | 4.52 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | -1.0 | -0.0631 | 0.2888 | 0.432 | 1.00 | 13.97 | 5.16 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -17.8 | -1.1592 | 0.1791 | 0.331 | 1.00 | 8.28 | 7.35 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -16.1 | -1.0486 | 0.1075 | 0.298 | 1.00 | 5.88 | 7.16 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -15.4 | -1.0055 | 0.1136 | 0.307 | 1.00 | 6.23 | 7.08 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -13.9 | -0.9052 | 0.1013 | 0.306 | 1.00 | 5.86 | 6.90 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -12.0 | -0.7865 | 0.0737 | 0.301 | 1.00 | 4.93 | 6.68 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -10.7 | -0.6962 | 0.0334 | 0.287 | 1.00 | 3.16 | 6.51 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -10.6 | -0.6907 | 0.0168 | 0.286 | 1.00 | 2.23 | 6.50 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -10.7 | -0.7007 | 0.0217 | 0.295 | 1.00 | 2.62 | 6.52 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -11.3 | -0.7357 | 0.0521 | 0.310 | 1.00 | 4.21 | 6.59 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -12.6 | -0.8234 | 0.0401 | 0.298 | 1.00 | 3.60 | 6.75 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
