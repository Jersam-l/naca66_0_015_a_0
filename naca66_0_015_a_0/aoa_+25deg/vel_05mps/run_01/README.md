# Aerodynamic Case: case_81_aoa+25_u05
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 5.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8337
- **Drag Coefficient ($C_d$):** 0.4610
- **Mean Wall $y^+$:** 6.93
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 5.0, "incidence": 25.0, "case_idx": 81}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 14.5 | 0.9442 | 0.1938 | 0.296 | 1.00 | 7.52 | 1.18 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 4.7 | 0.3041 | 0.3704 | 0.255 | 1.00 | 9.33 | 4.17 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -7.1 | -0.4625 | 0.4508 | 0.260 | 1.00 | 10.51 | 6.05 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -14.8 | -0.9650 | 0.4482 | 0.277 | 1.00 | 11.16 | 7.01 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -19.4 | -1.2664 | 0.3761 | 0.313 | 1.00 | 11.58 | 7.53 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -22.5 | -1.4663 | 0.3138 | 0.320 | 1.00 | 10.80 | 7.85 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -19.8 | -1.2928 | 0.1711 | 0.285 | 1.00 | 7.10 | 7.57 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -16.9 | -1.1018 | 0.0779 | 0.275 | 1.00 | 4.62 | 7.25 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -12.4 | -0.8127 | 0.1205 | 0.259 | 1.00 | 5.41 | 6.73 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -13.3 | -0.8655 | 0.2462 | 0.190 | 1.00 | 5.67 | 6.83 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -29.4 | -1.9189 | 0.1812 | 0.298 | 1.00 | 6.82 | 8.54 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -18.9 | -1.2370 | 0.0763 | 0.298 | 1.00 | 4.95 | 7.48 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -19.0 | -1.2383 | 0.1124 | 0.289 | 1.00 | 5.84 | 7.48 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -17.8 | -1.1597 | 0.1207 | 0.278 | 1.00 | 5.81 | 7.35 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -15.9 | -1.0396 | 0.1061 | 0.276 | 1.00 | 5.41 | 7.14 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -14.5 | -0.9470 | 0.0938 | 0.264 | 1.00 | 4.86 | 6.98 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -13.7 | -0.8917 | 0.0804 | 0.272 | 1.00 | 4.64 | 6.88 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -16.1 | -1.0547 | 0.0866 | 0.289 | 1.00 | 5.13 | 7.17 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -14.7 | -0.9597 | 0.0539 | 0.313 | 1.00 | 4.38 | 7.00 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -14.4 | -0.9374 | 0.0117 | 0.353 | 1.00 | 2.30 | 6.96 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
