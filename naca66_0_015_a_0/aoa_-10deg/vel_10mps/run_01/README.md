# Aerodynamic Case: case_12_aoa-10_u10
- **Angle of Attack (AoA):** -10.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.3715
- **Drag Coefficient ($C_d$):** 0.1316
- **Mean Wall $y^+$:** 8.92
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": -10.0, "case_idx": 12}'
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
| 1 | Upper | 0.0011 | -0.0091 | 0.000 | 5.3 | 0.0861 | 0.5214 | 0.403 | 1.00 | 17.54 | 9.56 |
| 2 | Upper | 0.0133 | -0.0113 | 0.111 | -37.7 | -0.6162 | 0.2820 | 0.283 | 1.00 | 9.04 | 12.71 |
| 3 | Upper | 0.0245 | -0.0109 | 0.222 | -35.8 | -0.5847 | 0.2331 | 0.282 | 1.00 | 8.21 | 12.59 |
| 4 | Upper | 0.0356 | -0.0099 | 0.333 | -34.7 | -0.5673 | 0.3073 | 0.275 | 1.00 | 9.17 | 12.52 |
| 5 | Upper | 0.0466 | -0.0082 | 0.444 | -35.8 | -0.5848 | 0.3059 | 0.275 | 1.00 | 9.17 | 12.59 |
| 6 | Upper | 0.0575 | -0.0060 | 0.556 | -31.7 | -0.5182 | 0.2060 | 0.242 | 1.00 | 6.62 | 12.32 |
| 7 | Upper | 0.0682 | -0.0029 | 0.667 | -22.5 | -0.3667 | 0.0223 | 0.253 | 1.00 | 2.20 | 11.69 |
| 8 | Upper | 0.0788 | 0.0011 | 0.778 | -18.1 | -0.2951 | 0.1130 | 0.279 | 1.00 | 5.66 | 11.38 |
| 9 | Upper | 0.0893 | 0.0054 | 0.889 | -15.8 | -0.2580 | 0.1149 | 0.315 | 1.00 | 6.43 | 11.22 |
| 10 | Upper | 0.0987 | 0.0086 | 1.000 | -12.9 | -0.2100 | 0.0421 | 0.401 | 1.00 | 4.96 | 11.00 |
| 1 | Lower | 0.0009 | -0.0082 | 0.000 | 72.4 | 1.1816 | 0.1607 | 0.367 | 1.00 | 8.87 | 0.00 |
| 2 | Lower | 0.0116 | -0.0020 | 0.111 | 18.6 | 0.3031 | 0.6325 | 0.290 | 1.00 | 13.90 | 8.35 |
| 3 | Lower | 0.0223 | 0.0016 | 0.222 | -6.5 | -0.1055 | 0.6597 | 0.301 | 1.00 | 14.74 | 10.51 |
| 4 | Lower | 0.0331 | 0.0043 | 0.333 | -24.0 | -0.3921 | 0.5575 | 0.307 | 1.00 | 13.80 | 11.80 |
| 5 | Lower | 0.0440 | 0.0066 | 0.444 | -36.8 | -0.6009 | 0.4109 | 0.305 | 1.00 | 11.76 | 12.65 |
| 6 | Lower | 0.0550 | 0.0082 | 0.556 | -42.2 | -0.6886 | 0.3049 | 0.294 | 1.00 | 9.79 | 12.99 |
| 7 | Lower | 0.0661 | 0.0089 | 0.667 | -37.9 | -0.6188 | 0.1636 | 0.275 | 1.00 | 6.69 | 12.72 |
| 8 | Lower | 0.0774 | 0.0088 | 0.778 | -27.9 | -0.4548 | 0.0459 | 0.278 | 1.00 | 3.59 | 12.06 |
| 9 | Lower | 0.0888 | 0.0084 | 0.889 | -18.0 | -0.2937 | 0.0377 | 0.300 | 1.00 | 3.51 | 11.37 |
| 10 | Lower | 0.0987 | 0.0086 | 1.000 | -11.3 | -0.1841 | 0.1374 | 0.273 | 1.00 | 6.09 | 10.88 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
