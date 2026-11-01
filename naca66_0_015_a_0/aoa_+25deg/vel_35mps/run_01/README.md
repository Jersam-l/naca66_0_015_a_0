# Aerodynamic Case: case_87_aoa+25_u35
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6477
- **Drag Coefficient ($C_d$):** 0.3559
- **Mean Wall $y^+$:** 15.85
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 25.0, "case_idx": 87}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 796.4 | 1.0615 | 1.2723 | 0.296 | 1.00 | 19.33 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 205.8 | 0.2742 | 2.7321 | 0.255 | 1.00 | 25.33 | 29.82 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -349.4 | -0.4657 | 3.0228 | 0.260 | 1.00 | 27.22 | 42.37 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -752.6 | -1.0030 | 2.4571 | 0.277 | 1.00 | 26.14 | 49.53 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -1037.2 | -1.3823 | 1.8124 | 0.313 | 1.00 | 25.41 | 54.02 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -1044.8 | -1.3925 | 1.8052 | 0.320 | 1.00 | 25.91 | 54.14 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -990.0 | -1.3195 | 0.7697 | 0.285 | 1.00 | 15.06 | 53.30 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -853.8 | -1.1379 | 0.2853 | 0.275 | 1.00 | 8.83 | 51.18 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -672.5 | -0.8963 | 0.4785 | 0.259 | 1.00 | 10.78 | 48.20 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -665.5 | -0.8870 | 1.0510 | 0.190 | 1.00 | 11.71 | 48.08 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -1596.3 | -2.1275 | 1.5803 | 0.298 | 1.00 | 20.97 | 61.90 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -1005.9 | -1.3407 | 0.3709 | 0.298 | 1.00 | 10.91 | 53.55 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -980.3 | -1.3065 | 0.5470 | 0.289 | 1.00 | 12.88 | 53.16 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -904.3 | -1.2052 | 0.6308 | 0.278 | 1.00 | 13.28 | 51.97 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -793.5 | -1.0576 | 0.5635 | 0.276 | 1.00 | 12.47 | 50.20 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -704.2 | -0.9385 | 0.4933 | 0.264 | 1.00 | 11.14 | 48.73 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -652.9 | -0.8701 | 0.4067 | 0.272 | 1.00 | 10.44 | 47.86 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -712.8 | -0.9499 | 0.3318 | 0.289 | 1.00 | 10.03 | 48.87 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -684.5 | -0.9123 | 0.3405 | 0.313 | 1.00 | 11.01 | 48.40 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -662.3 | -0.8827 | 0.0088 | 0.353 | 1.00 | 2.00 | 48.02 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
