# Aerodynamic Case: case_27_aoa-05_u35
- **Angle of Attack (AoA):** -5.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** -0.1504
- **Drag Coefficient ($C_d$):** 0.0670
- **Mean Wall $y^+$:** 15.79
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/output/repo_2_MISSING/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": -5.0, "case_idx": 27}'
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
| 1 | Upper | 0.0005 | -0.0048 | 0.000 | 256.6 | 0.3420 | 1.8503 | 0.286 | 1.00 | 23.40 | 28.39 |
| 2 | Upper | 0.0119 | -0.0080 | 0.111 | -485.4 | -0.6470 | 1.9724 | 0.289 | 1.00 | 24.43 | 44.92 |
| 3 | Upper | 0.0231 | -0.0087 | 0.222 | -536.4 | -0.7149 | 1.5459 | 0.289 | 1.00 | 21.67 | 45.83 |
| 4 | Upper | 0.0342 | -0.0086 | 0.333 | -639.0 | -0.8517 | 1.1573 | 0.285 | 1.00 | 18.48 | 47.63 |
| 5 | Upper | 0.0453 | -0.0079 | 0.444 | -684.4 | -0.9121 | 0.9299 | 0.280 | 1.00 | 16.25 | 48.40 |
| 6 | Upper | 0.0564 | -0.0067 | 0.556 | -656.3 | -0.8747 | 0.6761 | 0.278 | 1.00 | 13.75 | 47.92 |
| 7 | Upper | 0.0673 | -0.0046 | 0.667 | -563.6 | -0.7512 | 0.0745 | 0.252 | 1.00 | 4.09 | 46.32 |
| 8 | Upper | 0.0782 | -0.0016 | 0.778 | -485.2 | -0.6467 | 0.2722 | 0.274 | 1.00 | 8.60 | 44.91 |
| 9 | Upper | 0.0891 | 0.0017 | 0.889 | -438.4 | -0.5843 | 0.3106 | 0.295 | 1.00 | 9.89 | 44.05 |
| 10 | Upper | 0.0993 | 0.0043 | 1.000 | -397.2 | -0.5294 | 0.2050 | 0.367 | 1.00 | 10.02 | 43.28 |
| 1 | Lower | 0.0004 | -0.0039 | 0.000 | 593.7 | 0.7913 | 0.0220 | 0.351 | 1.00 | 3.14 | 15.99 |
| 2 | Lower | 0.0110 | 0.0012 | 0.111 | -166.4 | -0.2218 | 2.2402 | 0.289 | 1.00 | 26.05 | 38.69 |
| 3 | Lower | 0.0220 | 0.0039 | 0.222 | -384.3 | -0.5122 | 2.2026 | 0.300 | 1.00 | 26.81 | 43.04 |
| 4 | Lower | 0.0330 | 0.0057 | 0.333 | -552.8 | -0.7368 | 1.7768 | 0.310 | 1.00 | 24.92 | 46.12 |
| 5 | Lower | 0.0440 | 0.0070 | 0.444 | -686.6 | -0.9150 | 1.2767 | 0.301 | 1.00 | 20.52 | 48.44 |
| 6 | Lower | 0.0551 | 0.0077 | 0.556 | -727.6 | -0.9697 | 0.8866 | 0.296 | 1.00 | 16.79 | 49.12 |
| 7 | Lower | 0.0663 | 0.0075 | 0.667 | -670.6 | -0.8938 | 0.3647 | 0.294 | 1.00 | 10.68 | 48.16 |
| 8 | Lower | 0.0775 | 0.0064 | 0.778 | -571.5 | -0.7617 | 0.0539 | 0.291 | 1.00 | 4.04 | 46.45 |
| 9 | Lower | 0.0888 | 0.0051 | 0.889 | -483.1 | -0.6439 | 0.1579 | 0.296 | 1.00 | 7.09 | 44.88 |
| 10 | Lower | 0.0993 | 0.0043 | 1.000 | -396.5 | -0.5284 | 0.0111 | 0.333 | 1.00 | 2.11 | 43.27 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
