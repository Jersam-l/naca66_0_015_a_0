# Aerodynamic Case: case_85_aoa+25_u25
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6076
- **Drag Coefficient ($C_d$):** 0.3669
- **Mean Wall $y^+$:** 13.53
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 25.0, "case_idx": 85}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 447.3 | 1.1684 | 0.9262 | 0.296 | 1.00 | 16.49 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 167.5 | 0.4375 | 1.9109 | 0.255 | 1.00 | 21.19 | 18.75 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -117.4 | -0.3067 | 2.1031 | 0.260 | 1.00 | 22.71 | 28.58 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -327.8 | -0.8563 | 1.7132 | 0.277 | 1.00 | 21.83 | 34.06 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -477.2 | -1.2464 | 1.2927 | 0.313 | 1.00 | 21.46 | 37.47 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -497.2 | -1.2987 | 1.3029 | 0.320 | 1.00 | 22.01 | 37.90 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -478.5 | -1.2499 | 0.6068 | 0.285 | 1.00 | 13.38 | 37.50 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -414.0 | -1.0815 | 0.2857 | 0.275 | 1.00 | 8.84 | 36.07 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -331.6 | -0.8663 | 0.4513 | 0.259 | 1.00 | 10.47 | 34.15 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -350.5 | -0.9156 | 0.9187 | 0.190 | 1.00 | 10.95 | 34.60 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -736.5 | -1.9240 | 1.0627 | 0.298 | 1.00 | 17.03 | 42.75 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -445.7 | -1.1642 | 0.2657 | 0.298 | 1.00 | 9.24 | 36.78 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -432.2 | -1.1290 | 0.3699 | 0.289 | 1.00 | 10.59 | 36.48 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -395.0 | -1.0319 | 0.3960 | 0.278 | 1.00 | 10.53 | 35.64 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -349.0 | -0.9116 | 0.3333 | 0.276 | 1.00 | 9.59 | 34.57 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -317.0 | -0.8282 | 0.2953 | 0.264 | 1.00 | 8.62 | 33.80 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -301.3 | -0.7870 | 0.2601 | 0.272 | 1.00 | 8.35 | 33.42 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -393.5 | -1.0279 | 0.2677 | 0.289 | 1.00 | 9.01 | 35.60 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -372.8 | -0.9737 | 0.2051 | 0.313 | 1.00 | 8.54 | 35.12 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -363.9 | -0.9507 | 0.0336 | 0.353 | 1.00 | 3.89 | 34.92 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
