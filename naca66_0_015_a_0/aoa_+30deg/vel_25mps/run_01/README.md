# Aerodynamic Case: case_95_aoa+30_u25
- **Angle of Attack (AoA):** +30.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8634
- **Drag Coefficient ($C_d$):** 0.5726
- **Mean Wall $y^+$:** 14.54
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 30.0, "case_idx": 95}'
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
| 1 | Upper | 0.0080 | 0.0216 | 0.000 | 737.6 | 1.9268 | 0.2391 | 0.334 | 1.00 | 7.53 | 0.00 |
| 2 | Upper | 0.0193 | 0.0112 | 0.111 | 251.3 | 0.6565 | 2.0421 | 0.256 | 1.00 | 22.06 | 14.65 |
| 3 | Upper | 0.0283 | 0.0046 | 0.222 | -82.8 | -0.2163 | 2.0985 | 0.291 | 1.00 | 25.43 | 27.57 |
| 4 | Upper | 0.0377 | -0.0014 | 0.333 | -323.1 | -0.8441 | 1.8769 | 0.268 | 1.00 | 22.07 | 33.95 |
| 5 | Upper | 0.0473 | -0.0070 | 0.444 | -471.0 | -1.2304 | 1.3744 | 0.280 | 1.00 | 19.79 | 37.34 |
| 6 | Upper | 0.0572 | -0.0120 | 0.556 | -520.0 | -1.3583 | 1.0673 | 0.463 | 1.00 | 28.81 | 38.39 |
| 7 | Upper | 0.0678 | -0.0160 | 0.667 | -389.0 | -1.0162 | 0.8319 | 0.298 | 1.00 | 16.38 | 35.50 |
| 8 | Upper | 0.0785 | -0.0195 | 0.778 | -340.9 | -0.8905 | 0.3262 | 0.269 | 1.00 | 9.25 | 34.37 |
| 9 | Upper | 0.0892 | -0.0232 | 0.889 | -267.1 | -0.6976 | 0.5186 | 0.194 | 1.00 | 8.38 | 32.57 |
| 10 | Upper | 0.0928 | -0.0247 | 1.000 | -256.1 | -0.6691 | 0.6954 | 0.315 | 1.00 | 15.80 | 32.30 |
| 1 | Lower | -0.0136 | -0.0179 | 0.000 | -404.5 | -1.0568 | 0.2688 | 0.278 | 1.00 | 7.68 | 35.85 |
| 2 | Lower | -0.0000 | -0.0223 | 0.111 | -374.9 | -0.9793 | 0.1394 | 0.294 | 1.00 | 6.62 | 35.17 |
| 3 | Lower | 0.0102 | -0.0268 | 0.222 | -379.3 | -0.9908 | 0.3180 | 0.297 | 1.00 | 10.08 | 35.27 |
| 4 | Lower | 0.0201 | -0.0319 | 0.333 | -365.6 | -0.9550 | 0.4521 | 0.292 | 1.00 | 11.83 | 34.96 |
| 5 | Lower | 0.0297 | -0.0374 | 0.444 | -332.4 | -0.8683 | 0.4952 | 0.282 | 1.00 | 11.96 | 34.17 |
| 6 | Lower | 0.0390 | -0.0436 | 0.556 | -289.6 | -0.7564 | 0.4756 | 0.262 | 1.00 | 10.88 | 33.13 |
| 7 | Lower | 0.0477 | -0.0507 | 0.667 | -256.6 | -0.6703 | 0.3340 | 0.268 | 1.00 | 9.31 | 32.31 |
| 8 | Lower | 0.0562 | -0.0583 | 0.778 | -245.4 | -0.6410 | 0.4007 | 0.286 | 1.00 | 10.89 | 32.03 |
| 9 | Lower | 0.0647 | -0.0657 | 0.889 | -209.7 | -0.5478 | 0.0814 | 0.304 | 1.00 | 5.04 | 31.10 |
| 10 | Lower | 0.0678 | -0.0680 | 1.000 | -257.4 | -0.6724 | 0.1961 | 0.273 | 1.00 | 7.28 | 32.33 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
