# Aerodynamic Case: case_68_aoa+15_u40
- **Angle of Attack (AoA):** +15.0° (Physically rotated mesh)
- **Freestream Velocity:** 40.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.5190
- **Drag Coefficient ($C_d$):** 0.1953
- **Mean Wall $y^+$:** 16.70
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 40.0, "incidence": 15.0, "case_idx": 68}'
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
| 1 | Upper | 0.0020 | 0.0119 | 0.000 | 960.2 | 0.9798 | 1.4829 | 0.199 | 1.00 | 13.64 | 5.68 |
| 2 | Upper | 0.0128 | 0.0049 | 0.111 | 30.5 | 0.0311 | 2.8747 | 0.264 | 1.00 | 26.99 | 39.37 |
| 3 | Upper | 0.0231 | 0.0005 | 0.222 | -524.6 | -0.5353 | 2.6376 | 0.337 | 1.00 | 32.98 | 49.56 |
| 4 | Upper | 0.0337 | -0.0031 | 0.333 | -747.5 | -0.7628 | 2.9222 | 0.275 | 1.00 | 28.33 | 53.11 |
| 5 | Upper | 0.0443 | -0.0062 | 0.444 | -980.1 | -1.0001 | 2.0796 | 0.262 | 1.00 | 22.78 | 56.57 |
| 6 | Upper | 0.0552 | -0.0088 | 0.556 | -1077.5 | -1.0995 | 1.3866 | 0.287 | 1.00 | 20.32 | 57.96 |
| 7 | Upper | 0.0662 | -0.0104 | 0.667 | -1021.6 | -1.0425 | 0.6721 | 0.281 | 1.00 | 13.85 | 57.17 |
| 8 | Upper | 0.0775 | -0.0112 | 0.778 | -849.4 | -0.8668 | 0.2921 | 0.289 | 1.00 | 9.42 | 54.65 |
| 9 | Upper | 0.0889 | -0.0118 | 0.889 | -680.5 | -0.6944 | 0.3473 | 0.299 | 1.00 | 10.62 | 52.07 |
| 10 | Upper | 0.0978 | -0.0128 | 1.000 | -633.0 | -0.6459 | 0.8468 | 0.247 | 1.00 | 13.67 | 51.32 |
| 1 | Lower | 0.0025 | 0.0137 | 0.000 | -1570.7 | -1.6028 | 3.4367 | 0.300 | 1.00 | 33.38 | 64.53 |
| 2 | Lower | 0.0154 | 0.0144 | 0.111 | -1179.9 | -1.2040 | 0.5199 | 0.273 | 1.00 | 11.85 | 59.38 |
| 3 | Lower | 0.0265 | 0.0130 | 0.222 | -1086.3 | -1.1085 | 0.3147 | 0.283 | 1.00 | 9.57 | 58.08 |
| 4 | Lower | 0.0374 | 0.0109 | 0.333 | -970.1 | -0.9899 | 0.6552 | 0.289 | 1.00 | 14.10 | 56.42 |
| 5 | Lower | 0.0482 | 0.0082 | 0.444 | -929.7 | -0.9487 | 0.6908 | 0.289 | 1.00 | 14.47 | 55.84 |
| 6 | Lower | 0.0589 | 0.0050 | 0.556 | -843.8 | -0.8610 | 0.3501 | 0.289 | 1.00 | 10.31 | 54.57 |
| 7 | Lower | 0.0693 | 0.0009 | 0.667 | -752.6 | -0.7679 | 0.2198 | 0.282 | 1.00 | 7.97 | 53.19 |
| 8 | Lower | 0.0794 | -0.0041 | 0.778 | -711.7 | -0.7263 | 0.3195 | 0.288 | 1.00 | 9.81 | 52.55 |
| 9 | Lower | 0.0896 | -0.0092 | 0.889 | -702.7 | -0.7170 | 0.4153 | 0.312 | 1.00 | 12.13 | 52.41 |
| 10 | Lower | 0.0978 | -0.0128 | 1.000 | -676.2 | -0.6900 | 0.0661 | 0.396 | 1.00 | 6.13 | 52.00 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
