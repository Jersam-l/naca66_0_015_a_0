# Velocity-Resolved Aerodynamic Polars & Cascade Metrics
**Study:** NACA 66(0)-015 Linear Cascade Performance Matrix  
**Sweep Scope:** 10 Velocity Bands ($U_\infty = 5$ to $50$ m/s, $Re_c = 33,333$ to $333,333$) across 12 Incidence Angles ($\alpha = -15^\circ$ to $+40^\circ$).  

---

## Velocity Bands Summary
| Velocity (m/s) | Chord Reynolds Number | Lift Slope $dC_l/d\alpha$ (1/rad) | Min Drag $C_{d,\min}$ | Peak $L/D$ | Polars Figure | Standalone Polars |
|---|---|---|---|---|---|---|
| 5 | 33,333 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_05mps.png](cascade_aerodynamic_polars_vel_05mps.png) | [Cl](cascade_cl_vs_alpha_vel_05mps.png), [Cd](cascade_cd_vs_alpha_vel_05mps.png), [L/D](cascade_ld_vs_alpha_vel_05mps.png) |
| 10 | 66,666 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_10mps.png](cascade_aerodynamic_polars_vel_10mps.png) | [Cl](cascade_cl_vs_alpha_vel_10mps.png), [Cd](cascade_cd_vs_alpha_vel_10mps.png), [L/D](cascade_ld_vs_alpha_vel_10mps.png) |
| 15 | 100,000 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_15mps.png](cascade_aerodynamic_polars_vel_15mps.png) | [Cl](cascade_cl_vs_alpha_vel_15mps.png), [Cd](cascade_cd_vs_alpha_vel_15mps.png), [L/D](cascade_ld_vs_alpha_vel_15mps.png) |
| 20 | 133,333 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_20mps.png](cascade_aerodynamic_polars_vel_20mps.png) | [Cl](cascade_cl_vs_alpha_vel_20mps.png), [Cd](cascade_cd_vs_alpha_vel_20mps.png), [L/D](cascade_ld_vs_alpha_vel_20mps.png) |
| 25 | 166,666 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_25mps.png](cascade_aerodynamic_polars_vel_25mps.png) | [Cl](cascade_cl_vs_alpha_vel_25mps.png), [Cd](cascade_cd_vs_alpha_vel_25mps.png), [L/D](cascade_ld_vs_alpha_vel_25mps.png) |
| 30 | 200,000 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_30mps.png](cascade_aerodynamic_polars_vel_30mps.png) | [Cl](cascade_cl_vs_alpha_vel_30mps.png), [Cd](cascade_cd_vs_alpha_vel_30mps.png), [L/D](cascade_ld_vs_alpha_vel_30mps.png) |
| 35 | 233,333 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_35mps.png](cascade_aerodynamic_polars_vel_35mps.png) | [Cl](cascade_cl_vs_alpha_vel_35mps.png), [Cd](cascade_cd_vs_alpha_vel_35mps.png), [L/D](cascade_ld_vs_alpha_vel_35mps.png) |
| 40 | 266,666 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_40mps.png](cascade_aerodynamic_polars_vel_40mps.png) | [Cl](cascade_cl_vs_alpha_vel_40mps.png), [Cd](cascade_cd_vs_alpha_vel_40mps.png), [L/D](cascade_ld_vs_alpha_vel_40mps.png) |
| 45 | 300,000 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_45mps.png](cascade_aerodynamic_polars_vel_45mps.png) | [Cl](cascade_cl_vs_alpha_vel_45mps.png), [Cd](cascade_cd_vs_alpha_vel_45mps.png), [L/D](cascade_ld_vs_alpha_vel_45mps.png) |
| 50 | 333,333 | 4.12 | 0.054 | 14.8 | [cascade_aerodynamic_polars_vel_50mps.png](cascade_aerodynamic_polars_vel_50mps.png) | [Cl](cascade_cl_vs_alpha_vel_50mps.png), [Cd](cascade_cd_vs_alpha_vel_50mps.png), [L/D](cascade_ld_vs_alpha_vel_50mps.png) |

---

## Plot Nomenclature & Methodology
- `cascade_aerodynamic_polars_vel_XXmps.png`: Consolidated 3-panel figure with $C_l(\alpha)$, $C_d(\alpha)$, and aerodynamic efficiency $C_l/C_d(\alpha)$.
- `cascade_cl_vs_alpha_vel_XXmps.png`: Dedicated high-resolution lift polar with zero-lift intercept and stall markers.
- `cascade_cd_vs_alpha_vel_XXmps.png`: Dedicated high-resolution drag polar detailing laminar drag bucket and stall rise.
- `cascade_drag_polar_vel_XXmps.png`: Direct $C_l$ versus $C_d$ polar trajectory with discrete incidence angle annotations.
- `cascade_ld_vs_alpha_vel_XXmps.png`: Aerodynamic glide ratio / efficiency curve across incidence angle.
- `cp_distribution_all_alphas_vel_XXmps.png`: Discrete chordwise blade surface pressure coefficient $C_p(x/c)$ on both suction and pressure surfaces across all 12 simulated angles of attack.
- All underlying numerical coordinates are archived in [`coordinates/`](coordinates).
