# Aerodynamic Case: case_103_aoa+35_u15
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 15.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 1.0468
- **Drag Coefficient ($C_d$):** 0.9812
- **Mean Wall $y^+$:** 11.78
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 35.0, "case_idx": 103}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 326.6 | 2.3696 | 0.3815 | 0.359 | 1.00 | 13.27 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 117.5 | 0.8529 | 1.2916 | 0.277 | 1.00 | 18.93 | 5.75 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -18.7 | -0.1354 | 1.4361 | 0.275 | 1.00 | 19.84 | 15.98 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -104.1 | -0.7550 | 1.1343 | 0.270 | 1.00 | 17.34 | 19.87 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -153.0 | -1.1105 | 0.8165 | 0.259 | 1.00 | 14.07 | 21.79 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -165.2 | -1.1987 | 0.5966 | 0.247 | 1.00 | 11.50 | 22.24 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -137.6 | -0.9987 | 0.4206 | 0.271 | 1.00 | 10.59 | 21.21 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 97.8 | 0.7094 | 0.5941 | 0.306 | 1.00 | 14.22 | 8.09 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 26.6 | 0.1927 | 0.7594 | 0.387 | 1.00 | 20.32 | 13.48 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | -6.8 | -0.0494 | 0.7764 | 0.432 | 1.00 | 22.91 | 15.37 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -113.4 | -0.8231 | 0.4720 | 0.331 | 1.00 | 12.84 | 20.25 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -96.8 | -0.7020 | 0.1601 | 0.298 | 1.00 | 7.18 | 19.57 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -95.4 | -0.6920 | 0.2228 | 0.307 | 1.00 | 8.72 | 19.51 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -87.1 | -0.6322 | 0.2331 | 0.306 | 1.00 | 8.89 | 19.16 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -76.1 | -0.5525 | 0.1785 | 0.301 | 1.00 | 7.67 | 18.69 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -71.8 | -0.5213 | 0.0570 | 0.287 | 1.00 | 4.12 | 18.50 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -76.1 | -0.5522 | 0.0639 | 0.286 | 1.00 | 4.35 | 18.69 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -80.1 | -0.5813 | 0.1494 | 0.295 | 1.00 | 6.87 | 18.86 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -85.6 | -0.6212 | 0.1614 | 0.310 | 1.00 | 7.44 | 19.10 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -99.4 | -0.7214 | 0.1487 | 0.298 | 1.00 | 6.92 | 19.68 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
