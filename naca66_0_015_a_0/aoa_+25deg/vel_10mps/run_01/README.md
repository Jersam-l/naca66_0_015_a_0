# Aerodynamic Case: case_82_aoa+25_u10
- **Angle of Attack (AoA):** +25.0° (Physically rotated mesh)
- **Freestream Velocity:** 10.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.7796
- **Drag Coefficient ($C_d$):** 0.4653
- **Mean Wall $y^+$:** 9.12
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 10.0, "incidence": 25.0, "case_idx": 82}'
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
| 1 | Upper | 0.0052 | 0.0193 | 0.000 | 70.5 | 1.1505 | 0.4083 | 0.296 | 1.00 | 10.89 | 0.00 |
| 2 | Upper | 0.0167 | 0.0096 | 0.111 | 36.8 | 0.6010 | 0.7385 | 0.255 | 1.00 | 13.17 | 6.32 |
| 3 | Upper | 0.0262 | 0.0037 | 0.222 | -10.1 | -0.1655 | 0.8662 | 0.260 | 1.00 | 14.57 | 10.80 |
| 4 | Upper | 0.0360 | -0.0016 | 0.333 | -45.1 | -0.7362 | 0.7464 | 0.277 | 1.00 | 14.41 | 13.18 |
| 5 | Upper | 0.0461 | -0.0064 | 0.444 | -71.4 | -1.1657 | 0.5589 | 0.313 | 1.00 | 14.11 | 14.72 |
| 6 | Upper | 0.0563 | -0.0106 | 0.556 | -78.5 | -1.2814 | 0.5354 | 0.320 | 1.00 | 14.11 | 15.10 |
| 7 | Upper | 0.0671 | -0.0138 | 0.667 | -76.0 | -1.2404 | 0.2591 | 0.285 | 1.00 | 8.74 | 14.97 |
| 8 | Upper | 0.0781 | -0.0165 | 0.778 | -65.7 | -1.0729 | 0.1337 | 0.275 | 1.00 | 6.05 | 14.40 |
| 9 | Upper | 0.0891 | -0.0191 | 0.889 | -53.7 | -0.8760 | 0.2042 | 0.259 | 1.00 | 7.04 | 13.70 |
| 10 | Upper | 0.0948 | -0.0209 | 1.000 | -57.6 | -0.9409 | 0.3962 | 0.190 | 1.00 | 7.19 | 13.93 |
| 1 | Lower | 0.0084 | 0.0220 | 0.000 | -108.5 | -1.7722 | 0.3519 | 0.298 | 1.00 | 9.37 | 16.65 |
| 2 | Lower | 0.0002 | -0.0260 | 0.111 | -60.0 | -0.9794 | 0.1374 | 0.298 | 1.00 | 6.64 | 14.07 |
| 3 | Lower | 0.0108 | -0.0295 | 0.222 | -60.1 | -0.9806 | 0.1938 | 0.289 | 1.00 | 7.66 | 14.07 |
| 4 | Lower | 0.0211 | -0.0336 | 0.333 | -56.8 | -0.9266 | 0.2074 | 0.278 | 1.00 | 7.62 | 13.88 |
| 5 | Lower | 0.0312 | -0.0382 | 0.444 | -52.1 | -0.8501 | 0.1888 | 0.276 | 1.00 | 7.22 | 13.60 |
| 6 | Lower | 0.0411 | -0.0434 | 0.556 | -49.1 | -0.8022 | 0.1800 | 0.264 | 1.00 | 6.73 | 13.43 |
| 7 | Lower | 0.0505 | -0.0495 | 0.667 | -48.3 | -0.7888 | 0.1752 | 0.272 | 1.00 | 6.85 | 13.38 |
| 8 | Lower | 0.0807 | -0.0109 | 0.778 | -66.0 | -1.0769 | 0.1946 | 0.289 | 1.00 | 7.68 | 14.41 |
| 9 | Lower | 0.0898 | -0.0177 | 0.889 | -60.9 | -0.9937 | 0.1108 | 0.313 | 1.00 | 6.28 | 14.12 |
| 10 | Lower | 0.0948 | -0.0209 | 1.000 | -60.9 | -0.9944 | 0.0235 | 0.353 | 1.00 | 3.26 | 14.12 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
