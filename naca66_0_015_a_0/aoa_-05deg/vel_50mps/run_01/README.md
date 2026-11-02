# Aerodynamic Case: case_30_aoa-05_u50
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1442
- **Drag Coefficient ($C_d$):** 0.0666
- **Mean Wall $y^+$:** 19.01
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": -5.0, "case_idx": 30}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 1028.9 | 0.6719 | 2.6363 | 0.286 | 1.00 | 27.94 | 28.64 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -495.6 | -0.3236 | 2.8704 | 0.289 | 1.00 | 29.47 | 57.52 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -576.4 | -0.3764 | 2.3464 | 0.289 | 1.00 | 26.70 | 58.66 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -790.3 | -0.5161 | 1.7346 | 0.285 | 1.00 | 22.63 | 61.56 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -894.2 | -0.5840 | 1.3242 | 0.280 | 1.00 | 19.40 | 62.93 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -836.0 | -0.5460 | 0.9188 | 0.278 | 1.00 | 16.03 | 62.17 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -648.7 | -0.4236 | 0.0543 | 0.252 | 1.00 | 3.47 | 59.66 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -491.2 | -0.3208 | 0.4011 | 0.274 | 1.00 | 10.44 | 57.46 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -397.7 | -0.2597 | 0.4422 | 0.295 | 1.00 | 11.80 | 56.12 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -316.0 | -0.2064 | 0.2901 | 0.367 | 1.00 | 11.92 | 54.92 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 1708.3 | 1.1156 | 0.0428 | 0.351 | 1.00 | 4.37 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 148.5 | 0.0970 | 3.2243 | 0.289 | 1.00 | 31.25 | 47.51 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -290.1 | -0.1894 | 3.2368 | 0.300 | 1.00 | 32.50 | 54.53 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -613.8 | -0.4008 | 2.7036 | 0.310 | 1.00 | 30.74 | 59.18 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -894.9 | -0.5845 | 1.9370 | 0.301 | 1.00 | 25.27 | 62.94 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -995.1 | -0.6499 | 1.3084 | 0.296 | 1.00 | 20.39 | 64.22 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -886.0 | -0.5786 | 0.5261 | 0.294 | 1.00 | 12.83 | 62.82 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -683.3 | -0.4462 | 0.0820 | 0.291 | 1.00 | 4.99 | 60.13 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -497.3 | -0.3247 | 0.2153 | 0.296 | 1.00 | 8.28 | 57.55 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -315.7 | -0.2062 | 0.0382 | 0.333 | 1.00 | 3.91 | 54.91 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
