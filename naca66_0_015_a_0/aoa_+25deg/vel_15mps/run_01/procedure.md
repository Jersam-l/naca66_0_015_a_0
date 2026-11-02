# Reproducible Procedure: case_83_aoa+25_u15
**Objective:** Aerodynamic solution of NACA 66(0)-015 cascade at U = 15.0 m/s, AoA = 25.0°.

### Single-Command Child Execution:
```bash
python3 -m jastricks simulate --case cascade-matrix --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0 --inputs '{"single_case": true, "velocity": 15.0, "incidence": 25.0, "case_idx": 83}'
```

### Granular Execution Steps:
1. **Geometry Generation:** Airfoil profile NACA 66(0)-015 generated with chord=0.1 m. Cascade generated with 3 blades, pitch=0.05 m, physically rotated by stagger angle = 25.0°.
2. **Mesh Generation (Native Jmsh):**
   ```bash
   python3 -m jastricks mesh --domain cascade --mesher jmsh --output native_solver
   ```
3. **C++ Native SIMPLE Solver Execution:**

   ```bash
   ./jastricks/native_solver/src/build/jastricks_solver -case native_solver
   ```
5. **Surface Sampling (10 Stations per Surface):**
   ```bash
   python3 -c "from jastricks.post.sampling.surface_sampling import sample_surface_data_at_intervals; sample_surface_data_at_intervals('native_solver/surface_cp.csv', num_points=10, chord_m=0.1, output_csv='post/data/foil_surface_sampled_10pts.csv')"
   ```
6. **Publication Report Generation:**
   Compiled PDF generated at `reports/research_paper.pdf`.
