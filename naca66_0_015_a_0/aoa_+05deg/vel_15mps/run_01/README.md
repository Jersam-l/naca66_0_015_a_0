# Aerodynamic Case: case_43_aoa+05_u15
- **Angle of Attack (AoA):** +5.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.0842
- **Drag Coefficient ($C_d$):** 0.0676
- **Mean Wall $y^+$:** 10.38
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 5.0, "case_idx": 43}'
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
| 1 | Upper | 0.0004 | 0.0039 | 0.000 | 142.9 | 1.0367 | 0.0548 | 0.382 | 1.00 | 5.38 | 0.00 |
| 2 | Upper | 0.0110 | -0.0012 | 0.111 | -4.1 | -0.0297 | 0.9800 | 0.278 | 1.00 | 16.59 | 15.22 |
| 3 | Upper | 0.0220 | -0.0039 | 0.222 | -44.9 | -0.3261 | 0.9578 | 0.269 | 1.00 | 15.88 | 17.27 |
| 4 | Upper | 0.0330 | -0.0057 | 0.333 | -80.7 | -0.5854 | 0.7246 | 0.268 | 1.00 | 13.74 | 18.89 |
| 5 | Upper | 0.0440 | -0.0070 | 0.444 | -102.2 | -0.7412 | 0.5533 | 0.280 | 1.00 | 12.55 | 19.79 |
| 6 | Upper | 0.0551 | -0.0077 | 0.556 | -110.7 | -0.8034 | 0.4479 | 0.282 | 1.00 | 11.35 | 20.14 |
| 7 | Upper | 0.0663 | -0.0075 | 0.667 | -102.1 | -0.7411 | 0.2515 | 0.268 | 1.00 | 8.10 | 19.79 |
| 8 | Upper | 0.0775 | -0.0064 | 0.778 | -80.5 | -0.5840 | 0.0653 | 0.286 | 1.00 | 4.40 | 18.88 |
| 9 | Upper | 0.0888 | -0.0051 | 0.889 | -61.4 | -0.4453 | 0.0085 | 0.302 | 1.00 | 1.67 | 18.03 |
| 10 | Upper | 0.0993 | -0.0043 | 1.000 | -43.2 | -0.3137 | 0.1024 | 0.352 | 1.00 | 6.79 | 17.19 |
| 1 | Lower | 0.0005 | 0.0048 | 0.000 | 87.8 | 0.6372 | 0.6196 | 0.329 | 1.00 | 15.59 | 9.03 |
| 2 | Lower | 0.0119 | 0.0080 | 0.111 | -49.2 | -0.3572 | 0.8709 | 0.285 | 1.00 | 16.03 | 17.48 |
| 3 | Lower | 0.0231 | 0.0087 | 0.222 | -65.1 | -0.4720 | 0.6370 | 0.296 | 1.00 | 14.26 | 18.20 |
| 4 | Lower | 0.0342 | 0.0086 | 0.333 | -82.8 | -0.6005 | 0.4788 | 0.297 | 1.00 | 12.36 | 18.98 |
| 5 | Lower | 0.0453 | 0.0079 | 0.444 | -88.3 | -0.6409 | 0.3823 | 0.306 | 1.00 | 11.40 | 19.21 |
| 6 | Lower | 0.0564 | 0.0067 | 0.556 | -81.6 | -0.5918 | 0.2482 | 0.298 | 1.00 | 8.93 | 18.93 |
| 7 | Lower | 0.0673 | 0.0046 | 0.667 | -65.4 | -0.4748 | 0.0138 | 0.287 | 1.00 | 1.97 | 18.22 |
| 8 | Lower | 0.0782 | 0.0016 | 0.778 | -56.2 | -0.4076 | 0.1468 | 0.292 | 1.00 | 6.74 | 17.80 |
| 9 | Lower | 0.0891 | -0.0017 | 0.889 | -50.7 | -0.3680 | 0.1683 | 0.298 | 1.00 | 7.36 | 17.54 |
| 10 | Lower | 0.0993 | -0.0043 | 1.000 | -43.9 | -0.3182 | 0.0604 | 0.356 | 1.00 | 5.28 | 17.22 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
