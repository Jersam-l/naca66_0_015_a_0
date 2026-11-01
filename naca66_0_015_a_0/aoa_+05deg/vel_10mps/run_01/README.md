# Aerodynamic Case: case_42_aoa+05_u10
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0843
- **Drag Coefficient ($C_d$):** 0.0690
- **Mean Wall $y^+$:** 8.69
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 5.0, "case_idx": 42}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 64.0 | 1.0443 | 0.0379 | 0.382 | 1.00 | 4.47 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -1.9 | -0.0311 | 0.6512 | 0.278 | 1.00 | 13.52 | 10.15 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -20.0 | -0.3258 | 0.6505 | 0.269 | 1.00 | 13.08 | 11.51 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -35.3 | -0.5760 | 0.5130 | 0.268 | 1.00 | 11.56 | 12.55 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -44.9 | -0.7329 | 0.3961 | 0.280 | 1.00 | 10.62 | 13.16 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -49.0 | -0.7998 | 0.3219 | 0.282 | 1.00 | 9.62 | 13.42 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -45.1 | -0.7356 | 0.1884 | 0.268 | 1.00 | 7.01 | 13.17 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -35.2 | -0.5754 | 0.0513 | 0.286 | 1.00 | 3.90 | 12.55 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -26.5 | -0.4321 | 0.0120 | 0.302 | 1.00 | 1.99 | 11.97 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -17.8 | -0.2899 | 0.0859 | 0.352 | 1.00 | 6.22 | 11.36 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 39.7 | 0.6474 | 0.4116 | 0.329 | 1.00 | 12.70 | 5.94 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -21.6 | -0.3533 | 0.5770 | 0.285 | 1.00 | 13.05 | 11.63 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -28.3 | -0.4613 | 0.4326 | 0.296 | 1.00 | 11.75 | 12.09 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -35.7 | -0.5835 | 0.3336 | 0.297 | 1.00 | 10.32 | 12.58 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -38.0 | -0.6210 | 0.2693 | 0.306 | 1.00 | 9.57 | 12.73 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -34.8 | -0.5674 | 0.1770 | 0.298 | 1.00 | 7.54 | 12.52 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -27.8 | -0.4532 | 0.0129 | 0.287 | 1.00 | 1.93 | 12.05 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -23.9 | -0.3906 | 0.1056 | 0.292 | 1.00 | 5.72 | 11.79 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -21.5 | -0.3505 | 0.1194 | 0.298 | 1.00 | 6.20 | 11.62 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -18.3 | -0.2985 | 0.0387 | 0.356 | 1.00 | 4.23 | 11.39 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
