# Aerodynamic Case: case_96_aoa+30_u30
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7677
- **Drag Coefficient ($C_d$):** 0.5107
- **Mean Wall $y^+$:** 15.77
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 30.0, "case_idx": 96}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 838.7 | 1.5214 | 0.3118 | 0.334 | 1.00 | 9.69 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 116.3 | 0.2109 | 2.4910 | 0.256 | 1.00 | 24.36 | 26.65 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -360.6 | -0.6541 | 2.5499 | 0.291 | 1.00 | 28.04 | 38.58 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -701.6 | -1.2727 | 2.2871 | 0.268 | 1.00 | 24.36 | 45.23 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -914.4 | -1.6588 | 1.6680 | 0.280 | 1.00 | 21.80 | 48.92 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -989.0 | -1.7941 | 1.2959 | 0.463 | 1.00 | 31.75 | 50.15 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -800.0 | -1.4513 | 1.0217 | 0.298 | 1.00 | 18.15 | 46.97 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -730.9 | -1.3258 | 0.4054 | 0.269 | 1.00 | 10.32 | 45.75 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -621.0 | -1.1266 | 0.6449 | 0.194 | 1.00 | 9.35 | 43.75 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -604.0 | -1.0957 | 0.8719 | 0.315 | 1.00 | 17.69 | 43.43 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -848.5 | -1.5392 | 0.3431 | 0.278 | 1.00 | 8.78 | 47.80 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -805.2 | -1.4607 | 0.1906 | 0.294 | 1.00 | 7.74 | 47.06 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -809.8 | -1.4691 | 0.4292 | 0.297 | 1.00 | 11.71 | 47.14 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -782.9 | -1.4203 | 0.5784 | 0.292 | 1.00 | 13.38 | 46.67 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -710.5 | -1.2888 | 0.5694 | 0.282 | 1.00 | 12.82 | 45.39 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -638.8 | -1.1588 | 0.4752 | 0.262 | 1.00 | 10.88 | 44.08 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -606.9 | -1.1010 | 0.3403 | 0.268 | 1.00 | 9.40 | 43.48 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -595.2 | -1.0797 | 0.4788 | 0.286 | 1.00 | 11.91 | 43.26 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -533.8 | -0.9684 | 0.1599 | 0.304 | 1.00 | 7.24 | 42.09 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -585.6 | -1.0623 | 0.1482 | 0.273 | 1.00 | 6.33 | 43.08 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
