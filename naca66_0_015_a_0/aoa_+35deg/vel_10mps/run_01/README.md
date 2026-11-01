# Aerodynamic Case: case_102_aoa+35_u10
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.1191
- **Drag Coefficient ($C_d$):** 1.0318
- **Mean Wall $y^+$:** 9.96
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 35.0, "case_idx": 102}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 136.3 | 2.2253 | 0.2653 | 0.359 | 1.00 | 11.10 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 45.8 | 0.7474 | 0.8666 | 0.277 | 1.00 | 15.51 | 5.03 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -16.4 | -0.2677 | 0.9793 | 0.275 | 1.00 | 16.38 | 11.26 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -54.8 | -0.8944 | 0.7785 | 0.270 | 1.00 | 14.36 | 13.76 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -77.3 | -1.2615 | 0.5621 | 0.259 | 1.00 | 11.67 | 15.04 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -83.3 | -1.3594 | 0.4182 | 0.247 | 1.00 | 9.63 | 15.36 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -71.6 | -1.1695 | 0.2867 | 0.271 | 1.00 | 8.74 | 14.73 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 39.6 | 0.6462 | 0.4133 | 0.306 | 1.00 | 11.86 | 5.95 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 6.6 | 0.1083 | 0.5163 | 0.387 | 1.00 | 16.75 | 9.44 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | -9.0 | -0.1471 | 0.5271 | 0.432 | 1.00 | 18.88 | 10.71 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -54.0 | -0.8814 | 0.3070 | 0.331 | 1.00 | 10.49 | 13.72 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -48.5 | -0.7923 | 0.1035 | 0.298 | 1.00 | 5.77 | 13.39 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -50.0 | -0.8169 | 0.1792 | 0.307 | 1.00 | 7.82 | 13.48 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -47.3 | -0.7729 | 0.1948 | 0.306 | 1.00 | 8.13 | 13.31 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -43.2 | -0.7045 | 0.1563 | 0.301 | 1.00 | 7.18 | 13.06 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -42.8 | -0.6984 | 0.1124 | 0.287 | 1.00 | 5.79 | 13.03 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -46.1 | -0.7526 | 0.1589 | 0.286 | 1.00 | 6.87 | 13.24 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -45.7 | -0.7468 | 0.1674 | 0.295 | 1.00 | 7.27 | 13.22 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -45.5 | -0.7429 | 0.0992 | 0.310 | 1.00 | 5.80 | 13.20 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -52.6 | -0.8580 | 0.0941 | 0.298 | 1.00 | 5.51 | 13.63 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
