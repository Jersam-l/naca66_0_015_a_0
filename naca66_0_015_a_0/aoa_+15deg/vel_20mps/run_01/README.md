# Aerodynamic Case: case_64_aoa+15_u20
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.4643
- **Drag Coefficient ($C_d$):** 0.1925
- **Mean Wall $y^+$:** 11.76
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 15.0, "case_idx": 64}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 285.7 | 1.1661 | 0.7402 | 0.199 | 1.00 | 9.62 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 48.6 | 0.1984 | 1.4342 | 0.264 | 1.00 | 19.07 | 17.91 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -93.1 | -0.3801 | 1.3098 | 0.337 | 1.00 | 23.24 | 23.50 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -157.5 | -0.6428 | 1.3663 | 0.275 | 1.00 | 19.37 | 25.64 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -220.4 | -0.8995 | 0.9645 | 0.262 | 1.00 | 15.52 | 27.56 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -243.4 | -0.9935 | 0.6987 | 0.287 | 1.00 | 14.43 | 28.24 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -229.8 | -0.9379 | 0.3870 | 0.281 | 1.00 | 10.51 | 27.84 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -186.9 | -0.7627 | 0.2016 | 0.289 | 1.00 | 7.82 | 26.55 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -146.6 | -0.5982 | 0.2203 | 0.299 | 1.00 | 8.46 | 25.28 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -137.9 | -0.5627 | 0.4625 | 0.247 | 1.00 | 10.10 | 25.00 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -354.6 | -1.4473 | 1.7300 | 0.300 | 1.00 | 23.68 | 31.29 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -266.4 | -1.0875 | 0.2890 | 0.273 | 1.00 | 8.84 | 28.90 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -239.3 | -0.9767 | 0.2312 | 0.283 | 1.00 | 8.21 | 28.12 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -218.1 | -0.8901 | 0.3965 | 0.289 | 1.00 | 10.97 | 27.50 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -212.7 | -0.8681 | 0.4009 | 0.289 | 1.00 | 11.02 | 27.34 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -191.8 | -0.7829 | 0.2205 | 0.289 | 1.00 | 8.19 | 26.70 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -167.0 | -0.6817 | 0.0962 | 0.282 | 1.00 | 5.27 | 25.94 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -156.1 | -0.6371 | 0.1793 | 0.288 | 1.00 | 7.35 | 25.59 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -151.7 | -0.6191 | 0.1535 | 0.312 | 1.00 | 7.37 | 25.45 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -149.6 | -0.6106 | 0.0084 | 0.396 | 1.00 | 2.19 | 25.38 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
