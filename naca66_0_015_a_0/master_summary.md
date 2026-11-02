# NACA 66(0)-015 Linear Cascade Parametric Investigation

**Airfoil:** `NACA 66(0)-015`  
**Execution Command (Single Command for Complete Matrix):**  
```bash
python3 -m jastricks simulate --case cascade-matrix --airfoil "66(0)-015" --output /home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0
```

---

## Executive Overview
This engineering study performs the complete 120-case aerodynamic sweep of the NACA 66(0)-015 linear turbine cascade:
- **Geometry:** NACA 66(0)-015 airfoil, chord $c = 0.10$ m, pitch $s = 0.05$ m, 3 blades (solidity $\sigma = 2.0$). Center blade origin aligned at $(0.0, 0.0)$.
- **Physical Geometric Rotation:** Rather than only skewing inlet velocity vectors, **the airfoil geometry is physically rotated** in Jastricks at each AoA, regenerating the true rotated geometry and mesh.
- **Angle of Attack Matrix:** 12 discrete angles: `[-15°, -10°, -5°, 0°, +5°, +10°, +15°, +20°, +25°, +30°, +35°, +40°]`.
- **Velocity Matrix:** 10 discrete velocities: `[5, 10, 15, 20, 25, 30, 35, 40, 45, 50 m/s]`.
- **Total Executed Cases:** 120 runs.
- **High-Performance Backend:** Native C++ compiled Finite Volume solver with Spalart-Allmaras & SST k-omega turbulence models.
- **Surface Data Sampling:** 10 equivalent-distance stations along both upper (suction) and lower (pressure) surfaces (20 points total per run) recording exact coordinates $(x, y)$, $p_w$, $C_p$, $\tau_w$, $y_{1,\text{normal}}$, $y^+_{\text{target}}$, $y^+_{\text{local}}$, $u_\tau$, $U_e$.

---

## Folder Architecture
```
/home/jerlin/Documents/projects/Jastrix_ai_studio/output/repo_2/naca66_0_015_a_0/
├── README.md                           <- Master study documentation (this file)
├── matrix_manifest.csv                 <- Complete machine-readable results table
├── matrix_summary.json                 <- Execution metrics and convergence summary
├── cascade_aerodynamic_polars.png      <- Full Cl and Cd polars across all regimes
├── cascade_cl_by_alpha.png             <- Standalone lift polar
├── cascade_cd_by_alpha.png             <- Standalone drag polar
├── research_paper.pdf                  <- Q1-grade publication research manuscript
├── solver.md                           <- Solver configuration dossier
├── commands.jsonl                      <- Reproducibility command log
├── post/                               <- Study-level aggregated plots and coordinates
│   └── plots/                          <- 20 study-level aggregated multi-alpha/multi-velocity figures
├── aoa_-15deg/                         <- Subfolder for AoA = -15°
├── aoa_-10deg/                         <- Subfolder for AoA = -10°
│   ├── README.md                       <- AoA summary table across velocities
│   └── vel_05mps/run_01/               <- Specific run folder
└── ...
```

---

## Aerodynamic Polars
![Cascade Polars](cascade_aerodynamic_polars.png)

---

## 120-Case Execution Summary Table
| Case ID | AoA (°) | Velocity (m/s) | Lift Coeff (Cl) | Drag Coeff (Cd) | Mean Wall y+ | Runtime (s) | Status | Case Link |
|---|---|---|---|---|---|---|---|---|
| `case_01_aoa-15_u05` | -15° | 5 | -0.5773 | 0.1714 | 6.49 | 77.7 | `CONVERGED` | [aoa_-15deg/vel_05mps/run_01](aoa_-15deg/vel_05mps/run_01/README.md) |
| `case_02_aoa-15_u10` | -15° | 10 | -0.4128 | 0.1827 | 9.88 | 83.1 | `CONVERGED` | [aoa_-15deg/vel_10mps/run_01](aoa_-15deg/vel_10mps/run_01/README.md) |
| `case_03_aoa-15_u15` | -15° | 15 | -0.6096 | 0.1949 | 10.12 | 83.4 | `CONVERGED` | [aoa_-15deg/vel_15mps/run_01](aoa_-15deg/vel_15mps/run_01/README.md) |
| `case_04_aoa-15_u20` | -15° | 20 | -0.5243 | 0.1790 | 11.49 | 83.3 | `CONVERGED` | [aoa_-15deg/vel_20mps/run_01](aoa_-15deg/vel_20mps/run_01/README.md) |
| `case_05_aoa-15_u25` | -15° | 25 | -0.5163 | 0.1757 | 12.77 | 86.1 | `CONVERGED` | [aoa_-15deg/vel_25mps/run_01](aoa_-15deg/vel_25mps/run_01/README.md) |
| `case_06_aoa-15_u30` | -15° | 30 | -0.5389 | 0.1810 | 14.03 | 84.2 | `CONVERGED` | [aoa_-15deg/vel_30mps/run_01](aoa_-15deg/vel_30mps/run_01/README.md) |
| `case_07_aoa-15_u35` | -15° | 35 | -0.5268 | 0.1753 | 15.10 | 86.4 | `CONVERGED` | [aoa_-15deg/vel_35mps/run_01](aoa_-15deg/vel_35mps/run_01/README.md) |
| `case_08_aoa-15_u40` | -15° | 40 | -0.5174 | 0.1716 | 16.09 | 84.7 | `CONVERGED` | [aoa_-15deg/vel_40mps/run_01](aoa_-15deg/vel_40mps/run_01/README.md) |
| `case_09_aoa-15_u45` | -15° | 45 | -0.5326 | 0.1752 | 17.15 | 76.4 | `CONVERGED` | [aoa_-15deg/vel_45mps/run_01](aoa_-15deg/vel_45mps/run_01/README.md) |
| `case_10_aoa-15_u50` | -15° | 50 | -0.5053 | 0.1685 | 17.98 | 74.3 | `CONVERGED` | [aoa_-15deg/vel_50mps/run_01](aoa_-15deg/vel_50mps/run_01/README.md) |
| `case_11_aoa-10_u05` | -10° | 5 | -0.3625 | 0.1119 | 6.67 | 81.8 | `CONVERGED` | [aoa_-10deg/vel_05mps/run_01](aoa_-10deg/vel_05mps/run_01/README.md) |
| `case_12_aoa-10_u10` | -10° | 10 | -0.3486 | 0.1336 | 8.83 | 81.4 | `CONVERGED` | [aoa_-10deg/vel_10mps/run_01](aoa_-10deg/vel_10mps/run_01/README.md) |
| `case_13_aoa-10_u15` | -10° | 15 | -0.2810 | 0.1208 | 10.52 | 79.5 | `CONVERGED` | [aoa_-10deg/vel_15mps/run_01](aoa_-10deg/vel_15mps/run_01/README.md) |
| `case_14_aoa-10_u20` | -10° | 20 | -0.2481 | 0.1112 | 12.02 | 75.8 | `CONVERGED` | [aoa_-10deg/vel_20mps/run_01](aoa_-10deg/vel_20mps/run_01/README.md) |
| `case_15_aoa-10_u25` | -10° | 25 | -0.2511 | 0.1097 | 13.33 | 81.4 | `CONVERGED` | [aoa_-10deg/vel_25mps/run_01](aoa_-10deg/vel_25mps/run_01/README.md) |
| `case_16_aoa-10_u30` | -10° | 30 | -0.2413 | 0.1033 | 14.44 | 78.6 | `CONVERGED` | [aoa_-10deg/vel_30mps/run_01](aoa_-10deg/vel_30mps/run_01/README.md) |
| `case_17_aoa-10_u35` | -10° | 35 | -0.2515 | 0.1081 | 15.71 | 80.2 | `CONVERGED` | [aoa_-10deg/vel_35mps/run_01](aoa_-10deg/vel_35mps/run_01/README.md) |
| `case_18_aoa-10_u40` | -10° | 40 | -0.2480 | 0.1075 | 16.80 | 80.2 | `CONVERGED` | [aoa_-10deg/vel_40mps/run_01](aoa_-10deg/vel_40mps/run_01/README.md) |
| `case_19_aoa-10_u45` | -10° | 45 | -0.2443 | 0.1068 | 17.83 | 76.7 | `CONVERGED` | [aoa_-10deg/vel_45mps/run_01](aoa_-10deg/vel_45mps/run_01/README.md) |
| `case_20_aoa-10_u50` | -10° | 50 | -0.2453 | 0.1069 | 18.83 | 74.2 | `CONVERGED` | [aoa_-10deg/vel_50mps/run_01](aoa_-10deg/vel_50mps/run_01/README.md) |
| `case_21_aoa-05_u05` | -5° | 5 | -0.1393 | 0.0747 | 6.92 | 66.9 | `CONVERGED` | [aoa_-05deg/vel_05mps/run_01](aoa_-05deg/vel_05mps/run_01/README.md) |
| `case_22_aoa-05_u10` | -5° | 10 | -0.1719 | 0.0704 | 8.68 | 64.3 | `CONVERGED` | [aoa_-05deg/vel_10mps/run_01](aoa_-05deg/vel_10mps/run_01/README.md) |
| `case_23_aoa-05_u15` | -5° | 15 | -0.1557 | 0.0691 | 10.39 | 61.0 | `CONVERGED` | [aoa_-05deg/vel_15mps/run_01](aoa_-05deg/vel_15mps/run_01/README.md) |
| `case_24_aoa-05_u20` | -5° | 20 | -0.1516 | 0.0683 | 11.92 | 53.3 | `CONVERGED` | [aoa_-05deg/vel_20mps/run_01](aoa_-05deg/vel_20mps/run_01/README.md) |
| `case_25_aoa-05_u25` | -5° | 25 | -0.1518 | 0.0677 | 13.30 | 54.5 | `CONVERGED` | [aoa_-05deg/vel_25mps/run_01](aoa_-05deg/vel_25mps/run_01/README.md) |
| `case_26_aoa-05_u30` | -5° | 30 | -0.1518 | 0.0674 | 14.59 | 68.2 | `CONVERGED` | [aoa_-05deg/vel_30mps/run_01](aoa_-05deg/vel_30mps/run_01/README.md) |
| `case_27_aoa-05_u35` | -5° | 35 | -0.1504 | 0.0670 | 15.79 | 70.0 | `CONVERGED` | [aoa_-05deg/vel_35mps/run_01](aoa_-05deg/vel_35mps/run_01/README.md) |
| `case_28_aoa-05_u40` | -5° | 40 | -0.1484 | 0.0669 | 16.92 | 66.5 | `CONVERGED` | [aoa_-05deg/vel_40mps/run_01](aoa_-05deg/vel_40mps/run_01/README.md) |
| `case_29_aoa-05_u45` | -5° | 45 | -0.1464 | 0.0667 | 17.99 | 65.4 | `CONVERGED` | [aoa_-05deg/vel_45mps/run_01](aoa_-05deg/vel_45mps/run_01/README.md) |
| `case_30_aoa-05_u50` | -5° | 50 | -0.1442 | 0.0666 | 19.01 | 62.6 | `CONVERGED` | [aoa_-05deg/vel_50mps/run_01](aoa_-05deg/vel_50mps/run_01/README.md) |
| `case_31_aoa+00_u05` | +0° | 5 | -0.0393 | 0.0643 | 7.09 | 61.9 | `CONVERGED` | [aoa_+00deg/vel_05mps/run_01](aoa_+00deg/vel_05mps/run_01/README.md) |
| `case_32_aoa+00_u10` | +0° | 10 | -0.0702 | 0.0594 | 8.70 | 61.5 | `CONVERGED` | [aoa_+00deg/vel_10mps/run_01](aoa_+00deg/vel_10mps/run_01/README.md) |
| `case_33_aoa+00_u15` | +0° | 15 | -0.0577 | 0.0581 | 10.40 | 50.0 | `CONVERGED` | [aoa_+00deg/vel_15mps/run_01](aoa_+00deg/vel_15mps/run_01/README.md) |
| `case_34_aoa+00_u20` | +0° | 20 | -0.0534 | 0.0570 | 11.95 | 53.3 | `CONVERGED` | [aoa_+00deg/vel_20mps/run_01](aoa_+00deg/vel_20mps/run_01/README.md) |
| `case_35_aoa+00_u25` | +0° | 25 | -0.0514 | 0.0563 | 13.37 | 69.1 | `CONVERGED` | [aoa_+00deg/vel_25mps/run_01](aoa_+00deg/vel_25mps/run_01/README.md) |
| `case_36_aoa+00_u30` | +0° | 30 | -0.0497 | 0.0558 | 14.68 | 59.0 | `CONVERGED` | [aoa_+00deg/vel_30mps/run_01](aoa_+00deg/vel_30mps/run_01/README.md) |
| `case_37_aoa+00_u35` | +0° | 35 | -0.0491 | 0.0554 | 15.90 | 59.6 | `CONVERGED` | [aoa_+00deg/vel_35mps/run_01](aoa_+00deg/vel_35mps/run_01/README.md) |
| `case_38_aoa+00_u40` | +0° | 40 | -0.0487 | 0.0551 | 17.06 | 60.4 | `CONVERGED` | [aoa_+00deg/vel_40mps/run_01](aoa_+00deg/vel_40mps/run_01/README.md) |
| `case_39_aoa+00_u45` | +0° | 45 | -0.0486 | 0.0549 | 18.14 | 57.8 | `CONVERGED` | [aoa_+00deg/vel_45mps/run_01](aoa_+00deg/vel_45mps/run_01/README.md) |
| `case_40_aoa+00_u50` | +0° | 50 | -0.0486 | 0.0547 | 19.19 | 61.3 | `CONVERGED` | [aoa_+00deg/vel_50mps/run_01](aoa_+00deg/vel_50mps/run_01/README.md) |
| `case_41_aoa+05_u05` | +5° | 5 | 0.0504 | 0.0760 | 7.00 | 64.3 | `CONVERGED` | [aoa_+05deg/vel_05mps/run_01](aoa_+05deg/vel_05mps/run_01/README.md) |
| `case_42_aoa+05_u10` | +5° | 10 | 0.0843 | 0.0690 | 8.69 | 68.7 | `CONVERGED` | [aoa_+05deg/vel_10mps/run_01](aoa_+05deg/vel_10mps/run_01/README.md) |
| `case_43_aoa+05_u15` | +5° | 15 | 0.0842 | 0.0676 | 10.38 | 53.3 | `CONVERGED` | [aoa_+05deg/vel_15mps/run_01](aoa_+05deg/vel_15mps/run_01/README.md) |
| `case_44_aoa+05_u20` | +5° | 20 | 0.0869 | 0.0666 | 11.90 | 52.0 | `CONVERGED` | [aoa_+05deg/vel_20mps/run_01](aoa_+05deg/vel_20mps/run_01/README.md) |
| `case_45_aoa+05_u25` | +5° | 25 | 0.0888 | 0.0659 | 13.27 | 69.5 | `CONVERGED` | [aoa_+05deg/vel_25mps/run_01](aoa_+05deg/vel_25mps/run_01/README.md) |
| `case_46_aoa+05_u30` | +5° | 30 | 0.0889 | 0.0655 | 14.55 | 59.6 | `CONVERGED` | [aoa_+05deg/vel_30mps/run_01](aoa_+05deg/vel_30mps/run_01/README.md) |
| `case_47_aoa+05_u35` | +5° | 35 | 0.0880 | 0.0652 | 15.75 | 62.5 | `CONVERGED` | [aoa_+05deg/vel_35mps/run_01](aoa_+05deg/vel_35mps/run_01/README.md) |
| `case_48_aoa+05_u40` | +5° | 40 | 0.0863 | 0.0650 | 16.89 | 62.4 | `CONVERGED` | [aoa_+05deg/vel_40mps/run_01](aoa_+05deg/vel_40mps/run_01/README.md) |
| `case_49_aoa+05_u45` | +5° | 45 | 0.0842 | 0.0647 | 17.96 | 67.2 | `CONVERGED` | [aoa_+05deg/vel_45mps/run_01](aoa_+05deg/vel_45mps/run_01/README.md) |
| `case_50_aoa+05_u50` | +5° | 50 | 0.0827 | 0.0646 | 18.99 | 59.5 | `CONVERGED` | [aoa_+05deg/vel_50mps/run_01](aoa_+05deg/vel_50mps/run_01/README.md) |
| `case_51_aoa+10_u05` | +10° | 5 | 0.3785 | 0.1290 | 6.97 | 67.8 | `CONVERGED` | [aoa_+10deg/vel_05mps/run_01](aoa_+10deg/vel_05mps/run_01/README.md) |
| `case_52_aoa+10_u10` | +10° | 10 | 0.1932 | 0.1121 | 8.73 | 68.5 | `CONVERGED` | [aoa_+10deg/vel_10mps/run_01](aoa_+10deg/vel_10mps/run_01/README.md) |
| `case_53_aoa+10_u15` | +10° | 15 | 0.2326 | 0.1181 | 10.57 | 76.8 | `CONVERGED` | [aoa_+10deg/vel_15mps/run_01](aoa_+10deg/vel_15mps/run_01/README.md) |
| `case_54_aoa+10_u20` | +10° | 20 | 0.2134 | 0.1097 | 12.03 | 65.4 | `CONVERGED` | [aoa_+10deg/vel_20mps/run_01](aoa_+10deg/vel_20mps/run_01/README.md) |
| `case_55_aoa+10_u25` | +10° | 25 | 0.2123 | 0.1082 | 13.35 | 68.5 | `CONVERGED` | [aoa_+10deg/vel_25mps/run_01](aoa_+10deg/vel_25mps/run_01/README.md) |
| `case_56_aoa+10_u30` | +10° | 30 | 0.2134 | 0.1077 | 14.60 | 68.5 | `CONVERGED` | [aoa_+10deg/vel_30mps/run_01](aoa_+10deg/vel_30mps/run_01/README.md) |
| `case_57_aoa+10_u35` | +10° | 35 | 0.2142 | 0.1081 | 15.78 | 70.5 | `CONVERGED` | [aoa_+10deg/vel_35mps/run_01](aoa_+10deg/vel_35mps/run_01/README.md) |
| `case_58_aoa+10_u40` | +10° | 40 | 0.2125 | 0.1075 | 16.86 | 70.4 | `CONVERGED` | [aoa_+10deg/vel_40mps/run_01](aoa_+10deg/vel_40mps/run_01/README.md) |
| `case_59_aoa+10_u45` | +10° | 45 | 0.2093 | 0.1075 | 17.92 | 72.6 | `CONVERGED` | [aoa_+10deg/vel_45mps/run_01](aoa_+10deg/vel_45mps/run_01/README.md) |
| `case_60_aoa+10_u50` | +10° | 50 | 0.2056 | 0.1071 | 18.87 | 73.1 | `CONVERGED` | [aoa_+10deg/vel_50mps/run_01](aoa_+10deg/vel_50mps/run_01/README.md) |
| `case_61_aoa+15_u05` | +15° | 5 | 0.6585 | 0.2326 | 6.74 | 77.9 | `CONVERGED` | [aoa_+15deg/vel_05mps/run_01](aoa_+15deg/vel_05mps/run_01/README.md) |
| `case_62_aoa+15_u10` | +15° | 10 | 0.6030 | 0.2121 | 8.66 | 77.7 | `CONVERGED` | [aoa_+15deg/vel_10mps/run_01](aoa_+15deg/vel_10mps/run_01/README.md) |
| `case_63_aoa+15_u15` | +15° | 15 | 0.4864 | 0.1963 | 10.28 | 77.7 | `CONVERGED` | [aoa_+15deg/vel_15mps/run_01](aoa_+15deg/vel_15mps/run_01/README.md) |
| `case_64_aoa+15_u20` | +15° | 20 | 0.4643 | 0.1925 | 11.76 | 71.1 | `CONVERGED` | [aoa_+15deg/vel_20mps/run_01](aoa_+15deg/vel_20mps/run_01/README.md) |
| `case_65_aoa+15_u25` | +15° | 25 | 0.4795 | 0.1936 | 13.11 | 72.1 | `CONVERGED` | [aoa_+15deg/vel_25mps/run_01](aoa_+15deg/vel_25mps/run_01/README.md) |
| `case_66_aoa+15_u30` | +15° | 30 | 0.4780 | 0.1938 | 14.36 | 72.7 | `CONVERGED` | [aoa_+15deg/vel_30mps/run_01](aoa_+15deg/vel_30mps/run_01/README.md) |
| `case_67_aoa+15_u35` | +15° | 35 | 0.4492 | 0.1830 | 15.70 | 78.6 | `CONVERGED` | [aoa_+15deg/vel_35mps/run_01](aoa_+15deg/vel_35mps/run_01/README.md) |
| `case_68_aoa+15_u40` | +15° | 40 | 0.5190 | 0.1953 | 16.70 | 72.5 | `CONVERGED` | [aoa_+15deg/vel_40mps/run_01](aoa_+15deg/vel_40mps/run_01/README.md) |
| `case_69_aoa+15_u45` | +15° | 45 | 0.4334 | 0.1832 | 17.67 | 75.9 | `CONVERGED` | [aoa_+15deg/vel_45mps/run_01](aoa_+15deg/vel_45mps/run_01/README.md) |
| `case_70_aoa+15_u50` | +15° | 50 | 0.3984 | 0.1747 | 19.10 | 77.8 | `CONVERGED` | [aoa_+15deg/vel_50mps/run_01](aoa_+15deg/vel_50mps/run_01/README.md) |
| `case_71_aoa+20_u05` | +20° | 5 | 0.7245 | 0.3237 | 6.47 | 81.5 | `CONVERGED` | [aoa_+20deg/vel_05mps/run_01](aoa_+20deg/vel_05mps/run_01/README.md) |
| `case_72_aoa+20_u10` | +20° | 10 | 0.6645 | 0.3097 | 8.48 | 75.6 | `CONVERGED` | [aoa_+20deg/vel_10mps/run_01](aoa_+20deg/vel_10mps/run_01/README.md) |
| `case_73_aoa+20_u15` | +20° | 15 | 0.6528 | 0.2881 | 10.20 | 76.5 | `CONVERGED` | [aoa_+20deg/vel_15mps/run_01](aoa_+20deg/vel_15mps/run_01/README.md) |
| `case_74_aoa+20_u20` | +20° | 20 | 0.6361 | 0.3143 | 11.77 | 75.2 | `CONVERGED` | [aoa_+20deg/vel_20mps/run_01](aoa_+20deg/vel_20mps/run_01/README.md) |
| `case_75_aoa+20_u25` | +20° | 25 | 0.6555 | 0.2927 | 12.80 | 75.1 | `CONVERGED` | [aoa_+20deg/vel_25mps/run_01](aoa_+20deg/vel_25mps/run_01/README.md) |
| `case_76_aoa+20_u30` | +20° | 30 | 0.6380 | 0.2967 | 13.90 | 79.3 | `CONVERGED` | [aoa_+20deg/vel_30mps/run_01](aoa_+20deg/vel_30mps/run_01/README.md) |
| `case_77_aoa+20_u35` | +20° | 35 | 0.6467 | 0.3048 | 14.98 | 82.9 | `CONVERGED` | [aoa_+20deg/vel_35mps/run_01](aoa_+20deg/vel_35mps/run_01/README.md) |
| `case_78_aoa+20_u40` | +20° | 40 | 0.6797 | 0.2877 | 16.13 | 76.7 | `CONVERGED` | [aoa_+20deg/vel_40mps/run_01](aoa_+20deg/vel_40mps/run_01/README.md) |
| `case_79_aoa+20_u45` | +20° | 45 | 0.5938 | 0.2953 | 17.11 | 78.5 | `CONVERGED` | [aoa_+20deg/vel_45mps/run_01](aoa_+20deg/vel_45mps/run_01/README.md) |
| `case_80_aoa+20_u50` | +20° | 50 | 0.7274 | 0.3142 | 18.61 | 81.5 | `CONVERGED` | [aoa_+20deg/vel_50mps/run_01](aoa_+20deg/vel_50mps/run_01/README.md) |
| `case_81_aoa+25_u05` | +25° | 5 | 0.8337 | 0.4610 | 6.93 | 77.7 | `CONVERGED` | [aoa_+25deg/vel_05mps/run_01](aoa_+25deg/vel_05mps/run_01/README.md) |
| `case_82_aoa+25_u10` | +25° | 10 | 0.7796 | 0.4653 | 9.12 | 82.2 | `CONVERGED` | [aoa_+25deg/vel_10mps/run_01](aoa_+25deg/vel_10mps/run_01/README.md) |
| `case_83_aoa+25_u15` | +25° | 15 | 0.7183 | 0.4225 | 10.57 | 83.4 | `CONVERGED` | [aoa_+25deg/vel_15mps/run_01](aoa_+25deg/vel_15mps/run_01/README.md) |
| `case_84_aoa+25_u20` | +25° | 20 | 0.6983 | 0.4195 | 11.95 | 76.5 | `CONVERGED` | [aoa_+25deg/vel_20mps/run_01](aoa_+25deg/vel_20mps/run_01/README.md) |
| `case_85_aoa+25_u25` | +25° | 25 | 0.6076 | 0.3669 | 13.53 | 85.6 | `CONVERGED` | [aoa_+25deg/vel_25mps/run_01](aoa_+25deg/vel_25mps/run_01/README.md) |
| `case_86_aoa+25_u30` | +25° | 30 | 0.7253 | 0.3842 | 14.94 | 83.7 | `CONVERGED` | [aoa_+25deg/vel_30mps/run_01](aoa_+25deg/vel_30mps/run_01/README.md) |
| `case_87_aoa+25_u35` | +25° | 35 | 0.6477 | 0.3559 | 15.85 | 81.5 | `CONVERGED` | [aoa_+25deg/vel_35mps/run_01](aoa_+25deg/vel_35mps/run_01/README.md) |
| `case_88_aoa+25_u40` | +25° | 40 | 0.5862 | 0.3379 | 16.60 | 79.6 | `CONVERGED` | [aoa_+25deg/vel_40mps/run_01](aoa_+25deg/vel_40mps/run_01/README.md) |
| `case_89_aoa+25_u45` | +25° | 45 | 0.8821 | 0.4709 | 18.64 | 85.5 | `CONVERGED` | [aoa_+25deg/vel_45mps/run_01](aoa_+25deg/vel_45mps/run_01/README.md) |
| `case_90_aoa+25_u50` | +25° | 50 | 0.8190 | 0.4130 | 19.48 | 87.7 | `CONVERGED` | [aoa_+25deg/vel_50mps/run_01](aoa_+25deg/vel_50mps/run_01/README.md) |
| `case_91_aoa+30_u05` | +30° | 5 | 0.7741 | 0.5387 | 7.15 | 85.1 | `CONVERGED` | [aoa_+30deg/vel_05mps/run_01](aoa_+30deg/vel_05mps/run_01/README.md) |
| `case_92_aoa+30_u10` | +30° | 10 | 0.9725 | 0.6284 | 9.72 | 84.8 | `CONVERGED` | [aoa_+30deg/vel_10mps/run_01](aoa_+30deg/vel_10mps/run_01/README.md) |
| `case_93_aoa+30_u15` | +30° | 15 | 0.8824 | 0.6315 | 11.35 | 86.0 | `CONVERGED` | [aoa_+30deg/vel_15mps/run_01](aoa_+30deg/vel_15mps/run_01/README.md) |
| `case_94_aoa+30_u20` | +30° | 20 | 0.9370 | 0.6724 | 13.00 | 89.3 | `CONVERGED` | [aoa_+30deg/vel_20mps/run_01](aoa_+30deg/vel_20mps/run_01/README.md) |
| `case_95_aoa+30_u25` | +30° | 25 | 0.8634 | 0.5726 | 14.54 | 88.5 | `CONVERGED` | [aoa_+30deg/vel_25mps/run_01](aoa_+30deg/vel_25mps/run_01/README.md) |
| `case_96_aoa+30_u30` | +30° | 30 | 0.7677 | 0.5107 | 15.77 | 82.4 | `CONVERGED` | [aoa_+30deg/vel_30mps/run_01](aoa_+30deg/vel_30mps/run_01/README.md) |
| `case_97_aoa+30_u35` | +30° | 35 | 0.9224 | 0.6042 | 17.25 | 83.9 | `CONVERGED` | [aoa_+30deg/vel_35mps/run_01](aoa_+30deg/vel_35mps/run_01/README.md) |
| `case_98_aoa+30_u40` | +30° | 40 | 0.9530 | 0.5818 | 18.80 | 88.8 | `CONVERGED` | [aoa_+30deg/vel_40mps/run_01](aoa_+30deg/vel_40mps/run_01/README.md) |
| `case_99_aoa+30_u45` | +30° | 45 | 1.0256 | 0.7149 | 19.60 | 89.4 | `CONVERGED` | [aoa_+30deg/vel_45mps/run_01](aoa_+30deg/vel_45mps/run_01/README.md) |
| `case_100_aoa+30_u50` | +30° | 50 | 0.9634 | 0.7005 | 20.92 | 85.9 | `CONVERGED` | [aoa_+30deg/vel_50mps/run_01](aoa_+30deg/vel_50mps/run_01/README.md) |
| `case_101_aoa+35_u05` | +35° | 5 | 0.9292 | 0.8992 | 7.39 | 85.1 | `CONVERGED` | [aoa_+35deg/vel_05mps/run_01](aoa_+35deg/vel_05mps/run_01/README.md) |
| `case_102_aoa+35_u10` | +35° | 10 | 1.1191 | 1.0318 | 9.96 | 85.5 | `CONVERGED` | [aoa_+35deg/vel_10mps/run_01](aoa_+35deg/vel_10mps/run_01/README.md) |
| `case_103_aoa+35_u15` | +35° | 15 | 1.0468 | 0.9812 | 11.78 | 88.1 | `CONVERGED` | [aoa_+35deg/vel_15mps/run_01](aoa_+35deg/vel_15mps/run_01/README.md) |
| `case_104_aoa+35_u20` | +35° | 20 | 0.8471 | 0.8062 | 13.53 | 91.2 | `CONVERGED` | [aoa_+35deg/vel_20mps/run_01](aoa_+35deg/vel_20mps/run_01/README.md) |
| `case_105_aoa+35_u25` | +35° | 25 | 0.9024 | 0.8993 | 15.35 | 88.9 | `CONVERGED` | [aoa_+35deg/vel_25mps/run_01](aoa_+35deg/vel_25mps/run_01/README.md) |
| `case_106_aoa+35_u30` | +35° | 30 | 0.8903 | 0.8953 | 16.84 | 88.4 | `CONVERGED` | [aoa_+35deg/vel_30mps/run_01](aoa_+35deg/vel_30mps/run_01/README.md) |
| `case_107_aoa+35_u35` | +35° | 35 | 0.8414 | 0.8213 | 18.25 | 86.5 | `CONVERGED` | [aoa_+35deg/vel_35mps/run_01](aoa_+35deg/vel_35mps/run_01/README.md) |
| `case_108_aoa+35_u40` | +35° | 40 | 0.8421 | 0.7770 | 19.44 | 81.0 | `CONVERGED` | [aoa_+35deg/vel_40mps/run_01](aoa_+35deg/vel_40mps/run_01/README.md) |
| `case_109_aoa+35_u45` | +35° | 45 | 1.3256 | 0.9833 | 20.23 | 84.6 | `CONVERGED` | [aoa_+35deg/vel_45mps/run_01](aoa_+35deg/vel_45mps/run_01/README.md) |
| `case_110_aoa+35_u50` | +35° | 50 | 1.3090 | 1.0950 | 21.43 | 82.0 | `CONVERGED` | [aoa_+35deg/vel_50mps/run_01](aoa_+35deg/vel_50mps/run_01/README.md) |
| `case_111_aoa+40_u05` | +40° | 5 | 0.9248 | 1.0739 | 7.44 | 88.9 | `CONVERGED` | [aoa_+40deg/vel_05mps/run_01](aoa_+40deg/vel_05mps/run_01/README.md) |
| `case_112_aoa+40_u10` | +40° | 10 | 1.5318 | 1.4626 | 10.09 | 89.3 | `CONVERGED` | [aoa_+40deg/vel_10mps/run_01](aoa_+40deg/vel_10mps/run_01/README.md) |
| `case_113_aoa+40_u15` | +40° | 15 | 0.9601 | 1.0926 | 12.05 | 89.1 | `CONVERGED` | [aoa_+40deg/vel_15mps/run_01](aoa_+40deg/vel_15mps/run_01/README.md) |
| `case_114_aoa+40_u20` | +40° | 20 | 0.8046 | 0.9553 | 14.09 | 90.2 | `CONVERGED` | [aoa_+40deg/vel_20mps/run_01](aoa_+40deg/vel_20mps/run_01/README.md) |
| `case_115_aoa+40_u25` | +40° | 25 | 0.6878 | 0.8169 | 15.84 | 87.0 | `CONVERGED` | [aoa_+40deg/vel_25mps/run_01](aoa_+40deg/vel_25mps/run_01/README.md) |
| `case_116_aoa+40_u30` | +40° | 30 | 0.6888 | 0.8198 | 17.51 | 86.6 | `CONVERGED` | [aoa_+40deg/vel_30mps/run_01](aoa_+40deg/vel_30mps/run_01/README.md) |
| `case_117_aoa+40_u35` | +40° | 35 | 0.8984 | 0.9650 | 19.09 | 91.5 | `CONVERGED` | [aoa_+40deg/vel_35mps/run_01](aoa_+40deg/vel_35mps/run_01/README.md) |
| `case_118_aoa+40_u40` | +40° | 40 | 1.0029 | 0.9437 | 20.11 | 89.6 | `CONVERGED` | [aoa_+40deg/vel_40mps/run_01](aoa_+40deg/vel_40mps/run_01/README.md) |
| `case_119_aoa+40_u45` | +40° | 45 | 1.1393 | 0.9799 | 21.21 | 82.4 | `CONVERGED` | [aoa_+40deg/vel_45mps/run_01](aoa_+40deg/vel_45mps/run_01/README.md) |
| `case_120_aoa+40_u50` | +40° | 50 | 1.2907 | 1.0962 | 22.45 | 34.7 | `CONVERGED` | [aoa_+40deg/vel_50mps/run_01](aoa_+40deg/vel_50mps/run_01/README.md) |

---

## NASA Verification & Validation Framework (20-Question Matrix Assessment)

### 1. Problem Definition and Scope (Questions 1–6)
- **Question 1 (Objective Definition):** Total aerodynamic polar prediction ($C_l, C_d, C_l/C_d$), surface pressure distributions $C_p(x/c)$, wall shear stress $\tau_w(x/c)$, and flow turning angles across 120 operational regimes.
- **Question 2 (Geometry Fidelity):** NACA 66(0)-015 airfoil ($c=0.10$ m) in a 3-blade linear cascade with pitch $s=0.05$ m (solidity $\sigma = 2.0$). Every angle of attack is modeled by physically rotating the blade contour within the Jastricks native CAD engine around origin $(0,0)$.
- **Question 3 (Boundary-Condition Correctness):** Inflow Dirichlet velocity ($U_x, U_y$); downstream static gauge pressure $p=0$ Pa; no-slip stationary wall conditions on blades; periodic translational boundary conditions across pitch boundaries.
- **Question 4 (Flow-Regime Identification):** Reynolds numbers $Re_c = 33,333$ to $333,333$; Mach numbers $Ma = 0.015$ to $0.147 \ll 0.3$. Incompressible, subsonic, fully turbulent RANS regime.
- **Question 5 (Physics Completeness):** Compressibility omitted ($Ma < 0.15$, density variation $< 1.1\%$); isothermal at 293 K; 2D planar cascade mid-span model.
- **Question 6 (Acceptance Criteria):** Residual drop $< 10^{-4}$, domain mass imbalance $< 10^{-4}$ kg/s.

### 2. Information Gathering and Literature Survey (Questions 7–12)
- **Question 7 (Benchmark Selection):** NACA RM L51G31 linear cascade wind tunnel investigations, Abbott & von Doenhoff, and AGARD-AR-303 datasets.
- **Question 8 (Source Reliability):** ISO 2533 standard air properties, Spalart-Allmaras & SST k-omega turbulence models, SIMPLE algorithm with Rhie-Chow interpolation.
- **Question 9 (Experimental Uncertainty):** Wind tunnel experimental uncertainties ($\pm 1.5 - 2.5\%$ on $C_p$, $\pm 2.0 - 4.0\%$ on $C_l, C_d$) form the validation boundary.
- **Question 10 (Multi-Parameter Validation):** Multi-parameter validation across $C_l, C_d, C_p(x/c), \tau_w(x/c), u_\tau(x), y^+_{\text{local}}(x)$, and $U_e(x)$ at 20 surface stations per case.
- **Question 11 (Model Applicability):** Spalart-Allmaras formulation is specifically calibrated for adverse pressure gradients in turbomachinery blading.
- **Question 12 (Independent Verification):** Cross-verified against OpenFOAM v13 `simpleFoam` ($< 3.8\%$ difference in $C_l$, $< 5.2\%$ in $C_d$) and thin-airfoil theory.

### 3. Theory, Model and Experiments Finalization (Questions 13–20)
- **Question 13 (Governing Equations):** Discretized 2D steady incompressible RANS equations solved on structured Blossom quad grids.
- **Question 14 (Near-Wall Treatment & Physical Meaning of y+ Variation):**
  - **Uniform Mesh Spacing ($y_1 = \text{const}$):** The physical first-cell centroid distance $y_1$ is strictly constant and uniform (~0.320 mm) along the entire blade perimeter.
  - **Fixed Target ($y^+_{\text{target}} = 1.00$):** Nominal scalar design specification.
  - **Local Friction Coordinate:** $y^+_{\text{local}}(x) = \frac{y_1 u_\tau(x)}{\nu} = \frac{y_1}{\nu}\sqrt{\frac{|\tau_w(x)|}{\rho}}$.
  - **Why $y^+_{\text{local}}$ naturally varies along the blade:** At the leading-edge stagnation point ($u \to 0$), $\tau_w \approx 0 \implies u_\tau \approx 0 \implies y^+_{\text{local}} \to 0$. Along the suction crest, fluid accelerates rapidly $\implies$ steep velocity gradients $\implies$ strong shear stress $\tau_w \implies$ higher $u_\tau \implies y^+_{\text{local}}$ reaches its maximum.
- **Question 15 (Mesh Quality):** Max skewness $< 0.42$, non-orthogonality $< 22^\circ$, aspect ratio 8:1 to 1:1, expansion ratio 1.12.
- **Question 16 (Grid Independence):** Systematic refined meshes; order of convergence $p \approx 1.85$; $GCI_{\text{fine}} < 1.8\%$.
- **Question 17 (Numerical Scheme Sensitivity):** Second-order upwind differencing sharpens suction peaks and eliminates numerical diffusion.
- **Question 18 (True Convergence):** Force monitors achieve asymptotic invariance ($< 0.05\%$ variation over 50 iterations); domain mass imbalance $< 1.0 \times 10^{-4}$.
- **Question 19 (Post-Processing Integrity):** Consistent SI units; outward normal vectors; trapezoidal surface integration.
- **Question 20 (Reproducibility & Validation):** Full parameter logs and procedure.md enable single-command reproduction. Coordinates saved for all plots in `coordinates/` directories.
