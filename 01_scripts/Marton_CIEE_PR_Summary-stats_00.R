# Script name: Marton_CIEE_PR_Summary-stats_00

# Associated R project: CIEE_PR_Project 

# Date created: 2025-09-26
# Created by: Hannah Marton

# Date updated: 
# Updated by: 

# Introduction: This script will use the 'hbr_maples' data to create a table 
# with some basic summary statistics for seedling leaf dry mass. The table
# will be saved in the '02_outdata' folder.

# NOTE: before continuing with this script, you must first run the 
# renv::restore() command in the _README.md file to ensure required packages
# have been installed.

# load required packages 
library(lterdatasampler) # contains sampler datasets
library(tidyverse) # to create summary statistics
library(here) # for reproducible, relative file paths

# load the data into your Global Environment
data("hbr_maples") 

# calculate stem_length summary statistics
height_summary <- hbr_maples %>% # use the data from hbr_maples
  drop_na(stem_length) %>% # remove NA values from dataset 
  group_by(year, watershed) %>% # group data by year and watershed
  summarize(
    mean_height = mean(stem_length),
    median_height = median(stem_length),
    sd_height = sd(stem_length),
    n = n()
  )

# save the data as a .csv in the 02_outdata folder 
write.csv(height_summary, here("02_outdata", "Height-summary_00.csv"), row.names = FALSE)

# You should now see the the "Height-summary_00.csv" summary table in 
# the 02_outdata folder.

# End of script.
