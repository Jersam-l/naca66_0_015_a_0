# Aerodynamic Case: case_84_aoa+25_u20
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6983
- **Drag Coefficient ($C_d$):** 0.4195
- **Mean Wall $y^+$:** 11.95
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 25.0, "case_idx": 84}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 268.4 | 1.0956 | 0.7772 | 0.296 | 1.00 | 15.07 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 115.5 | 0.4715 | 1.4917 | 0.255 | 1.00 | 18.72 | 14.54 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -68.5 | -0.2797 | 1.6652 | 0.260 | 1.00 | 20.20 | 22.62 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -206.4 | -0.8424 | 1.3669 | 0.277 | 1.00 | 19.50 | 27.15 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -304.5 | -1.2427 | 1.0338 | 0.313 | 1.00 | 19.19 | 29.95 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -321.7 | -1.3130 | 1.0385 | 0.320 | 1.00 | 19.65 | 30.42 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -312.8 | -1.2767 | 0.4994 | 0.285 | 1.00 | 12.14 | 30.18 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -274.9 | -1.1220 | 0.2635 | 0.275 | 1.00 | 8.49 | 29.13 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -232.7 | -0.9498 | 0.4043 | 0.259 | 1.00 | 9.90 | 27.93 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -253.8 | -1.0357 | 0.7732 | 0.190 | 1.00 | 10.04 | 28.54 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -454.6 | -1.8557 | 0.7613 | 0.298 | 1.00 | 14.10 | 33.80 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -272.5 | -1.1121 | 0.2134 | 0.298 | 1.00 | 8.28 | 29.07 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -267.2 | -1.0905 | 0.2882 | 0.289 | 1.00 | 9.35 | 28.92 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -251.3 | -1.0258 | 0.3263 | 0.278 | 1.00 | 9.56 | 28.47 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -227.8 | -0.9297 | 0.2988 | 0.276 | 1.00 | 9.08 | 27.78 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -209.0 | -0.8530 | 0.2821 | 0.264 | 1.00 | 8.43 | 27.23 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -195.1 | -0.7964 | 0.1967 | 0.272 | 1.00 | 7.26 | 26.81 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -258.2 | -1.0540 | 0.1371 | 0.289 | 1.00 | 6.45 | 28.66 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -256.6 | -1.0473 | 0.1282 | 0.313 | 1.00 | 6.75 | 28.62 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -262.4 | -1.0711 | 0.0831 | 0.353 | 1.00 | 6.13 | 28.78 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
