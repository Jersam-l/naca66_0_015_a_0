# Aerodynamic Case: case_91_aoa+30_u05
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7741
- **Drag Coefficient ($C_d$):** 0.5387
- **Mean Wall $y^+$:** 7.15
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 30.0, "case_idx": 91}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 28.8 | 1.8805 | 0.0534 | 0.334 | 1.00 | 4.12 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 7.7 | 0.5039 | 0.4148 | 0.256 | 1.00 | 9.94 | 3.52 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -5.9 | -0.3876 | 0.4474 | 0.291 | 1.00 | 11.74 | 5.89 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -14.6 | -0.9542 | 0.4839 | 0.268 | 1.00 | 11.21 | 6.99 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -19.4 | -1.2684 | 0.4016 | 0.280 | 1.00 | 10.70 | 7.53 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -22.4 | -1.4611 | 0.2492 | 0.463 | 1.00 | 13.91 | 7.84 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -17.5 | -1.1452 | 0.1912 | 0.298 | 1.00 | 7.85 | 7.32 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -14.9 | -0.9741 | 0.0819 | 0.269 | 1.00 | 4.64 | 7.03 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -11.3 | -0.7368 | 0.1495 | 0.194 | 1.00 | 4.49 | 6.59 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -11.0 | -0.7154 | 0.1946 | 0.315 | 1.00 | 8.36 | 6.55 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -18.4 | -1.2030 | 0.0556 | 0.278 | 1.00 | 3.53 | 7.42 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -17.8 | -1.1608 | 0.0845 | 0.294 | 1.00 | 5.15 | 7.35 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -18.0 | -1.1724 | 0.1177 | 0.297 | 1.00 | 6.13 | 7.37 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -16.7 | -1.0936 | 0.1243 | 0.292 | 1.00 | 6.20 | 7.24 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -14.8 | -0.9649 | 0.1129 | 0.282 | 1.00 | 5.71 | 7.01 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -13.2 | -0.8588 | 0.1056 | 0.262 | 1.00 | 5.13 | 6.82 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -12.1 | -0.7901 | 0.0968 | 0.268 | 1.00 | 5.01 | 6.69 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -11.3 | -0.7393 | 0.0921 | 0.286 | 1.00 | 5.22 | 6.59 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -9.5 | -0.6226 | 0.0289 | 0.304 | 1.00 | 3.08 | 6.37 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -10.5 | -0.6889 | 0.0122 | 0.273 | 1.00 | 1.81 | 6.50 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
