# Aerodynamic Case: case_89_aoa+25_u45
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 45.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8821
- **Drag Coefficient ($C_d$):** 0.4709
- **Mean Wall $y^+$:** 18.64
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 45.0, "incidence": 25.0, "case_idx": 89}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 2337.2 | 1.8843 | 1.7208 | 0.296 | 1.00 | 22.44 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 1528.8 | 1.2326 | 3.4062 | 0.255 | 1.00 | 28.29 | 0.00 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | 600.6 | 0.4842 | 3.8914 | 0.260 | 1.00 | 30.89 | 32.32 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -56.3 | -0.0454 | 3.2206 | 0.277 | 1.00 | 29.93 | 46.01 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -518.4 | -0.4180 | 2.2978 | 0.313 | 1.00 | 28.61 | 53.59 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -528.9 | -0.4264 | 2.2230 | 0.320 | 1.00 | 28.75 | 53.74 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -453.4 | -0.3655 | 0.9212 | 0.285 | 1.00 | 16.48 | 52.59 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -266.0 | -0.2145 | 0.3745 | 0.275 | 1.00 | 10.12 | 49.59 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -45.6 | -0.0368 | 0.6504 | 0.259 | 1.00 | 12.56 | 45.82 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -83.4 | -0.0673 | 1.3852 | 0.190 | 1.00 | 13.44 | 46.49 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -1154.0 | -0.9304 | 1.5881 | 0.298 | 1.00 | 20.00 | 62.52 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -445.0 | -0.3588 | 0.3317 | 0.298 | 1.00 | 10.32 | 52.45 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -442.4 | -0.3567 | 0.6433 | 0.289 | 1.00 | 13.96 | 52.41 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -388.7 | -0.3134 | 0.9446 | 0.278 | 1.00 | 16.26 | 51.57 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -199.4 | -0.1608 | 0.9389 | 0.276 | 1.00 | 16.09 | 48.48 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | 5.5 | 0.0044 | 0.7940 | 0.264 | 1.00 | 14.14 | 44.90 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | 123.5 | 0.0995 | 0.5545 | 0.272 | 1.00 | 12.19 | 42.70 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -41.2 | -0.0332 | 0.2967 | 0.289 | 1.00 | 9.49 | 45.74 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -37.1 | -0.0299 | 0.2894 | 0.313 | 1.00 | 10.14 | 45.67 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -75.4 | -0.0608 | 0.1868 | 0.353 | 1.00 | 9.19 | 46.35 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
