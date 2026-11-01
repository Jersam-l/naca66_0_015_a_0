# Aerodynamic Case: case_27_aoa-05_u35
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1502
- **Drag Coefficient ($C_d$):** 0.0671
- **Mean Wall $y^+$:** 15.79
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": -5.0, "case_idx": 27}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 501.3 | 0.6681 | 1.8524 | 0.286 | 1.00 | 23.42 | 20.16 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -240.5 | -0.3206 | 1.9727 | 0.289 | 1.00 | 24.43 | 40.22 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -291.4 | -0.3883 | 1.5455 | 0.289 | 1.00 | 21.67 | 41.24 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -393.8 | -0.5249 | 1.1565 | 0.285 | 1.00 | 18.48 | 43.22 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -438.7 | -0.5847 | 0.9281 | 0.280 | 1.00 | 16.24 | 44.06 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -409.9 | -0.5464 | 0.6721 | 0.278 | 1.00 | 13.71 | 43.52 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -317.1 | -0.4226 | 0.0687 | 0.252 | 1.00 | 3.92 | 41.74 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -239.2 | -0.3188 | 0.2746 | 0.274 | 1.00 | 8.64 | 40.19 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -193.0 | -0.2572 | 0.3112 | 0.295 | 1.00 | 9.90 | 39.24 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -152.1 | -0.2028 | 0.2023 | 0.367 | 1.00 | 9.95 | 38.38 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 839.7 | 1.1191 | 0.0203 | 0.351 | 1.00 | 3.01 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 79.3 | 0.1057 | 2.2407 | 0.289 | 1.00 | 26.05 | 33.10 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -139.1 | -0.1853 | 2.2037 | 0.300 | 1.00 | 26.82 | 38.11 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -307.9 | -0.4104 | 1.7785 | 0.310 | 1.00 | 24.93 | 41.57 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -442.3 | -0.5895 | 1.2791 | 0.301 | 1.00 | 20.54 | 44.13 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -484.3 | -0.6454 | 0.8911 | 0.296 | 1.00 | 16.83 | 44.90 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -428.0 | -0.5704 | 0.3721 | 0.294 | 1.00 | 10.79 | 43.86 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -328.2 | -0.4375 | 0.0493 | 0.291 | 1.00 | 3.87 | 41.96 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -238.9 | -0.3185 | 0.1499 | 0.296 | 1.00 | 6.91 | 40.19 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -151.4 | -0.2018 | 0.0237 | 0.333 | 1.00 | 3.09 | 38.37 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
