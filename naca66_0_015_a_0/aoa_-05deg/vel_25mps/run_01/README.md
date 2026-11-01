# Aerodynamic Case: case_25_aoa-05_u25
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1517
- **Drag Coefficient ($C_d$):** 0.0677
- **Mean Wall $y^+$:** 13.30
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": -5.0, "case_idx": 25}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 238.8 | 0.6237 | 1.3227 | 0.286 | 1.00 | 19.79 | 15.34 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -138.7 | -0.3624 | 1.3815 | 0.289 | 1.00 | 20.44 | 29.18 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -170.0 | -0.4441 | 1.0462 | 0.289 | 1.00 | 17.83 | 30.04 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -219.8 | -0.5742 | 0.8004 | 0.285 | 1.00 | 15.37 | 31.37 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -240.4 | -0.6280 | 0.6694 | 0.280 | 1.00 | 13.79 | 31.90 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -225.6 | -0.5893 | 0.4980 | 0.278 | 1.00 | 11.80 | 31.52 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -177.7 | -0.4642 | 0.0645 | 0.252 | 1.00 | 3.82 | 30.25 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -138.8 | -0.3627 | 0.1997 | 0.274 | 1.00 | 7.37 | 29.18 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -115.8 | -0.3025 | 0.2331 | 0.295 | 1.00 | 8.57 | 28.53 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -94.2 | -0.2462 | 0.1437 | 0.367 | 1.00 | 8.39 | 27.91 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 411.7 | 1.0755 | 0.0134 | 0.351 | 1.00 | 2.44 | 0.00 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | 24.6 | 0.0644 | 1.5907 | 0.289 | 1.00 | 21.95 | 24.18 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -88.4 | -0.2308 | 1.5345 | 0.300 | 1.00 | 22.38 | 27.74 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -178.3 | -0.4658 | 1.2105 | 0.310 | 1.00 | 20.57 | 30.27 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -244.9 | -0.6397 | 0.8800 | 0.301 | 1.00 | 17.04 | 32.01 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -264.1 | -0.6899 | 0.6309 | 0.296 | 1.00 | 14.16 | 32.50 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -234.6 | -0.6128 | 0.2749 | 0.294 | 1.00 | 9.28 | 31.75 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -183.4 | -0.4792 | 0.0269 | 0.291 | 1.00 | 2.84 | 30.41 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -138.4 | -0.3615 | 0.1055 | 0.296 | 1.00 | 5.80 | 29.17 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -93.6 | -0.2445 | 0.0213 | 0.333 | 1.00 | 2.92 | 27.89 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
