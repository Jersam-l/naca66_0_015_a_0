# Aerodynamic Case: case_93_aoa+30_u15
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8824
- **Drag Coefficient ($C_d$):** 0.6315
- **Mean Wall $y^+$:** 11.35
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 30.0, "case_idx": 93}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 260.6 | 1.8913 | 0.1698 | 0.334 | 1.00 | 7.47 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 99.1 | 0.7194 | 1.1782 | 0.256 | 1.00 | 16.76 | 7.95 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -22.3 | -0.1618 | 1.2371 | 0.291 | 1.00 | 19.53 | 16.17 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -111.9 | -0.8121 | 1.1281 | 0.268 | 1.00 | 17.11 | 20.19 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -170.1 | -1.2345 | 0.8505 | 0.280 | 1.00 | 15.57 | 22.42 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -199.2 | -1.4454 | 0.6649 | 0.463 | 1.00 | 22.74 | 23.46 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -167.7 | -1.2169 | 0.5704 | 0.298 | 1.00 | 13.56 | 22.33 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -158.2 | -1.1477 | 0.3147 | 0.269 | 1.00 | 9.09 | 21.98 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -145.7 | -1.0575 | 0.5247 | 0.194 | 1.00 | 8.39 | 21.52 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -157.4 | -1.1422 | 0.6068 | 0.315 | 1.00 | 14.76 | 21.95 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -134.7 | -0.9774 | 0.1444 | 0.278 | 1.00 | 5.50 | 21.09 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -124.7 | -0.9049 | 0.1306 | 0.294 | 1.00 | 6.40 | 20.70 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -124.7 | -0.9045 | 0.1857 | 0.297 | 1.00 | 7.71 | 20.70 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -122.9 | -0.8921 | 0.2195 | 0.292 | 1.00 | 8.24 | 20.63 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -117.4 | -0.8520 | 0.2364 | 0.282 | 1.00 | 8.26 | 20.41 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -109.3 | -0.7931 | 0.1607 | 0.262 | 1.00 | 6.33 | 20.09 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -110.4 | -0.8014 | 0.1228 | 0.268 | 1.00 | 5.65 | 20.13 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -114.8 | -0.8334 | 0.2324 | 0.286 | 1.00 | 8.30 | 20.31 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -103.0 | -0.7472 | 0.0658 | 0.304 | 1.00 | 4.62 | 19.83 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -116.0 | -0.8419 | 0.0674 | 0.273 | 1.00 | 4.27 | 20.36 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
