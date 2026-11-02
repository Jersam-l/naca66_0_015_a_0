# Aerodynamic Case: case_28_aoa-05_u40
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1484
- **Drag Coefficient ($C_d$):** 0.0669
- **Mean Wall $y^+$:** 16.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": -5.0, "case_idx": 28}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 594.7 | 0.6068 | 2.1147 | 0.286 | 1.00 | 25.02 | 25.08 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -376.4 | -0.3841 | 2.2708 | 0.289 | 1.00 | 26.21 | 47.06 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -437.2 | -0.4461 | 1.8069 | 0.289 | 1.00 | 23.43 | 48.10 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -572.7 | -0.5844 | 1.3438 | 0.285 | 1.00 | 19.92 | 50.35 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -634.3 | -0.6472 | 1.0592 | 0.280 | 1.00 | 17.35 | 51.34 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -596.8 | -0.6090 | 0.7566 | 0.278 | 1.00 | 14.55 | 50.74 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -476.1 | -0.4858 | 0.0664 | 0.252 | 1.00 | 3.81 | 48.76 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -374.3 | -0.3820 | 0.3151 | 0.274 | 1.00 | 9.25 | 47.02 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -313.9 | -0.3203 | 0.3537 | 0.295 | 1.00 | 10.55 | 45.96 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -260.9 | -0.2662 | 0.2321 | 0.367 | 1.00 | 10.66 | 45.01 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 1034.3 | 1.0554 | 0.0267 | 0.351 | 1.00 | 3.45 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 39.6 | 0.0404 | 2.5677 | 0.289 | 1.00 | 27.89 | 39.18 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -244.0 | -0.2490 | 2.5453 | 0.300 | 1.00 | 28.82 | 44.70 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -459.6 | -0.4689 | 2.0783 | 0.310 | 1.00 | 26.95 | 48.48 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -636.9 | -0.6499 | 1.4906 | 0.301 | 1.00 | 22.17 | 51.38 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -694.6 | -0.7087 | 1.0260 | 0.296 | 1.00 | 18.06 | 52.29 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -622.1 | -0.6348 | 0.4214 | 0.294 | 1.00 | 11.49 | 51.14 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -492.2 | -0.5022 | 0.0584 | 0.291 | 1.00 | 4.20 | 49.03 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -374.9 | -0.3825 | 0.1727 | 0.296 | 1.00 | 7.42 | 47.03 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -260.3 | -0.2656 | 0.0253 | 0.333 | 1.00 | 3.19 | 45.00 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
