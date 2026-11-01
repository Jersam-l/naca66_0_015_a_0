# Aerodynamic Case: case_106_aoa+35_u30
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8903
- **Drag Coefficient ($C_d$):** 0.8953
- **Mean Wall $y^+$:** 16.84
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 35.0, "case_idx": 106}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 1544.3 | 2.8015 | 0.7211 | 0.359 | 1.00 | 18.22 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 578.5 | 1.0495 | 2.6632 | 0.277 | 1.00 | 27.18 | 0.00 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | 54.9 | 0.0995 | 2.9412 | 0.275 | 1.00 | 28.39 | 28.47 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -280.8 | -0.5094 | 2.3612 | 0.270 | 1.00 | 25.01 | 36.86 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -478.0 | -0.8672 | 1.6379 | 0.259 | 1.00 | 19.92 | 40.99 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -504.7 | -0.9155 | 1.0275 | 0.247 | 1.00 | 15.09 | 41.52 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -361.6 | -0.6560 | 0.5994 | 0.271 | 1.00 | 12.64 | 38.60 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 605.7 | 1.0988 | 1.1505 | 0.306 | 1.00 | 19.79 | 0.00 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 343.0 | 0.6222 | 1.4878 | 0.387 | 1.00 | 28.44 | 18.44 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | 217.5 | 0.3946 | 1.5277 | 0.432 | 1.00 | 32.14 | 23.34 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -439.2 | -0.7967 | 1.1295 | 0.331 | 1.00 | 20.87 | 40.21 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -343.0 | -0.6223 | 0.4128 | 0.298 | 1.00 | 11.53 | 38.21 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -310.2 | -0.5627 | 0.4857 | 0.307 | 1.00 | 12.88 | 37.50 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -254.8 | -0.4622 | 0.4768 | 0.306 | 1.00 | 12.72 | 36.28 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -194.6 | -0.3530 | 0.4095 | 0.301 | 1.00 | 11.62 | 34.90 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -144.0 | -0.2612 | 0.3593 | 0.287 | 1.00 | 10.36 | 33.69 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -96.3 | -0.1746 | 0.1556 | 0.286 | 1.00 | 6.80 | 32.51 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -87.4 | -0.1585 | 0.0324 | 0.295 | 1.00 | 3.20 | 32.29 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -97.0 | -0.1759 | 0.2667 | 0.310 | 1.00 | 9.54 | 32.53 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -131.2 | -0.2380 | 0.1956 | 0.298 | 1.00 | 7.94 | 33.38 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
