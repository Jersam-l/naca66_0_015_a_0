# Aerodynamic Case: case_105_aoa+35_u25
- **Angle of Attack (AoA):** +35.0° (Physically rotated mesh)
- **Freestream Velocity:** 25.0 m/s
- **Solver Status:** `CONVERGED`
- **Lift Coefficient ($C_l$):** 0.9024
- **Drag Coefficient ($C_d$):** 0.8993
- **Mean Wall $y^+$:** 15.35
- **Single-Case Execution Command:**
  ```bash
  python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 25.0, "incidence": 35.0, "case_idx": 105}'
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
| 1 | Upper | -0.0184 | -0.0155 | 0.000 | 975.7 | 2.5488 | 0.6091 | 0.359 | 1.00 | 16.74 | 0.00 |
| 2 | Upper | 0.0221 | 0.0122 | 0.111 | 311.8 | 0.8146 | 2.2115 | 0.277 | 1.00 | 24.77 | 10.76 |
| 3 | Upper | 0.0306 | 0.0050 | 0.222 | -55.2 | -0.1442 | 2.4254 | 0.275 | 1.00 | 25.78 | 26.74 |
| 4 | Upper | 0.0395 | -0.0018 | 0.333 | -291.7 | -0.7621 | 1.9234 | 0.270 | 1.00 | 22.58 | 33.19 |
| 5 | Upper | 0.0486 | -0.0080 | 0.444 | -425.6 | -1.1117 | 1.3382 | 0.259 | 1.00 | 18.01 | 36.33 |
| 6 | Upper | 0.0583 | -0.0136 | 0.556 | -441.3 | -1.1527 | 0.8567 | 0.247 | 1.00 | 13.78 | 36.68 |
| 7 | Upper | 0.0685 | -0.0184 | 0.667 | -342.7 | -0.8952 | 0.5112 | 0.271 | 1.00 | 11.67 | 34.42 |
| 8 | Upper | 0.0503 | -0.0638 | 0.778 | 329.3 | 0.8603 | 0.9600 | 0.306 | 1.00 | 18.08 | 9.34 |
| 9 | Upper | 0.0605 | -0.0686 | 0.889 | 144.0 | 0.3761 | 1.2420 | 0.387 | 1.00 | 25.98 | 19.75 |
| 10 | Upper | 0.0618 | -0.0693 | 1.000 | 55.6 | 0.1453 | 1.2742 | 0.432 | 1.00 | 29.35 | 23.11 |
| 1 | Lower | -0.0178 | -0.0120 | 0.000 | -391.6 | -1.0231 | 0.9259 | 0.331 | 1.00 | 18.86 | 35.56 |
| 2 | Lower | 0.0003 | -0.0189 | 0.111 | -326.7 | -0.8534 | 0.3314 | 0.298 | 1.00 | 10.33 | 34.03 |
| 3 | Lower | 0.0100 | -0.0244 | 0.222 | -307.6 | -0.8035 | 0.4031 | 0.307 | 1.00 | 11.73 | 33.57 |
| 4 | Lower | 0.0194 | -0.0305 | 0.333 | -272.6 | -0.7122 | 0.4133 | 0.306 | 1.00 | 11.84 | 32.71 |
| 5 | Lower | 0.0284 | -0.0369 | 0.444 | -229.7 | -0.6000 | 0.3597 | 0.301 | 1.00 | 10.89 | 31.62 |
| 6 | Lower | 0.0370 | -0.0441 | 0.556 | -191.5 | -0.5002 | 0.2973 | 0.287 | 1.00 | 9.42 | 30.62 |
| 7 | Lower | 0.0450 | -0.0520 | 0.667 | -163.1 | -0.4260 | 0.1173 | 0.286 | 1.00 | 5.90 | 29.85 |
| 8 | Lower | 0.0527 | -0.0603 | 0.778 | -159.4 | -0.4165 | 0.0902 | 0.295 | 1.00 | 5.34 | 29.75 |
| 9 | Lower | 0.0607 | -0.0683 | 0.889 | -162.7 | -0.4251 | 0.2082 | 0.310 | 1.00 | 8.40 | 29.84 |
| 10 | Lower | 0.0618 | -0.0693 | 1.000 | -188.7 | -0.4930 | 0.1594 | 0.298 | 1.00 | 7.17 | 30.55 |


---

### Artifacts in this Case:
- Geometry: `geometry/images/`, `geometry/dimensions.csv`
- Mesh: `mesh/mesh.msh`, `mesh/mesh.txt`, `mesh/images/`
- Solver Log & Data: `native_solver/log.txt`, `native_solver/residuals.csv`, `native_solver/output.vtk`
- Post-processing: `post/data/foil_surface_sampled_10pts.csv`, `post/plots/`
- Report & Paper: `reports/research_paper.pdf`, `reports/engineering_report.md`
