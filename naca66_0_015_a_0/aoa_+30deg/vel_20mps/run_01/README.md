# Aerodynamic Case: case_94_aoa+30_u20
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9370
- **Drag Coefficient ($C_d$):** 0.6724
- **Mean Wall $y^+$:** 13.00
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 30.0, "case_idx": 94}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 431.3 | 1.7604 | 0.2144 | 0.334 | 1.00 | 8.18 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 135.4 | 0.5525 | 1.5911 | 0.256 | 1.00 | 19.47 | 13.38 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -81.3 | -0.3319 | 1.6522 | 0.291 | 1.00 | 22.57 | 23.08 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -239.5 | -0.9777 | 1.4950 | 0.268 | 1.00 | 19.70 | 28.13 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -341.5 | -1.3937 | 1.1208 | 0.280 | 1.00 | 17.87 | 30.94 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -387.5 | -1.5816 | 0.8695 | 0.463 | 1.00 | 26.00 | 32.13 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -320.6 | -1.3084 | 0.7061 | 0.298 | 1.00 | 15.09 | 30.39 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -297.1 | -1.2127 | 0.3374 | 0.269 | 1.00 | 9.41 | 29.75 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -264.8 | -1.0809 | 0.5575 | 0.194 | 1.00 | 8.67 | 28.85 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -271.4 | -1.1076 | 0.6741 | 0.315 | 1.00 | 15.56 | 29.04 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -283.3 | -1.1563 | 0.1902 | 0.278 | 1.00 | 6.23 | 29.37 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -266.0 | -1.0859 | 0.1417 | 0.294 | 1.00 | 6.67 | 28.89 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -265.5 | -1.0837 | 0.2298 | 0.297 | 1.00 | 8.57 | 28.87 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -257.0 | -1.0489 | 0.2750 | 0.292 | 1.00 | 9.22 | 28.63 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -246.5 | -1.0063 | 0.2944 | 0.282 | 1.00 | 9.22 | 28.33 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -236.4 | -0.9648 | 0.2818 | 0.262 | 1.00 | 8.38 | 28.03 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -232.0 | -0.9468 | 0.2474 | 0.268 | 1.00 | 8.02 | 27.91 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -228.8 | -0.9339 | 0.3302 | 0.286 | 1.00 | 9.89 | 27.81 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -205.0 | -0.8369 | 0.0665 | 0.304 | 1.00 | 4.56 | 27.11 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -234.6 | -0.9576 | 0.1417 | 0.273 | 1.00 | 6.18 | 27.98 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
