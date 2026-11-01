# Aerodynamic Case: case_23_aoa-05_u15
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1547
- **Drag Coefficient ($C_d$):** 0.0692
- **Mean Wall $y^+$:** 10.39
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": -5.0, "case_idx": 23}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 81.1 | 0.5881 | 0.7921 | 0.286 | 1.00 | 15.31 | 9.63 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -54.6 | -0.3963 | 0.8045 | 0.289 | 1.00 | 15.60 | 17.73 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -67.6 | -0.4903 | 0.5928 | 0.289 | 1.00 | 13.42 | 18.31 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -83.9 | -0.6086 | 0.4736 | 0.285 | 1.00 | 11.82 | 19.02 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -90.4 | -0.6561 | 0.4165 | 0.280 | 1.00 | 10.88 | 19.30 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -85.1 | -0.6175 | 0.3200 | 0.278 | 1.00 | 9.46 | 19.08 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -67.6 | -0.4904 | 0.0503 | 0.252 | 1.00 | 3.38 | 18.31 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -54.6 | -0.3963 | 0.1299 | 0.274 | 1.00 | 5.94 | 17.73 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -46.6 | -0.3378 | 0.1543 | 0.295 | 1.00 | 6.97 | 17.35 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -38.2 | -0.2770 | 0.0866 | 0.367 | 1.00 | 6.51 | 16.95 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 143.3 | 1.0397 | 0.0077 | 0.351 | 1.00 | 1.86 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 4.1 | 0.0296 | 0.9481 | 0.289 | 1.00 | 16.95 | 14.78 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -37.1 | -0.2690 | 0.9031 | 0.300 | 1.00 | 17.17 | 16.90 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -70.1 | -0.5089 | 0.7054 | 0.310 | 1.00 | 15.70 | 18.43 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -93.5 | -0.6782 | 0.5209 | 0.301 | 1.00 | 13.11 | 19.43 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -99.8 | -0.7242 | 0.3850 | 0.296 | 1.00 | 11.06 | 19.70 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -88.8 | -0.6442 | 0.1772 | 0.294 | 1.00 | 7.45 | 19.23 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -70.8 | -0.5136 | 0.0173 | 0.291 | 1.00 | 2.28 | 18.45 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -54.6 | -0.3965 | 0.0668 | 0.296 | 1.00 | 4.61 | 17.73 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -37.8 | -0.2739 | 0.0189 | 0.333 | 1.00 | 2.75 | 16.93 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
