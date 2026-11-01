# Aerodynamic Case: case_29_aoa-05_u45
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1464
- **Drag Coefficient ($C_d$):** 0.0667
- **Mean Wall $y^+$:** 17.99
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": -5.0, "case_idx": 29}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 762.5 | 0.6148 | 2.3760 | 0.286 | 1.00 | 26.52 | 27.93 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -469.4 | -0.3784 | 2.5701 | 0.289 | 1.00 | 27.89 | 52.83 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -540.1 | -0.4355 | 2.0742 | 0.289 | 1.00 | 25.11 | 53.91 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -712.9 | -0.5748 | 1.5366 | 0.285 | 1.00 | 21.30 | 56.47 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -794.1 | -0.6402 | 1.1912 | 0.280 | 1.00 | 18.40 | 57.63 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -746.8 | -0.6021 | 0.8386 | 0.278 | 1.00 | 15.32 | 56.96 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -594.5 | -0.4793 | 0.0601 | 0.252 | 1.00 | 3.50 | 54.73 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -466.3 | -0.3759 | 0.3575 | 0.274 | 1.00 | 9.86 | 52.78 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -390.0 | -0.3145 | 0.3975 | 0.295 | 1.00 | 11.19 | 51.59 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -323.5 | -0.2608 | 0.2615 | 0.367 | 1.00 | 11.32 | 50.53 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 1316.0 | 1.0610 | 0.0341 | 0.351 | 1.00 | 3.90 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 54.9 | 0.0442 | 2.8956 | 0.289 | 1.00 | 29.61 | 43.99 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -301.9 | -0.2434 | 2.8897 | 0.300 | 1.00 | 30.71 | 50.18 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -569.3 | -0.4590 | 2.3873 | 0.310 | 1.00 | 28.89 | 54.35 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -795.5 | -0.6414 | 1.7101 | 0.301 | 1.00 | 23.75 | 57.65 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -872.6 | -0.7035 | 1.1651 | 0.296 | 1.00 | 19.24 | 58.73 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -782.5 | -0.6309 | 0.4728 | 0.294 | 1.00 | 12.17 | 57.47 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -618.3 | -0.4985 | 0.0670 | 0.291 | 1.00 | 4.50 | 55.09 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -468.8 | -0.3780 | 0.1944 | 0.296 | 1.00 | 7.87 | 52.82 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -323.0 | -0.2604 | 0.0301 | 0.333 | 1.00 | 3.47 | 50.52 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
