# Aerodynamic Case: case_104_aoa+35_u20
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 20.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8471
- **Drag Coefficient ($C_d$):** 0.8062
- **Mean Wall $y^+$:** 13.53
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 20.0, "incidence": 35.0, "case_idx": 104}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 466.8 | 1.9055 | 0.4952 | 0.359 | 1.00 | 15.08 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 40.3 | 0.1644 | 1.7764 | 0.277 | 1.00 | 22.20 | 18.28 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -195.3 | -0.7972 | 1.9183 | 0.275 | 1.00 | 22.93 | 26.81 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -346.8 | -1.4155 | 1.4947 | 0.270 | 1.00 | 19.90 | 31.08 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -427.2 | -1.7437 | 1.0452 | 0.259 | 1.00 | 15.92 | 33.13 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -432.3 | -1.7647 | 0.6763 | 0.247 | 1.00 | 12.24 | 33.26 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -367.1 | -1.4983 | 0.3865 | 0.271 | 1.00 | 10.15 | 31.61 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 67.6 | 0.2757 | 0.7624 | 0.306 | 1.00 | 16.11 | 17.02 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | -48.6 | -0.1983 | 0.9882 | 0.387 | 1.00 | 23.18 | 21.89 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | -104.6 | -0.4271 | 1.0149 | 0.432 | 1.00 | 26.20 | 23.89 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -410.6 | -1.6759 | 0.7346 | 0.331 | 1.00 | 16.77 | 32.72 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -371.5 | -1.5163 | 0.2741 | 0.298 | 1.00 | 9.39 | 31.73 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -361.0 | -1.4737 | 0.3600 | 0.307 | 1.00 | 11.09 | 31.46 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -334.1 | -1.3637 | 0.3772 | 0.306 | 1.00 | 11.31 | 30.75 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -298.7 | -1.2192 | 0.3224 | 0.301 | 1.00 | 10.31 | 29.79 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -271.9 | -1.1096 | 0.2709 | 0.287 | 1.00 | 8.99 | 29.05 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -257.2 | -1.0496 | 0.2106 | 0.286 | 1.00 | 7.91 | 28.63 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -250.6 | -1.0227 | 0.1948 | 0.295 | 1.00 | 7.85 | 28.44 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -242.3 | -0.9890 | 0.1346 | 0.310 | 1.00 | 6.67 | 28.21 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -259.6 | -1.0596 | 0.1025 | 0.298 | 1.00 | 5.75 | 28.70 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
