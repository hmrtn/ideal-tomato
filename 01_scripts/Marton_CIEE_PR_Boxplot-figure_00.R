# Script name: Marton_CIEE_PR_Boxplot-figure_00

# Associated R project: CIEE_PR_Project 

# Date created: 2025-09-25
# Created by: Hannah Marton

# Date updated: 2025-09-26
# Updated by: Hannah Marton

# This script is for creating a boxplot that compares the height of 
# sugar maples ('stem_length') across watersheds in the two sampling years. We
# will save the plot to our '03_figures' folder. 

# NOTE: Before continuing with this script, you must first run the 
# renv::restore() command in the _README.md file to ensure required packages
# have been installed.

# load required packages 
library(lterdatasampler) # lterdatasampler package
library(tidyverse) # to create a ggplot
library(here) # for reproducible, relative file paths

# load the data into your Global Environment
data("hbr_maples") 

# create the boxplot using ggplot
ggplot(hbr_maples, aes(x = watershed, y = stem_length, colour = watershed)) + # set the x and y axis to watershed and stem_length
  geom_jitter( # add some slight point displacement so that they don't overlap
    aes(color = watershed), 
    alpha = 0.5, 
    show.legend = FALSE,
    position = position_jitter(width = 0.2, seed = 0)) +  # seed = 0 so that the points don't move every time we knit this script
  geom_boxplot(alpha = 0.2, outlier.shape = NA) + # make the box transparent so we can see the points    
  facet_wrap(~ year) + # create a panel for each year of the measurements
  theme_bw() +
  labs(x = "Watershed", y = "Stem length (mm)", # label x- and y- axes
       title = "Acer saccharum seedling height in untreated (Reference) 
       and treated (Calcium addition) watersheds.") + # add title
  scale_x_discrete(labels = c("W1" = "Calcium addition", "Reference" = "Reference")) + # change the W1 label to be more descriptive 
  scale_color_manual(values = c("W1" = "springgreen4", "Reference" = "peachpuff4")) 

# save the figure to the 03_figure folder
ggsave(here("03_figures", "Marton_CIEE_PR_Height-Boxplot_00.pdf"))

# You should now see the figure in the '03_figures' folder.

# End of Script.
