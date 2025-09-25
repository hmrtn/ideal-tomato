# Script name: Marton_CIEE_PR_ FIGURE_00

# Associated R project: CIEE_PR_Project 

# Date created: 2025-09-25
# Created by: Hannah Marton

# Date updated: 
# Updated by: 

# Introduction: This script is for acquiring data and saving it to a .csv 
# file in the 00_rawdata folder. We are going to use data from 'lterdatasampler',
# a package that provides sampler datasets for teaching purposes. This script
# will also read the _DATA-DICTIONARY file into your Global Environment.

# This script is for creating a simple FIGURE that compares the height of 
# sugar maples ('stem_length') across watersheds in the two sampling years. 

ggplot(hbr_maples, aes(x = watershed, y = stem_length, colour = watershed)) +
  geom_jitter(size = 2, alpha = 0.6, width = 0.2) +  # jittered points
  geom_boxplot(alpha = 0.2, outlier.shape = NA) +     # boxplot behind points
  facet_wrap(~ year) +
  theme_bw() +
  labs(x = "Watershed", y = "Stem length (mm)")

ggplot(hbr_maples, aes(x = watershed, y = stem_length, colour = watershed)) +
  geom_point(size = 2, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~ year) +
  theme_bw() +
  labs(
    x = "Watershed",
    y = "Stem length (mm)"
  )
