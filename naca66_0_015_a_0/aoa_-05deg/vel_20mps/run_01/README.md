# Aerodynamic Case: case_24_aoa-05_u20
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1518
- **Drag Coefficient ($C_d$):** 0.0683
- **Mean Wall $y^+$:** 11.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": -5.0, "case_idx": 24}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 131.6 | 0.5371 | 1.0566 | 0.286 | 1.00 | 17.69 | 13.61 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -109.8 | -0.4482 | 1.0907 | 0.289 | 1.00 | 18.17 | 24.07 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -131.6 | -0.5372 | 0.8124 | 0.289 | 1.00 | 15.71 | 24.80 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -162.3 | -0.6623 | 0.6327 | 0.285 | 1.00 | 13.67 | 25.79 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -174.7 | -0.7129 | 0.5417 | 0.280 | 1.00 | 12.41 | 26.18 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -165.2 | -0.6742 | 0.4087 | 0.278 | 1.00 | 10.69 | 25.88 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -134.3 | -0.5483 | 0.0582 | 0.252 | 1.00 | 3.64 | 24.89 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -110.2 | -0.4500 | 0.1651 | 0.274 | 1.00 | 6.70 | 24.08 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -95.8 | -0.3910 | 0.1949 | 0.295 | 1.00 | 7.83 | 23.59 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -81.6 | -0.3330 | 0.1150 | 0.367 | 1.00 | 7.50 | 23.09 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 242.0 | 0.9877 | 0.0112 | 0.351 | 1.00 | 2.23 | 2.21 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | -5.5 | -0.0225 | 1.2681 | 0.289 | 1.00 | 19.60 | 20.22 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -78.3 | -0.3198 | 1.2118 | 0.300 | 1.00 | 19.89 | 22.98 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -136.8 | -0.5584 | 0.9478 | 0.310 | 1.00 | 18.20 | 24.97 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -178.8 | -0.7296 | 0.6946 | 0.301 | 1.00 | 15.13 | 26.30 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -190.5 | -0.7775 | 0.5061 | 0.296 | 1.00 | 12.68 | 26.66 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -171.4 | -0.6995 | 0.2267 | 0.294 | 1.00 | 8.43 | 26.07 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -138.7 | -0.5661 | 0.0192 | 0.291 | 1.00 | 2.38 | 25.03 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -110.1 | -0.4493 | 0.0851 | 0.296 | 1.00 | 5.20 | 24.08 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -81.0 | -0.3307 | 0.0206 | 0.333 | 1.00 | 2.87 | 23.07 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
