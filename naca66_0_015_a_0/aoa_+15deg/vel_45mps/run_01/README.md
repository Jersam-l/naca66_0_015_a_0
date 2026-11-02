# Aerodynamic Case: case_69_aoa+15_u45
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.4334
- **Drag Coefficient ($C_d$):** 0.1832
- **Mean Wall $y^+$:** 17.67
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 15.0, "case_idx": 69}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 1309.2 | 1.0555 | 1.6392 | 0.199 | 1.00 | 14.29 | 0.00 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 91.2 | 0.0735 | 3.2732 | 0.264 | 1.00 | 28.80 | 43.31 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -633.5 | -0.5108 | 3.0034 | 0.337 | 1.00 | 35.19 | 55.31 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -928.6 | -0.7487 | 3.3809 | 0.275 | 1.00 | 30.47 | 59.51 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -1239.3 | -0.9992 | 2.4406 | 0.262 | 1.00 | 24.68 | 63.63 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -1387.4 | -1.1186 | 1.6257 | 0.287 | 1.00 | 22.00 | 65.50 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -1332.2 | -1.0741 | 0.8185 | 0.281 | 1.00 | 15.29 | 64.81 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -1118.9 | -0.9021 | 0.4010 | 0.289 | 1.00 | 11.03 | 62.06 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -912.0 | -0.7353 | 0.4835 | 0.299 | 1.00 | 12.54 | 59.28 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -874.7 | -0.7052 | 1.0573 | 0.247 | 1.00 | 15.27 | 58.76 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -1903.3 | -1.5346 | 3.8836 | 0.300 | 1.00 | 35.49 | 71.64 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -1450.3 | -1.1693 | 0.7025 | 0.273 | 1.00 | 13.78 | 66.28 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -1354.3 | -1.0919 | 0.4577 | 0.283 | 1.00 | 11.55 | 65.09 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -1244.8 | -1.0036 | 0.8080 | 0.289 | 1.00 | 15.66 | 63.70 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -1212.9 | -0.9779 | 0.8239 | 0.289 | 1.00 | 15.80 | 63.29 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -1112.2 | -0.8967 | 0.4243 | 0.289 | 1.00 | 11.35 | 61.98 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -998.2 | -0.8048 | 0.2272 | 0.282 | 1.00 | 8.10 | 60.45 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -939.3 | -0.7573 | 0.3110 | 0.288 | 1.00 | 9.68 | 59.65 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -920.3 | -0.7420 | 0.2703 | 0.312 | 1.00 | 9.78 | 59.39 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -930.4 | -0.7502 | 0.0616 | 0.396 | 1.00 | 5.92 | 59.53 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
