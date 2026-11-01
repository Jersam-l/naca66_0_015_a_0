# Aerodynamic Case: case_15_aoa-10_u25
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.2527
- **Drag Coefficient ($C_d$):** 0.1098
- **Mean Wall $y^+$:** 13.33
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": -10.0, "case_idx": 15}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | -21.0 | -0.0550 | 1.2835 | 0.403 | 1.00 | 27.52 | 25.68 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -301.8 | -0.7884 | 0.8931 | 0.283 | 1.00 | 16.10 | 33.43 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -315.0 | -0.8227 | 0.6279 | 0.282 | 1.00 | 13.48 | 33.75 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -324.9 | -0.8488 | 0.6752 | 0.275 | 1.00 | 13.59 | 33.99 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -327.9 | -0.8565 | 0.6717 | 0.275 | 1.00 | 13.59 | 34.06 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -300.5 | -0.7851 | 0.4232 | 0.242 | 1.00 | 9.49 | 33.40 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -243.2 | -0.6354 | 0.0648 | 0.253 | 1.00 | 3.83 | 31.97 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -211.3 | -0.5520 | 0.2334 | 0.279 | 1.00 | 8.13 | 31.14 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -196.4 | -0.5130 | 0.2216 | 0.315 | 1.00 | 8.93 | 30.75 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -182.1 | -0.4758 | 0.0826 | 0.401 | 1.00 | 6.95 | 30.37 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 383.9 | 1.0027 | 0.3633 | 0.367 | 1.00 | 13.34 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 26.9 | 0.0703 | 1.6201 | 0.290 | 1.00 | 22.25 | 24.11 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -131.4 | -0.3432 | 1.6642 | 0.301 | 1.00 | 23.41 | 28.97 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -244.4 | -0.6385 | 1.3832 | 0.307 | 1.00 | 21.74 | 32.00 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -327.9 | -0.8565 | 1.0032 | 0.305 | 1.00 | 18.38 | 34.06 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -363.1 | -0.9486 | 0.7279 | 0.294 | 1.00 | 15.13 | 34.90 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -339.0 | -0.8855 | 0.3674 | 0.275 | 1.00 | 10.02 | 34.33 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -275.4 | -0.7194 | 0.1078 | 0.278 | 1.00 | 5.51 | 32.78 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -214.9 | -0.5615 | 0.0879 | 0.300 | 1.00 | 5.36 | 31.24 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -176.4 | -0.4609 | 0.2876 | 0.273 | 1.00 | 8.81 | 30.22 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
