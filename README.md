# hargeisa-dengue-climate-era5
ERA5-Land climate data extraction, processing, and trend analysis for dengue–climate research in Hargeisa City, Somaliland (Sep 2023 – Jun 2024).
# Hargeisa Climate Data Package (ERA5-Land)

## Overview
This repository contains a **reproducible climate data package** prepared to support dengue–climate research in **Hargeisa City, Somaliland**, covering the period **September 2023 to June 2024**.

The project focuses **exclusively on climate data extraction, processing, visualization, and trend analysis**.  
No dengue or health surveillance data are included or analyzed in this repository.

---

## Study Area
- **Location:** Hargeisa City, Somaliland  
- **Spatial unit:** Administrative Level 3 (District level – Hargeysa)  
- **Purpose:** City-scale climate characterization for public health research  

---

## Climate Data Source
- **Dataset:** ERA5-Land (ECMWF) – Daily Aggregated
- **Platform:** Google Earth Engine (JavaScript API)
- **Temporal coverage:** September 2023 – June 2024
- **Spatial processing:** Area-averaged over Hargeisa City boundary

---

## Climate Variables Included
The final processed dataset contains monthly climate variables:

| Variable | Description |
|--------|-------------|
| `Tmean_C` | Monthly mean 2-m air temperature (°C) |
| `Tmax_C` | Monthly mean of daily maximum temperature (°C) |
| `Tmin_C` | Monthly mean of daily minimum temperature (°C) |
| `RH_pct` | Relative humidity (%) derived using the Magnus formulation |
| `Precip_mm` | Monthly total precipitation (mm) |
| `month` | Month (YYYY-MM-01) |
| `year` | Calendar year |

---

## Methods Summary
- Daily ERA5-Land climate data were aggregated to monthly values.
- Climate variables were spatially averaged over Hargeisa City using administrative level-3 boundaries.
- Monthly mean, maximum, and minimum temperatures were calculated from daily values.
- Relative humidity was derived from 2-m air temperature and dew-point temperature using the Magnus formula.
- Monthly total precipitation was computed by summing daily precipitation values.
- Linear regression was applied to assess temporal trends in climatic variables.

Detailed methods are provided in `05_metadata/climate_methods.txt`.

---

## Repository Structure

Hargeisa_Dengue_Climate_2023_2024/
│
├── 01_raw_data/
│ └── ERA5_Hargeysa_Monthly_Climate_Sep2023_Jun2024.csv
│
├── 02_processed_data/
│ └── climate_final_clean.csv
│
├── 03_scripts/
│ ├── 01_climate_cleaning.R
│ ├── 02_climate_trends.R
│ └── 03_figures.R
│
├── 04_outputs/
│ ├── figures/
│ └── tables/
│
├── 05_metadata/
│ ├── climate_methods.txt
│ ├── variable_dictionary.txt
│ └── session_info.txt
│
└── README.md


---

## Scope and Limitations
- This repository **does not contain dengue surveillance data**.
- No statistical modeling between climate variables and dengue cases is conducted here.
- No causal inference regarding dengue transmission is made.
- The climate dataset is intended to be merged with dengue data by health researchers for subsequent epidemiological analysis (e.g., GEE models).

---

## Intended Use
This climate data package is designed to:
- Provide reliable climate inputs for dengue–climate studies
- Support interdisciplinary climate–health research
- Ensure transparency and reproducibility in climate data preparation
- Serve as a reference for city-scale climate analysis in data-scarce regions

---

## Software and Reproducibility
- **Google Earth Engine (JavaScript API)**
- **R (≥ 4.2.0)** and **RStudio**

### R packages used
- `tidyverse`
- `lubridate`

Session information for reproducibility is provided in `05_metadata/session_info.txt`.

---

## Author Contribution
Climate data extraction, processing, visualization, and trend analysis were conducted by **Ahmed Hussein**.  
All dengue surveillance data analysis and health modeling are performed separately by the primary researcher.

---

## Contact
For questions related to the climate data package or methodology, please contact the climate data contributor.
