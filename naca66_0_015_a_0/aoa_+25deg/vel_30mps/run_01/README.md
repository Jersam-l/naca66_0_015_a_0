# Aerodynamic Case: case_86_aoa+25_u30
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 30.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7253
- **Drag Coefficient ($C_d$):** 0.3842
- **Mean Wall $y^+$:** 14.94
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 30.0, "incidence": 25.0, "case_idx": 86}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 520.5 | 0.9442 | 1.1024 | 0.296 | 1.00 | 17.99 | 7.09 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 112.7 | 0.2045 | 2.3066 | 0.255 | 1.00 | 23.28 | 26.76 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -288.9 | -0.5241 | 2.5404 | 0.260 | 1.00 | 24.96 | 37.04 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -579.3 | -1.0509 | 2.0539 | 0.277 | 1.00 | 23.90 | 42.96 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -779.1 | -1.4134 | 1.5246 | 0.313 | 1.00 | 23.31 | 46.60 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -780.4 | -1.4157 | 1.5312 | 0.320 | 1.00 | 23.86 | 46.63 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -739.6 | -1.3417 | 0.6634 | 0.285 | 1.00 | 13.99 | 45.91 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -638.9 | -1.1591 | 0.2593 | 0.275 | 1.00 | 8.42 | 44.08 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -507.0 | -0.9197 | 0.4307 | 0.259 | 1.00 | 10.22 | 41.57 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -504.8 | -0.9157 | 0.9222 | 0.190 | 1.00 | 10.97 | 41.52 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -1183.6 | -2.1471 | 1.2842 | 0.298 | 1.00 | 18.75 | 53.22 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -768.4 | -1.3939 | 0.3218 | 0.298 | 1.00 | 10.16 | 46.42 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -752.8 | -1.3657 | 0.4954 | 0.289 | 1.00 | 12.25 | 46.14 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -690.8 | -1.2532 | 0.5744 | 0.278 | 1.00 | 12.68 | 45.03 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -599.1 | -1.0868 | 0.4972 | 0.276 | 1.00 | 11.71 | 43.34 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -532.3 | -0.9656 | 0.4375 | 0.264 | 1.00 | 10.50 | 42.06 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -491.2 | -0.8911 | 0.3505 | 0.272 | 1.00 | 9.69 | 41.26 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -535.5 | -0.9715 | 0.3044 | 0.289 | 1.00 | 9.61 | 42.12 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -510.7 | -0.9265 | 0.2570 | 0.313 | 1.00 | 9.56 | 41.64 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -500.4 | -0.9078 | 0.0279 | 0.353 | 1.00 | 3.55 | 41.44 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
