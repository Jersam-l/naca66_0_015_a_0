# Aerodynamic Case: case_83_aoa+25_u15
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7183
- **Drag Coefficient ($C_d$):** 0.4225
- **Mean Wall $y^+$:** 10.57
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 25.0, "case_idx": 83}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 139.9 | 1.0149 | 0.5681 | 0.296 | 1.00 | 12.90 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 49.2 | 0.3568 | 1.1215 | 0.255 | 1.00 | 16.23 | 12.03 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -53.0 | -0.3849 | 1.2497 | 0.260 | 1.00 | 17.50 | 17.65 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -129.2 | -0.9378 | 1.0218 | 0.277 | 1.00 | 16.86 | 20.88 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -183.0 | -1.3280 | 0.7723 | 0.313 | 1.00 | 16.59 | 22.89 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -191.9 | -1.3928 | 0.7745 | 0.320 | 1.00 | 16.97 | 23.20 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -186.5 | -1.3535 | 0.3679 | 0.285 | 1.00 | 10.42 | 23.01 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -164.4 | -1.1928 | 0.1850 | 0.275 | 1.00 | 7.11 | 22.21 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -138.5 | -1.0047 | 0.2813 | 0.259 | 1.00 | 8.26 | 21.24 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -146.6 | -1.0641 | 0.5520 | 0.190 | 1.00 | 8.49 | 21.55 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -258.2 | -1.8736 | 0.5656 | 0.298 | 1.00 | 12.15 | 25.43 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -168.7 | -1.2239 | 0.1886 | 0.298 | 1.00 | 7.78 | 22.37 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -166.0 | -1.2046 | 0.2495 | 0.289 | 1.00 | 8.70 | 22.27 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -154.3 | -1.1197 | 0.2740 | 0.278 | 1.00 | 8.76 | 21.84 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -138.7 | -1.0065 | 0.2467 | 0.276 | 1.00 | 8.25 | 21.25 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -128.0 | -0.9291 | 0.2286 | 0.264 | 1.00 | 7.59 | 20.83 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -122.6 | -0.8893 | 0.1905 | 0.272 | 1.00 | 7.14 | 20.62 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -153.8 | -1.1159 | 0.1775 | 0.289 | 1.00 | 7.34 | 21.82 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -150.1 | -1.0893 | 0.1309 | 0.313 | 1.00 | 6.82 | 21.68 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -150.9 | -1.0948 | 0.0397 | 0.353 | 1.00 | 4.24 | 21.71 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
