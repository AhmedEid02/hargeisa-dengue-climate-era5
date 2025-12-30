############################################################
# Script: 03_figures.R
# Purpose: Generate climate figures
############################################################

rm(list = ls())
gc()

library(tidyverse)

setwd("D:/Hargeisa_Dengue_Climate_2023_2024")

climate <- read_csv(
  "02_processed_data/climate_final_clean.csv",
  show_col_types = FALSE
)

theme_set(theme_minimal())

# Mean Temperature
p1 <- ggplot(climate, aes(month, Tmean_C)) +
  geom_line(color = "firebrick", linewidth = 1) +
  geom_point(size = 2) +
  scale_x_date(date_breaks = "1 month", date_labels = "%b") +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5, face = "bold", size = 13)
  ) +
  labs(
    title = "Monthly Mean Temperature in Hargeisa (Sep 2023 – Jun 2024)",
    x = "Month",
    y = "Temperature (°C)"
  )

ggsave(
  "04_outputs/figures/Figure_1_Mean_Temperature.png",
  plot = p1,
  width = 8,
  height = 5,
  dpi = 300
)
