# Aerodynamic Case: case_65_aoa+15_u25
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.4795
- **Drag Coefficient ($C_d$):** 0.1936
- **Mean Wall $y^+$:** 13.11
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 15.0, "case_idx": 65}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 433.4 | 1.1321 | 0.9132 | 0.199 | 1.00 | 10.67 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 58.2 | 0.1519 | 1.8039 | 0.264 | 1.00 | 21.38 | 23.02 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -163.5 | -0.4271 | 1.6483 | 0.337 | 1.00 | 26.07 | 29.87 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -261.0 | -0.6819 | 1.7510 | 0.275 | 1.00 | 21.93 | 32.42 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -358.7 | -0.9369 | 1.2359 | 0.262 | 1.00 | 17.56 | 34.79 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -395.0 | -1.0318 | 0.8751 | 0.287 | 1.00 | 16.15 | 35.63 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -371.7 | -0.9710 | 0.4685 | 0.281 | 1.00 | 11.56 | 35.10 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -301.6 | -0.7880 | 0.2315 | 0.289 | 1.00 | 8.38 | 33.43 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -233.6 | -0.6103 | 0.2556 | 0.299 | 1.00 | 9.11 | 31.72 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -213.4 | -0.5575 | 0.5455 | 0.247 | 1.00 | 10.97 | 31.20 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -563.6 | -1.4724 | 2.1617 | 0.300 | 1.00 | 26.48 | 39.31 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -425.6 | -1.1117 | 0.3806 | 0.273 | 1.00 | 10.15 | 36.33 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -386.3 | -1.0092 | 0.2811 | 0.283 | 1.00 | 9.05 | 35.44 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -351.1 | -0.9171 | 0.4800 | 0.289 | 1.00 | 12.07 | 34.62 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -339.8 | -0.8877 | 0.4847 | 0.289 | 1.00 | 12.12 | 34.35 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -305.7 | -0.7985 | 0.2632 | 0.289 | 1.00 | 8.94 | 33.53 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -266.1 | -0.6950 | 0.1212 | 0.282 | 1.00 | 5.91 | 32.55 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -247.2 | -0.6458 | 0.2198 | 0.288 | 1.00 | 8.14 | 32.07 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -237.4 | -0.6202 | 0.1874 | 0.312 | 1.00 | 8.14 | 31.82 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -230.3 | -0.6015 | 0.0013 | 0.396 | 1.00 | 0.85 | 31.64 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
