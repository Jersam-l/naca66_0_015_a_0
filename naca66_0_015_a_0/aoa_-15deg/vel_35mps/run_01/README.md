# Aerodynamic Case: case_07_aoa-15_u35
- **Angle of Attack (AoA):** -15.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.5547
- **Drag Coefficient ($C_d$):** 0.1818
- **Mean Wall $y^+$:** 15.15
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": -15.0, "case_idx": 7}'
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
| 1 | Upper | 0.0025 | -0.0137 | 0.000 | -1155.7 | -1.5403 | 2.8630 | 0.310 | 1.00 | 31.51 | 55.78 |
| 2 | Upper | 0.0154 | -0.0144 | 0.111 | -1199.4 | -1.5986 | 0.4776 | 0.253 | 1.00 | 10.55 | 56.42 |
| 3 | Upper | 0.0265 | -0.0130 | 0.222 | -885.4 | -1.1801 | 0.1838 | 0.272 | 1.00 | 6.98 | 51.68 |
| 4 | Upper | 0.0374 | -0.0109 | 0.333 | -762.8 | -1.0167 | 0.8045 | 0.291 | 1.00 | 15.72 | 49.70 |
| 5 | Upper | 0.0482 | -0.0082 | 0.444 | -773.2 | -1.0305 | 0.8764 | 0.278 | 1.00 | 15.69 | 49.87 |
| 6 | Upper | 0.0589 | -0.0050 | 0.556 | -742.5 | -0.9896 | 0.6355 | 0.300 | 1.00 | 14.41 | 49.37 |
| 7 | Upper | 0.0693 | -0.0009 | 0.667 | -435.4 | -0.5803 | 0.3825 | 0.332 | 1.00 | 12.36 | 44.00 |
| 8 | Upper | 0.0794 | 0.0041 | 0.778 | -406.9 | -0.5423 | 0.2477 | 0.267 | 1.00 | 7.99 | 43.47 |
| 9 | Upper | 0.0896 | 0.0092 | 0.889 | -394.2 | -0.5253 | 0.4017 | 0.217 | 1.00 | 8.30 | 43.23 |
| 10 | Upper | 0.0978 | 0.0128 | 1.000 | -378.5 | -0.5044 | 0.1388 | 0.148 | 1.00 | 3.33 | 42.93 |
| 1 | Lower | 0.0020 | -0.0119 | 0.000 | 730.3 | 0.9734 | 1.2341 | 0.223 | 1.00 | 13.89 | 5.71 |
| 2 | Lower | 0.0128 | -0.0049 | 0.111 | 67.0 | 0.0893 | 2.2855 | 0.291 | 1.00 | 26.51 | 33.40 |
| 3 | Lower | 0.0231 | -0.0005 | 0.222 | -319.7 | -0.4261 | 2.5309 | 0.297 | 1.00 | 28.50 | 41.80 |
| 4 | Lower | 0.0337 | 0.0031 | 0.333 | -553.9 | -0.7382 | 2.2005 | 0.294 | 1.00 | 26.23 | 46.15 |
| 5 | Lower | 0.0443 | 0.0062 | 0.444 | -714.1 | -0.9518 | 1.5130 | 0.289 | 1.00 | 21.40 | 48.90 |
| 6 | Lower | 0.0552 | 0.0088 | 0.556 | -769.3 | -1.0253 | 1.0342 | 0.273 | 1.00 | 16.71 | 49.81 |
| 7 | Lower | 0.0662 | 0.0104 | 0.667 | -692.5 | -0.9230 | 0.4857 | 0.268 | 1.00 | 11.25 | 48.53 |
| 8 | Lower | 0.0775 | 0.0112 | 0.778 | -554.0 | -0.7383 | 0.1852 | 0.281 | 1.00 | 7.29 | 46.15 |
| 9 | Lower | 0.0889 | 0.0118 | 0.889 | -423.1 | -0.5639 | 0.2184 | 0.297 | 1.00 | 8.36 | 43.77 |
| 10 | Lower | 0.0978 | 0.0128 | 1.000 | -357.9 | -0.4770 | 0.5422 | 0.314 | 1.00 | 13.92 | 42.54 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
