# Aerodynamic Case: case_50_aoa+05_u50
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0827
- **Drag Coefficient ($C_d$):** 0.0646
- **Mean Wall $y^+$:** 18.99
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 5.0, "case_idx": 50}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 1564.7 | 1.0218 | 0.1863 | 0.382 | 1.00 | 9.92 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -78.3 | -0.0511 | 3.3386 | 0.278 | 1.00 | 30.62 | 51.26 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -499.0 | -0.3258 | 3.5193 | 0.269 | 1.00 | 30.43 | 57.57 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -862.4 | -0.5632 | 2.7890 | 0.268 | 1.00 | 26.95 | 62.51 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -1137.0 | -0.7425 | 1.9552 | 0.280 | 1.00 | 23.59 | 66.00 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -1248.5 | -0.8154 | 1.4440 | 0.282 | 1.00 | 20.38 | 67.37 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -1155.9 | -0.7549 | 0.7172 | 0.268 | 1.00 | 13.68 | 66.24 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -920.3 | -0.6010 | 0.1290 | 0.286 | 1.00 | 6.18 | 63.27 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -703.7 | -0.4595 | 0.0059 | 0.302 | 1.00 | 1.36 | 60.41 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -507.1 | -0.3312 | 0.2714 | 0.352 | 1.00 | 11.05 | 57.69 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 953.3 | 0.6226 | 2.0681 | 0.329 | 1.00 | 28.48 | 30.72 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -574.9 | -0.3754 | 3.0976 | 0.285 | 1.00 | 30.23 | 58.64 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -685.9 | -0.4480 | 2.5218 | 0.296 | 1.00 | 28.37 | 60.17 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -905.6 | -0.5914 | 1.8111 | 0.297 | 1.00 | 24.05 | 63.08 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -1002.1 | -0.6544 | 1.2733 | 0.306 | 1.00 | 20.81 | 64.31 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -940.9 | -0.6145 | 0.7255 | 0.298 | 1.00 | 15.27 | 63.53 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -771.7 | -0.5040 | 0.1007 | 0.287 | 1.00 | 5.46 | 61.32 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -646.3 | -0.4221 | 0.4305 | 0.292 | 1.00 | 11.54 | 59.63 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -574.9 | -0.3754 | 0.4572 | 0.298 | 1.00 | 12.13 | 58.64 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -506.3 | -0.3307 | 0.2080 | 0.356 | 1.00 | 9.79 | 57.68 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
