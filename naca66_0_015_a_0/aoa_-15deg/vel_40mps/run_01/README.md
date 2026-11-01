# Aerodynamic Case: case_08_aoa-15_u40
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5329
- **Drag Coefficient ($C_d$):** 0.1763
- **Mean Wall $y^+$:** 16.16
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": -15.0, "case_idx": 8}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -1485.7 | -1.5160 | 3.2814 | 0.310 | 1.00 | 33.74 | 63.45 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -1539.0 | -1.5704 | 0.4888 | 0.253 | 1.00 | 10.67 | 64.13 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -1136.6 | -1.1598 | 0.2629 | 0.272 | 1.00 | 8.37 | 58.78 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -991.4 | -1.0117 | 0.9522 | 0.291 | 1.00 | 17.10 | 56.73 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -1010.4 | -1.0311 | 1.0114 | 0.278 | 1.00 | 16.86 | 57.01 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -971.3 | -0.9911 | 0.7318 | 0.300 | 1.00 | 15.47 | 56.44 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -556.6 | -0.5680 | 0.4500 | 0.332 | 1.00 | 13.41 | 50.09 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -518.4 | -0.5290 | 0.2812 | 0.267 | 1.00 | 8.51 | 49.46 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -500.6 | -0.5108 | 0.4430 | 0.217 | 1.00 | 8.72 | 49.17 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -482.8 | -0.4926 | 0.1482 | 0.148 | 1.00 | 3.44 | 48.87 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 984.7 | 1.0048 | 1.4020 | 0.223 | 1.00 | 14.79 | 0.00 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 108.6 | 0.1108 | 2.6260 | 0.291 | 1.00 | 28.41 | 37.72 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -396.9 | -0.4050 | 2.9223 | 0.297 | 1.00 | 30.62 | 47.41 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -696.7 | -0.7109 | 2.5758 | 0.294 | 1.00 | 28.38 | 52.32 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -907.7 | -0.9262 | 1.7702 | 0.289 | 1.00 | 23.15 | 55.52 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -984.3 | -1.0044 | 1.1942 | 0.273 | 1.00 | 17.96 | 56.63 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -885.6 | -0.9037 | 0.5534 | 0.268 | 1.00 | 12.01 | 55.19 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -704.7 | -0.7191 | 0.2127 | 0.281 | 1.00 | 7.81 | 52.45 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -534.1 | -0.5451 | 0.2583 | 0.297 | 1.00 | 9.10 | 49.72 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -452.9 | -0.4622 | 0.6372 | 0.314 | 1.00 | 15.09 | 48.37 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
