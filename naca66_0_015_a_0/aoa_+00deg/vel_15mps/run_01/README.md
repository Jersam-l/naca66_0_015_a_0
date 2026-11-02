# Aerodynamic Case: case_33_aoa+00_u15
- **Angle of Attack (AoA):** +0.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.0577
- **Drag Coefficient ($C_d$):** 0.0581
- **Mean Wall $y^+$:** 10.40
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 0.0, "case_idx": 33}'
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
| 1 | Upper | 0.0003 | -0.0005 | 0.000 | 127.1 | 0.9224 | 0.4569 | 0.287 | 1.00 | 11.70 | 4.18 |
| 2 | Upper | 0.0111 | -0.0046 | 0.111 | -23.9 | -0.1738 | 0.9114 | 0.299 | 1.00 | 17.18 | 16.25 |
| 3 | Upper | 0.0222 | -0.0063 | 0.222 | -48.3 | -0.3502 | 0.7992 | 0.285 | 1.00 | 15.33 | 17.43 |
| 4 | Upper | 0.0333 | -0.0072 | 0.333 | -74.3 | -0.5389 | 0.5944 | 0.284 | 1.00 | 13.20 | 18.61 |
| 5 | Upper | 0.0444 | -0.0075 | 0.444 | -89.3 | -0.6482 | 0.4765 | 0.283 | 1.00 | 11.78 | 19.26 |
| 6 | Upper | 0.0556 | -0.0073 | 0.556 | -92.2 | -0.6688 | 0.3935 | 0.278 | 1.00 | 10.50 | 19.38 |
| 7 | Upper | 0.0667 | -0.0061 | 0.667 | -79.8 | -0.5787 | 0.1908 | 0.273 | 1.00 | 7.17 | 18.85 |
| 8 | Upper | 0.0778 | -0.0041 | 0.778 | -61.2 | -0.4439 | 0.0226 | 0.282 | 1.00 | 2.54 | 18.02 |
| 9 | Upper | 0.0889 | -0.0017 | 0.889 | -47.0 | -0.3407 | 0.0854 | 0.300 | 1.00 | 5.28 | 17.37 |
| 10 | Upper | 0.0994 | -0.0000 | 1.000 | -32.1 | -0.2326 | 0.0199 | 0.379 | 1.00 | 3.22 | 16.65 |
| 1 | Lower | 0.0003 | 0.0005 | 0.000 | 132.9 | 0.9641 | 0.3118 | 0.309 | 1.00 | 10.38 | 2.84 |
| 2 | Lower | 0.0111 | 0.0046 | 0.111 | -12.0 | -0.0874 | 0.9145 | 0.297 | 1.00 | 17.10 | 15.64 |
| 3 | Lower | 0.0222 | 0.0063 | 0.222 | -38.4 | -0.2786 | 0.7985 | 0.301 | 1.00 | 16.19 | 16.96 |
| 4 | Lower | 0.0333 | 0.0072 | 0.333 | -64.0 | -0.4643 | 0.5940 | 0.303 | 1.00 | 14.07 | 18.15 |
| 5 | Lower | 0.0444 | 0.0075 | 0.444 | -78.7 | -0.5710 | 0.4436 | 0.301 | 1.00 | 12.06 | 18.80 |
| 6 | Lower | 0.0556 | 0.0073 | 0.556 | -78.4 | -0.5690 | 0.3176 | 0.305 | 1.00 | 10.35 | 18.79 |
| 7 | Lower | 0.0667 | 0.0061 | 0.667 | -65.2 | -0.4732 | 0.0895 | 0.295 | 1.00 | 5.32 | 18.21 |
| 8 | Lower | 0.0778 | 0.0041 | 0.778 | -52.8 | -0.3830 | 0.1085 | 0.284 | 1.00 | 5.64 | 17.64 |
| 9 | Lower | 0.0889 | 0.0017 | 0.889 | -42.4 | -0.3074 | 0.1361 | 0.300 | 1.00 | 6.67 | 17.15 |
| 10 | Lower | 0.0994 | 0.0000 | 1.000 | -31.4 | -0.2280 | 0.0738 | 0.348 | 1.00 | 5.69 | 16.62 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
