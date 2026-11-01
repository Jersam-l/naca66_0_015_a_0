# Aerodynamic Case: case_22_aoa-05_u10
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1718
- **Drag Coefficient ($C_d$):** 0.0704
- **Mean Wall $y^+$:** 8.68
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": -5.0, "case_idx": 22}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 36.0 | 0.5872 | 0.5333 | 0.286 | 1.00 | 12.56 | 6.42 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -24.1 | -0.3942 | 0.5252 | 0.289 | 1.00 | 12.60 | 11.81 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -29.4 | -0.4798 | 0.3949 | 0.289 | 1.00 | 10.96 | 12.16 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -36.0 | -0.5880 | 0.3299 | 0.285 | 1.00 | 9.87 | 12.60 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -38.8 | -0.6338 | 0.3002 | 0.280 | 1.00 | 9.24 | 12.78 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -36.5 | -0.5961 | 0.2406 | 0.278 | 1.00 | 8.20 | 12.63 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -28.4 | -0.4643 | 0.0508 | 0.252 | 1.00 | 3.41 | 12.10 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -22.7 | -0.3700 | 0.0872 | 0.274 | 1.00 | 4.87 | 11.71 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -18.9 | -0.3079 | 0.1075 | 0.295 | 1.00 | 5.82 | 11.44 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -14.8 | -0.2416 | 0.0600 | 0.367 | 1.00 | 5.42 | 11.14 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 64.7 | 1.0561 | 0.0007 | 0.351 | 1.00 | 0.55 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 2.9 | 0.0469 | 0.6299 | 0.289 | 1.00 | 13.81 | 9.76 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -15.3 | -0.2503 | 0.6140 | 0.300 | 1.00 | 14.16 | 11.18 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -29.4 | -0.4806 | 0.4944 | 0.310 | 1.00 | 13.15 | 12.17 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -39.7 | -0.6489 | 0.3674 | 0.301 | 1.00 | 11.01 | 12.84 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -42.4 | -0.6930 | 0.2701 | 0.296 | 1.00 | 9.26 | 13.01 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -37.1 | -0.6055 | 0.1229 | 0.294 | 1.00 | 6.20 | 12.67 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -29.7 | -0.4854 | 0.0229 | 0.291 | 1.00 | 2.64 | 12.19 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -22.4 | -0.3665 | 0.0537 | 0.296 | 1.00 | 4.14 | 11.69 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -14.5 | -0.2371 | 0.0106 | 0.333 | 1.00 | 2.06 | 11.12 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
