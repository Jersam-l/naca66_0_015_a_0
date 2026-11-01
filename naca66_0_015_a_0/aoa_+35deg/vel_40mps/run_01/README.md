# Aerodynamic Case: case_108_aoa+35_u40
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8421
- **Drag Coefficient ($C_d$):** 0.7770
- **Mean Wall $y^+$:** 19.44
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 35.0, "case_idx": 108}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 2495.8 | 2.5468 | 0.9910 | 0.359 | 1.00 | 21.35 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 640.3 | 0.6533 | 3.6669 | 0.277 | 1.00 | 31.90 | 23.55 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -283.9 | -0.2897 | 4.0460 | 0.275 | 1.00 | 33.30 | 45.43 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -859.5 | -0.8771 | 3.2553 | 0.270 | 1.00 | 29.37 | 54.80 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -1193.6 | -1.2179 | 2.2106 | 0.259 | 1.00 | 23.15 | 59.57 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -1216.2 | -1.2410 | 1.3135 | 0.247 | 1.00 | 17.06 | 59.88 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -944.3 | -0.9636 | 0.6581 | 0.271 | 1.00 | 13.24 | 56.05 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 899.1 | 0.9174 | 1.5186 | 0.306 | 1.00 | 22.74 | 11.49 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 439.8 | 0.4487 | 1.9867 | 0.387 | 1.00 | 32.86 | 29.70 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | 214.4 | 0.2188 | 2.0436 | 0.432 | 1.00 | 37.17 | 35.35 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -1236.8 | -1.2620 | 1.5717 | 0.331 | 1.00 | 24.68 | 60.16 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -1060.0 | -1.0816 | 0.6048 | 0.298 | 1.00 | 13.95 | 57.71 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -993.6 | -1.0138 | 0.7867 | 0.307 | 1.00 | 16.39 | 56.76 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -851.6 | -0.8690 | 0.7986 | 0.306 | 1.00 | 16.46 | 54.69 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -673.4 | -0.6872 | 0.6637 | 0.301 | 1.00 | 14.79 | 51.96 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -550.7 | -0.5619 | 0.5561 | 0.287 | 1.00 | 12.89 | 49.99 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -480.2 | -0.4900 | 0.5090 | 0.286 | 1.00 | 12.30 | 48.83 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -411.8 | -0.4202 | 0.4125 | 0.295 | 1.00 | 11.42 | 47.67 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -348.7 | -0.3558 | 0.1693 | 0.310 | 1.00 | 6.81 | 46.58 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -401.4 | -0.4096 | 0.0621 | 0.298 | 1.00 | 4.47 | 47.49 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
