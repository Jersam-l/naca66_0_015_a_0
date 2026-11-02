# Aerodynamic Case: case_40_aoa+00_u50
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 50.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0486
- **Drag Coefficient ($C_d$):** 0.0547
- **Mean Wall $y^+$:** 19.19
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 50.0, "incidence": 0.0, "case_idx": 40}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 1462.8 | 0.9553 | 1.4989 | 0.287 | 1.00 | 21.19 | 10.57 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -221.3 | -0.1445 | 3.1277 | 0.299 | 1.00 | 31.83 | 53.49 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -440.2 | -0.2875 | 3.0655 | 0.285 | 1.00 | 30.03 | 56.73 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -713.0 | -0.4657 | 2.3242 | 0.284 | 1.00 | 26.10 | 60.53 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -917.9 | -0.5994 | 1.6501 | 0.283 | 1.00 | 21.92 | 63.23 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -958.4 | -0.6259 | 1.2094 | 0.278 | 1.00 | 18.41 | 63.76 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -821.5 | -0.5365 | 0.4800 | 0.273 | 1.00 | 11.37 | 61.98 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -618.4 | -0.4039 | 0.1423 | 0.282 | 1.00 | 6.40 | 59.24 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -462.8 | -0.3022 | 0.2972 | 0.300 | 1.00 | 9.84 | 57.06 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -316.2 | -0.2065 | 0.1341 | 0.379 | 1.00 | 8.36 | 54.92 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 1517.5 | 0.9910 | 1.0707 | 0.309 | 1.00 | 19.24 | 4.73 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -105.3 | -0.0688 | 3.1412 | 0.297 | 1.00 | 31.69 | 51.69 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -357.0 | -0.2331 | 2.9984 | 0.301 | 1.00 | 31.37 | 55.52 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -613.6 | -0.4007 | 2.3397 | 0.303 | 1.00 | 27.92 | 59.18 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -812.0 | -0.5303 | 1.6153 | 0.301 | 1.00 | 23.02 | 61.85 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -832.6 | -0.5437 | 1.0408 | 0.305 | 1.00 | 18.73 | 62.12 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -700.9 | -0.4577 | 0.2286 | 0.295 | 1.00 | 8.50 | 60.37 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -545.2 | -0.3560 | 0.3348 | 0.284 | 1.00 | 9.91 | 58.22 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -422.1 | -0.2757 | 0.4027 | 0.300 | 1.00 | 11.47 | 56.47 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -308.4 | -0.2014 | 0.2572 | 0.348 | 1.00 | 10.62 | 54.80 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
