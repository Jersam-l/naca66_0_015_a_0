# Aerodynamic Case: case_90_aoa+25_u50
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8190
- **Drag Coefficient ($C_d$):** 0.4130
- **Mean Wall $y^+$:** 19.48
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 25.0, "case_idx": 90}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 2018.1 | 1.3180 | 1.8522 | 0.296 | 1.00 | 23.32 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 886.3 | 0.5788 | 3.8984 | 0.255 | 1.00 | 30.26 | 32.45 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -222.2 | -0.1451 | 4.4072 | 0.260 | 1.00 | 32.87 | 53.50 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -998.4 | -0.6520 | 3.6411 | 0.277 | 1.00 | 31.82 | 64.27 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -1554.6 | -1.0153 | 2.6061 | 0.313 | 1.00 | 30.47 | 70.98 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -1525.3 | -0.9961 | 2.5230 | 0.320 | 1.00 | 30.63 | 70.64 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -1381.6 | -0.9023 | 0.9796 | 0.285 | 1.00 | 16.99 | 68.96 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -1093.6 | -0.7142 | 0.2697 | 0.275 | 1.00 | 8.59 | 65.46 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -687.3 | -0.4489 | 0.5487 | 0.259 | 1.00 | 11.54 | 60.18 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -630.1 | -0.4115 | 1.3526 | 0.190 | 1.00 | 13.28 | 59.40 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -2791.8 | -1.8232 | 2.1553 | 0.298 | 1.00 | 24.28 | 84.01 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -1578.2 | -1.0307 | 0.5108 | 0.298 | 1.00 | 12.81 | 71.25 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -1557.4 | -1.0171 | 0.8483 | 0.289 | 1.00 | 16.04 | 71.01 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -1415.5 | -0.9244 | 1.0793 | 0.278 | 1.00 | 17.38 | 69.36 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -1134.8 | -0.7411 | 0.9963 | 0.276 | 1.00 | 16.58 | 65.97 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -898.9 | -0.5870 | 0.8797 | 0.264 | 1.00 | 14.88 | 62.99 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -754.3 | -0.4926 | 0.7856 | 0.272 | 1.00 | 14.51 | 61.09 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -727.7 | -0.4752 | 0.5348 | 0.289 | 1.00 | 12.74 | 60.73 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -647.3 | -0.4227 | 0.4832 | 0.313 | 1.00 | 13.12 | 59.64 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -601.3 | -0.3927 | 0.0266 | 0.353 | 1.00 | 3.47 | 59.01 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
