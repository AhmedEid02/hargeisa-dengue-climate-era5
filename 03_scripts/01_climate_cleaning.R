############################################################
# Script: 01_climate_cleaning.R
# Purpose: Clean ERA5-Land monthly climate data
############################################################

rm(list = ls())
gc()

library(tidyverse)
library(lubridate)

setwd("D:/Hargeisa_Dengue_Climate_2023_2024")

climate_raw <- read_csv(
  "01_raw_data/ERA5_Hargeysa_Monthly_Climate_Sep2023_Jun2024.csv",
  show_col_types = FALSE
)

climate_clean <- climate_raw %>%
  select(
    month,
    year,
    Tmean_C,
    Tmax_C,
    Tmin_C,
    RH_pct,
    Precip_mm
  ) %>%
  mutate(
    month = as.Date(month),
    year = as.integer(year)
  ) %>%
  arrange(month)

write_csv(
  climate_clean,
  "02_processed_data/climate_final_clean.csv"
)
