# Script name: Marton_CIEE_PR_ FIGURE_00

# Associated R project: CIEE_PR_Project 

# Date created: 2025-09-25
# Created by: Hannah Marton

# Date updated: 2025-09-26
# Updated by: Hannah Marton

# Introduction: This script is for acquiring data and saving it to a .csv 
# file in the 00_rawdata folder. We are going to use data from 'lterdatasampler',
# a package that provides sampler datasets for teaching purposes. This script
# will also read the _DATA-DICTIONARY file into your Global Environment.

# This script is for creating a simple FIGURE that compares the height of 
# sugar maples ('stem_length') across watersheds in the two sampling years. We
# will save the plot to our '03_figures' folder. 

library(lterdatasampler) # lterdatasampler package
library(tidyverse) # to create a ggplot
library(here) # for reproducible, relative paths

data("hbr_maples") # load the data into your Global Environment

# Create the boxplot using ggplot:
ggplot(hbr_maples, aes(x = watershed, y = stem_length, colour = watershed)) + # set the x and y axis to watershed and stem_length
  geom_jitter( # add some slight point displacement so that they don't overlap
    aes(color = watershed), 
    alpha = 0.5, 
    show.legend = FALSE,
    position = position_jitter(width = 0.2, seed = 0)) +  # seed = 0 so that the points don't move every time we knit this script
  geom_boxplot(alpha = 0.2, outlier.shape = NA) + # make the box transparent so we can see the points    
  facet_wrap(~ year) + # create a panel for each year of the measurements
  theme_bw() +
  labs(x = "Watershed", y = "Stem length (mm)") + # label x- and y- axes
  scale_x_discrete(labels = c("W1" = "Calcium addition", "Reference" = "Reference")) +
  scale_color_manual(values = c("W1" = "springgreen4", "Reference" = "peachpuff4")) 

ggsave("Marton_CIEE_PR_Height-Boxplot_00.pdf", path = "../03_figures")

ggsave(
  filename = "hbr_maples_plot.pdf",  # file name
  plot = myplot,                     # the plot object
  path = "03_figures",               # relative path to the folder
  width = 8,                         # width in inches
  height = 6,                        # height in inches
  units = "in"                        # units
)
