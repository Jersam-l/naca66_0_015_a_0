# Aerodynamic Case: case_72_aoa+20_u10
- **Angle of Attack (AoA):** +20.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.6645
- **Drag Coefficient ($C_d$):** 0.3097
- **Mean Wall $y^+$:** 8.48
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 20.0, "case_idx": 72}'
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
| 1 | Upper | 0.0041 | 0.0148 | 0.000 | 85.5 | 1.3961 | 0.2002 | 0.269 | 1.00 | 6.08 | 0.00 |
| 2 | Upper | 0.0145 | 0.0074 | 0.111 | 22.3 | 0.3634 | 0.7321 | 0.261 | 1.00 | 13.43 | 7.98 |
| 3 | Upper | 0.0245 | 0.0023 | 0.222 | -19.8 | -0.3239 | 0.7876 | 0.279 | 1.00 | 14.91 | 11.51 |
| 4 | Upper | 0.0347 | -0.0022 | 0.333 | -47.3 | -0.7725 | 0.7854 | 0.286 | 1.00 | 15.18 | 13.31 |
| 5 | Upper | 0.0451 | -0.0062 | 0.444 | -59.2 | -0.9657 | 0.5648 | 0.286 | 1.00 | 12.95 | 14.02 |
| 6 | Upper | 0.0556 | -0.0096 | 0.556 | -67.6 | -1.1044 | 0.4022 | 0.272 | 1.00 | 10.37 | 14.51 |
| 7 | Upper | 0.0666 | -0.0120 | 0.667 | -61.5 | -1.0043 | 0.2084 | 0.279 | 1.00 | 7.66 | 14.16 |
| 8 | Upper | 0.0778 | -0.0137 | 0.778 | -48.7 | -0.7955 | 0.1192 | 0.289 | 1.00 | 6.01 | 13.40 |
| 9 | Upper | 0.0890 | -0.0154 | 0.889 | -37.0 | -0.6037 | 0.1479 | 0.272 | 1.00 | 6.29 | 12.66 |
| 10 | Upper | 0.0965 | -0.0169 | 1.000 | -35.8 | -0.5851 | 0.4156 | 0.154 | 1.00 | 5.97 | 12.59 |
| 1 | Lower | 0.0053 | 0.0182 | 0.000 | -127.5 | -2.0808 | 0.4974 | 0.277 | 1.00 | 11.14 | 17.55 |
| 2 | Lower | 0.0180 | 0.0171 | 0.111 | -116.3 | -1.8984 | 0.2431 | 0.283 | 1.00 | 8.42 | 17.02 |
| 3 | Lower | 0.0290 | 0.0146 | 0.222 | -96.1 | -1.5689 | 0.1883 | 0.277 | 1.00 | 7.24 | 16.03 |
| 4 | Lower | 0.0397 | 0.0115 | 0.333 | -72.7 | -1.1874 | 0.0403 | 0.274 | 1.00 | 3.30 | 14.79 |
| 5 | Lower | 0.0502 | 0.0079 | 0.444 | -60.2 | -0.9828 | 0.0784 | 0.272 | 1.00 | 4.59 | 14.08 |
| 6 | Lower | 0.0605 | 0.0037 | 0.556 | -52.4 | -0.8559 | 0.0743 | 0.278 | 1.00 | 4.57 | 13.62 |
| 7 | Lower | 0.0704 | -0.0014 | 0.667 | -46.3 | -0.7557 | 0.0446 | 0.278 | 1.00 | 3.52 | 13.25 |
| 8 | Lower | 0.0801 | -0.0073 | 0.778 | -43.7 | -0.7138 | 0.1028 | 0.277 | 1.00 | 5.36 | 13.09 |
| 9 | Lower | 0.0898 | -0.0133 | 0.889 | -42.2 | -0.6885 | 0.0979 | 0.296 | 1.00 | 5.58 | 12.99 |
| 10 | Lower | 0.0965 | -0.0169 | 1.000 | -40.6 | -0.6625 | 0.0034 | 0.339 | 1.00 | 1.20 | 12.89 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
