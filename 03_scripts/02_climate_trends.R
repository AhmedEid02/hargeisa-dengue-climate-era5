############################################################
# Script: 02_climate_trends.R
# Purpose: Climate trend analysis
############################################################

rm(list = ls())
gc()

library(tidyverse)

setwd("D:/Hargeisa_Dengue_Climate_2023_2024")

climate <- read_csv(
  "02_processed_data/climate_final_clean.csv",
  show_col_types = FALSE
)

lm_Tmean <- lm(Tmean_C ~ month, data = climate)
lm_Tmax  <- lm(Tmax_C  ~ month, data = climate)
lm_Tmin  <- lm(Tmin_C  ~ month, data = climate)
lm_RH    <- lm(RH_pct  ~ month, data = climate)
lm_Prec  <- lm(Precip_mm ~ month, data = climate)

sink("04_outputs/tables/climate_trend_models.txt")
summary(lm_Tmean)
summary(lm_Tmax)
summary(lm_Tmin)
summary(lm_RH)
summary(lm_Prec)
sink()
