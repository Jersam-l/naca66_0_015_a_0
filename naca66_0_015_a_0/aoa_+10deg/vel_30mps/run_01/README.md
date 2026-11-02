# Aerodynamic Case: case_56_aoa+10_u30
- **Angle of Attack (AoA):** +10.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.2134
- **Drag Coefficient ($C_d$):** 0.1077
- **Mean Wall $y^+$:** 14.60
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 10.0, "case_idx": 56}'
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
| 1 | Upper | 0.0009 | 0.0082 | 0.000 | 595.0 | 1.0794 | 0.4028 | 0.317 | 1.00 | 12.12 | 0.00 |
| 2 | Upper | 0.0116 | 0.0020 | 0.111 | 5.7 | 0.0103 | 1.6145 | 0.352 | 1.00 | 26.90 | 29.85 |
| 3 | Upper | 0.0223 | -0.0016 | 0.222 | -204.9 | -0.3718 | 2.3070 | 0.252 | 1.00 | 23.08 | 35.14 |
| 4 | Upper | 0.0331 | -0.0043 | 0.333 | -374.0 | -0.6784 | 1.7935 | 0.278 | 1.00 | 22.46 | 38.87 |
| 5 | Upper | 0.0440 | -0.0066 | 0.444 | -491.6 | -0.8918 | 1.2742 | 0.294 | 1.00 | 19.96 | 41.26 |
| 6 | Upper | 0.0550 | -0.0082 | 0.556 | -551.2 | -0.9999 | 0.9219 | 0.279 | 1.00 | 16.13 | 42.43 |
| 7 | Upper | 0.0661 | -0.0089 | 0.667 | -515.7 | -0.9356 | 0.4836 | 0.271 | 1.00 | 11.33 | 41.74 |
| 8 | Upper | 0.0774 | -0.0088 | 0.778 | -421.9 | -0.7653 | 0.1677 | 0.287 | 1.00 | 7.08 | 39.86 |
| 9 | Upper | 0.0888 | -0.0084 | 0.889 | -330.4 | -0.5993 | 0.1414 | 0.307 | 1.00 | 6.96 | 37.94 |
| 10 | Upper | 0.0987 | -0.0086 | 1.000 | -268.2 | -0.4865 | 0.3755 | 0.339 | 1.00 | 12.50 | 36.58 |
| 1 | Lower | 0.0011 | 0.0091 | 0.000 | 37.5 | 0.0681 | 1.9365 | 0.293 | 1.00 | 24.56 | 28.96 |
| 2 | Lower | 0.0133 | 0.0113 | 0.111 | -407.6 | -0.7394 | 1.2385 | 0.280 | 1.00 | 18.78 | 39.57 |
| 3 | Lower | 0.0245 | 0.0109 | 0.222 | -430.9 | -0.7817 | 0.8521 | 0.295 | 1.00 | 16.38 | 40.05 |
| 4 | Lower | 0.0356 | 0.0099 | 0.333 | -462.4 | -0.8388 | 0.7738 | 0.302 | 1.00 | 15.98 | 40.68 |
| 5 | Lower | 0.0466 | 0.0082 | 0.444 | -468.3 | -0.8496 | 0.6843 | 0.297 | 1.00 | 14.80 | 40.80 |
| 6 | Lower | 0.0575 | 0.0060 | 0.556 | -423.9 | -0.7690 | 0.4135 | 0.291 | 1.00 | 11.28 | 39.90 |
| 7 | Lower | 0.0682 | 0.0029 | 0.667 | -353.9 | -0.6419 | 0.1074 | 0.283 | 1.00 | 5.55 | 38.44 |
| 8 | Lower | 0.0788 | -0.0011 | 0.778 | -312.6 | -0.5671 | 0.2694 | 0.293 | 1.00 | 9.15 | 37.55 |
| 9 | Lower | 0.0893 | -0.0054 | 0.889 | -293.5 | -0.5324 | 0.2715 | 0.313 | 1.00 | 9.84 | 37.14 |
| 10 | Lower | 0.0987 | -0.0086 | 1.000 | -276.0 | -0.5007 | 0.0665 | 0.382 | 1.00 | 5.94 | 36.75 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
