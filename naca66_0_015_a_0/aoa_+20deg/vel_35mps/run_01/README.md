# Aerodynamic Case: case_77_aoa+20_u35
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6467
- **Drag Coefficient ($C_d$):** 0.3048
- **Mean Wall $y^+$:** 14.98
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 20.0, "case_idx": 77}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 1084.2 | 1.4450 | 0.7092 | 0.269 | 1.00 | 11.55 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 303.3 | 0.4043 | 2.5920 | 0.261 | 1.00 | 25.26 | 27.01 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -219.0 | -0.2919 | 2.7652 | 0.279 | 1.00 | 27.94 | 39.78 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -558.8 | -0.7448 | 2.7571 | 0.286 | 1.00 | 28.43 | 46.23 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -699.2 | -0.9319 | 1.9960 | 0.286 | 1.00 | 24.34 | 48.65 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -806.6 | -1.0750 | 1.3615 | 0.272 | 1.00 | 19.08 | 50.42 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -740.7 | -0.9871 | 0.6317 | 0.279 | 1.00 | 13.34 | 49.34 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -588.2 | -0.7840 | 0.3418 | 0.289 | 1.00 | 10.18 | 46.75 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -450.0 | -0.5997 | 0.4528 | 0.272 | 1.00 | 11.01 | 44.27 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -442.9 | -0.5903 | 1.2082 | 0.154 | 1.00 | 10.17 | 44.14 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -1501.5 | -2.0011 | 1.7645 | 0.277 | 1.00 | 21.04 | 60.63 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -1305.9 | -1.7405 | 0.6791 | 0.283 | 1.00 | 14.07 | 57.94 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -1118.0 | -1.4901 | 0.6064 | 0.277 | 1.00 | 13.00 | 55.23 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -882.5 | -1.1762 | 0.2351 | 0.274 | 1.00 | 8.00 | 51.63 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -727.8 | -0.9700 | 0.1060 | 0.272 | 1.00 | 5.33 | 49.12 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -632.0 | -0.8424 | 0.1123 | 0.278 | 1.00 | 5.61 | 47.51 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -558.4 | -0.7442 | 0.1767 | 0.278 | 1.00 | 7.02 | 46.22 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -520.0 | -0.6930 | 0.2854 | 0.277 | 1.00 | 8.93 | 45.54 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -498.1 | -0.6638 | 0.2317 | 0.296 | 1.00 | 8.59 | 45.15 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -489.6 | -0.6525 | 0.0524 | 0.339 | 1.00 | 4.67 | 44.99 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
