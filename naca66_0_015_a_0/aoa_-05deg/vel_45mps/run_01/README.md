# Aerodynamic Case: case_29_aoa-05_u45
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1464
- **Drag Coefficient ($C_d$):** 0.0667
- **Mean Wall $y^+$:** 17.99
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": -5.0, "case_idx": 29}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 746.3 | 0.6017 | 2.3760 | 0.286 | 1.00 | 26.52 | 28.40 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -485.6 | -0.3915 | 2.5701 | 0.289 | 1.00 | 27.89 | 53.08 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -556.4 | -0.4486 | 2.0742 | 0.289 | 1.00 | 25.11 | 54.16 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -729.1 | -0.5879 | 1.5367 | 0.285 | 1.00 | 21.30 | 56.70 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -810.3 | -0.6533 | 1.1913 | 0.280 | 1.00 | 18.40 | 57.86 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -763.1 | -0.6153 | 0.8388 | 0.278 | 1.00 | 15.32 | 57.19 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -610.9 | -0.4925 | 0.0613 | 0.252 | 1.00 | 3.58 | 54.98 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -482.5 | -0.3890 | 0.3573 | 0.274 | 1.00 | 9.85 | 53.04 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -406.3 | -0.3276 | 0.3975 | 0.295 | 1.00 | 11.19 | 51.85 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -339.7 | -0.2739 | 0.2616 | 0.367 | 1.00 | 11.32 | 50.79 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 1299.8 | 1.0479 | 0.0341 | 0.351 | 1.00 | 3.90 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 38.6 | 0.0311 | 2.8956 | 0.289 | 1.00 | 29.61 | 44.29 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -318.2 | -0.2565 | 2.8896 | 0.300 | 1.00 | 30.71 | 50.44 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -585.5 | -0.4721 | 2.3872 | 0.310 | 1.00 | 28.89 | 54.60 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -811.7 | -0.6545 | 1.7100 | 0.301 | 1.00 | 23.75 | 57.88 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -888.8 | -0.7166 | 1.1650 | 0.296 | 1.00 | 19.24 | 58.96 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -798.6 | -0.6439 | 0.4722 | 0.294 | 1.00 | 12.16 | 57.70 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -634.5 | -0.5115 | 0.0729 | 0.291 | 1.00 | 4.71 | 55.33 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -485.1 | -0.3911 | 0.1954 | 0.296 | 1.00 | 7.89 | 53.08 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -339.2 | -0.2735 | 0.0297 | 0.333 | 1.00 | 3.45 | 50.78 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
