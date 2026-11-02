# JASTRIX Resolved Solver Configuration Dossier (solver.md)
# Generated automatically prior to numerical simulation execution.
# Format matches setup.md with all parameter values resolved from user inputs or system defaults ('p').

```yaml
# ======================================================================
# 1. GENERAL SOLVER CONFIGURATION & CASE ARCHITECTURE (Taxonomy Sec 1)
# ======================================================================
case: cascade-matrix                         # [choose one: cascade-matrix | cascade | flat-plate-radiation | motor-regression | universal] [default: cascade-matrix]
dimension: 2D                    # [choose one: 2D | 3D] Spatial dimensions [default: 2D]
solver_formulation: DensityBased           # [choose one: DensityBased | PressureBased] Formulation [default: DensityBased]
time_formulation: steady             # [choose one: steady | transient] Time advancement [default: steady]
velocity_formulation: absolute         # [choose one: absolute | relative] Velocity reference frame [default: absolute]
precision: double                    # [choose one: double | single] Floating-point precision [default: double]

# ======================================================================
# 2. UNIVERSAL EXTERNAL MESH IMPORT & BOUNDARY MAPPING (Taxonomy Sec 2)
# (If mesh_file is specified, geometry & mesh generation are bypassed)
# ======================================================================
mesh_file: none (generated internally via native blossom mesher)                    # Path to external mesh (.msh, .txt, .vtk, or polyMesh dir) [default: p -> generate internally]
inlet_boundary: inlet               # Name(s) of velocity/pressure inflow patch in external mesh [default: inlet]
outlet_boundary: outlet              # Name(s) of pressure outflow patch in external mesh [default: outlet]
wall_boundaries: blade, wall              # Comma-separated names of solid wall patches (e.g. 'upper_wall, lower_wall, blade') [default: blade, wall]
periodic_boundaries: top, bottom          # Comma-separated names of periodic / symmetry patches [default: top, bottom]

# ======================================================================
# 3. GEOMETRY SPECIFICATION (Taxonomy Sec 0 & 2; used when mesh_file is p)
# ======================================================================
airfoil: 66(0)-015                      # Airfoil profile designation (e.g. '66(9)-015', '0012', '4412') [default: 66(9)-015]
meanline_a: 0.0                   # NACA 6-series meanline chord fraction a [default: 0.2]
chord: 0.1                        # Blade chord length in meters [m] [default: 0.10]
pitch: 0.05                        # Cascade blade-to-blade pitch spacing in meters [m] [default: 0.05]
blockage_ratio: 0.05               # Passage blockage ratio fraction [default: 0.05]
num_blades: 3                   # Total number of cascade blades (odd count for center blade pivot) [default: 3]
points: 750                       # Discretization points along profile [default: 750]
stagger: 0.0                      # Blade stagger angle in degrees [deg] [default: 0.0]
rotation_pivot: middle_blade_chord_midpoint               # [choose one: middle_blade_chord_midpoint | leading_edge] [default: middle_blade_chord_midpoint]
span: 1.0                         # Blade span depth in meters for 3D extrusion [m] [default: 0.10]

# ======================================================================
# 4. MESH GENERATION & INFLATION BOUNDARY LAYER (Used when mesh_file is p)
# ======================================================================
mesh_type: quad                    # [choose one: quad | tri | hybrid] Computational mesh element type [default: quad]
mesh_profile: coarse_preliminary                 # [choose one: coarse_preliminary | medium | fine | custom] Sizing profile [default: coarse_preliminary]
global_size_factor: 0.75           # Global cell sizing refinement factor [default: 0.75]
max_cell_size: p                # Maximum bulk/farfield cell size in meters [m] (e.g. 0.005) [default: p -> auto from profile]
enable_inflation: y             # [y/n] Enable near-wall boundary layer inflation [default: y]
first_cell_height: 1.84e-05            # Near-wall first cell height y1 in meters (or auto from y+) [m] [default: p -> auto]
target_yplus: 1.0                 # Non-dimensional wall distance y+ target [default: 1.0]
layer_count: 44                  # Total number of prismatic boundary layers [default: 44]
growth_ratio: 1.15                 # Boundary layer normal geometric growth ratio (<= 1.20) [default: 1.15]
inlet_radius_factor: 0.5          # Upstream semicircular inflow radius factor relative to domain height [default: 0.5]

# ======================================================================
# 5. OPERATING CONDITIONS & THERMODYNAMICS (Taxonomy Sec 3 & 4)
# ======================================================================
operating_pressure: 101325.0           # Operating reference pressure in Pascals [Pa] [default: 101325.0]
operating_temperature: 293.15        # Operating reference temperature in Kelvin [K] [default: 293.15]
density: 1.225                      # Fluid reference density in kg/m^3 (for incompressible) [default: 1.225]
viscosity: 1.7894e-05                    # Dynamic molecular viscosity in Pa.s [Pa.s] [default: 1.7894e-5]
kinematic_viscosity: 1.5e-05          # Kinematic viscosity nu in m^2/s [m^2/s] [default: 1.5e-5]
gas_constant_r: 287.05               # Specific gas constant R in J/(kg.K) [default: 287.05]
specific_heat_ratio_gamma: 1.4    # Ratio of specific heats gamma = Cp/Cv [default: 1.4]
specific_heat_cp: 1005.0             # Specific heat capacity Cp in J/(kg.K) [default: 1005.0]
thermal_conductivity: 0.0242         # Thermal conductivity k in W/(m.K) [default: 0.0242]
prandtl_number: 0.71               # Laminar Prandtl number Pr [default: 0.71]

# ======================================================================
# 6. PHYSICAL MODELS & EQUATIONS OF STATE (Taxonomy Sec 5)
# ======================================================================
flow_model: compressible                   # [choose one: compressible | incompressible | auto] [default: compressible]
ideal_gas: y                    # [y/n] Compressible ideal gas law equation of state (p = rho * R * T) [default: y]
energy_equation: y              # [y/n] Solve thermal energy conservation equation [default: y]
turbulence_model: k-omega-sst             # [choose one: k-omega-sst | spalart-allmaras | k-epsilon-realizable | laminar] [default: k-omega-sst]
turbulence_intensity_percent: 1.0 # Inlet turbulence intensity percentage [%] [default: 1.0]
turbulent_viscosity_ratio: 10.0    # Inlet turbulent to laminar viscosity ratio mu_t/mu [default: 10.0]

# ======================================================================
# 7. NUMERICAL SCHEMES & SOLUTION CONTROLS (Taxonomy Sec 7 & 8)
# ======================================================================
algorithm: DensityBased                    # [choose one: DensityBased | SIMPLE | SIMPLEC | PISO | PIMPLE | Coupled] [default: DensityBased]
spatial_discretization_gradient: least-squares-cell-based # [choose one: least-squares-cell-based | green-gauss-node | green-gauss-cell] [default: least-squares-cell-based]
spatial_discretization_pressure: second-order # [choose one: second-order | standard | presto] [default: second-order]
spatial_discretization_momentum: second-order-upwind # [choose one: second-order-upwind | first-order-upwind | quick] [default: second-order-upwind]
spatial_discretization_energy: second-order-upwind # [choose one: second-order-upwind | first-order-upwind] [default: second-order-upwind]
courant_number_cfl: 1.0           # Pseudo-transient Courant-Friedrichs-Lewy (CFL) number [default: 1.0]
under_relaxation_pressure: 0.3    # Pressure under-relaxation factor [default: 0.3]
under_relaxation_momentum: 0.7    # Momentum under-relaxation factor [default: 0.7]
under_relaxation_energy: 1.0      # Energy under-relaxation factor [default: 1.0]
under_relaxation_turbulent_k: 0.8 # Turbulent kinetic energy under-relaxation factor [default: 0.8]
under_relaxation_turbulent_omega: 0.8 # Specific dissipation rate under-relaxation factor [default: 0.8]

# ======================================================================
# 8. INITIALIZATION, CONVERGENCE & RUN CONTROL (Taxonomy Sec 9 & 10)
# ======================================================================
initialization_method: standard        # [choose one: standard | hybrid | fmg] [default: standard]
max_iterations: 600               # Maximum solver iteration count [default: 1000]
convergence_criterion_continuity: 1e-05 # Residual threshold for mass conservation [default: 1.0e-5]
convergence_criterion_velocity: 1e-05   # Residual threshold for momentum components [default: 1.0e-5]
convergence_criterion_energy: 1e-06     # Residual threshold for energy conservation [default: 1.0e-6]
convergence_criterion_turbulence: 1e-05 # Residual threshold for turbulent quantities [default: 1.0e-5]
write_interval: 100               # Field snapshot output frequency in iterations [default: 100]

# ======================================================================
# 9. PARAMETRIC SWEEP (Cascade Matrix Operating Conditions)
# ======================================================================
aoa_list: -15.0, -10.0, -5.0, 0.0, 5.0, 10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0                     # Comma-separated sweep Angles of Attack in degrees [deg] [default: -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40]
velocity_list: 5.0, 10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0                # Comma-separated sweep inlet velocities in m/s [m/s] [default: 5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
single_case: n                  # [y/n] Run single isolated condition instead of full matrix sweep [default: n]
single_aoa: -5.0                   # Target Angle of Attack in degrees if single_case is y [deg] [default: -5.0]
single_velocity: 15.0              # Target inlet velocity in m/s if single_case is y [m/s] [default: 15.0]

# ======================================================================
# 10. EXECUTION ENVIRONMENT & REPORTING (Taxonomy Sec 0 & 11)
# ======================================================================
workers: 14                      # Number of parallel CPU worker processes [default: 14]
output: output/old/cascade_full_study                       # Root destination path for simulation outputs [default: output/old/cascade_full_study]
reuse_existing_solution: n      # [y/n] Reuse existing converged solution if present [default: n]
generate_plots: y               # [y/n] Generate 2D streamline, contour, and Cp distributions [default: y]
generate_report: y              # [y/n] Compile comprehensive engineering dossier and paper [default: y]
```
