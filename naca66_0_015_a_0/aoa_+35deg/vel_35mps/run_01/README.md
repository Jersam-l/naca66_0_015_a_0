# Aerodynamic Case: case_107_aoa+35_u35
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 35.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.8414
- **Drag Coefficient ($C_d$):** 0.8213
- **Mean Wall $y^+$:** 18.25
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 35.0, "incidence": 35.0, "case_idx": 107}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 1878.4 | 2.5035 | 0.8576 | 0.359 | 1.00 | 19.86 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 493.1 | 0.6573 | 3.1754 | 0.277 | 1.00 | 29.68 | 20.49 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -224.0 | -0.2985 | 3.5012 | 0.275 | 1.00 | 30.97 | 39.88 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -681.2 | -0.9079 | 2.8133 | 0.270 | 1.00 | 27.30 | 48.34 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -951.6 | -1.2683 | 1.9370 | 0.259 | 1.00 | 21.67 | 52.71 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -985.0 | -1.3128 | 1.1771 | 0.247 | 1.00 | 16.15 | 53.23 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -785.8 | -1.0473 | 0.6124 | 0.271 | 1.00 | 12.77 | 50.08 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 613.9 | 0.8182 | 1.3407 | 0.306 | 1.00 | 21.37 | 14.93 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 256.5 | 0.3419 | 1.7407 | 0.387 | 1.00 | 30.76 | 28.39 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | 84.1 | 0.1121 | 1.7915 | 0.432 | 1.00 | 34.80 | 32.98 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -926.4 | -1.2347 | 1.3560 | 0.331 | 1.00 | 22.90 | 52.32 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -794.5 | -1.0589 | 0.4986 | 0.298 | 1.00 | 12.67 | 50.22 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -750.6 | -1.0004 | 0.6342 | 0.307 | 1.00 | 14.72 | 49.50 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -656.5 | -0.8750 | 0.6253 | 0.306 | 1.00 | 14.57 | 47.93 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -554.3 | -0.7387 | 0.5223 | 0.301 | 1.00 | 13.12 | 46.15 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -487.3 | -0.6494 | 0.4792 | 0.287 | 1.00 | 11.96 | 44.95 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -427.6 | -0.5699 | 0.3923 | 0.286 | 1.00 | 10.80 | 43.85 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -383.7 | -0.5113 | 0.3009 | 0.295 | 1.00 | 9.75 | 43.03 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -347.9 | -0.4636 | 0.1857 | 0.310 | 1.00 | 7.65 | 42.34 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -388.6 | -0.5179 | 0.1011 | 0.298 | 1.00 | 5.71 | 43.12 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
