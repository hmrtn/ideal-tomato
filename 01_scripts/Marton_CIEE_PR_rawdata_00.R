# Script name: Marton_CIEE_PR_rawdata_00

# Associated R project: CIEE_PR_Project 

# Date created: 2025-09-15
# Created by: Hannah Marton

# Date updated: 2025-09-21
# Updated by: Hannah Marton

# Introduction: This script is for acquiring data and saving it to a .csv 
# file in the 00_rawdata folder. We are going to use data from 'lterdatasampler',
# a package that provides sampler datasets for teaching purposes. This script
# will also read the _DATA-DICTIONARY file into your Global Environment.

# clear your workspace
rm(list=ls())

# set working directory
setwd("~/Desktop/CIEE_PR/CIEE_PR_Project")

# install the CRAN version of lterdatasampler
install.packages("lterdatasampler")

# call up the package
library(lterdatasampler)

# The package contains several sample datasets, but we will work with the
# hbr_maples data.

# Dataset description: "Sugar maple seedlings at Hubbard Brook Experimental 
# Forest (New Hampshire) in calcium-treated and reference watersheds in 
# August 2003 and June 2004"

# load the data into your Global Environment
data("hbr_maples")

# save the data as a .csv in the 00_rawdata folder using 
# write.csv(dataframe, "~/Project-folder-path/Rawdata-name.csv",
#         row.names = FALSE)

write.csv(hbr_maples, "~/Desktop/CIEE_PR/CIEE_PR_Project/00_rawdata/hbr_maples.csv",
          row.names = FALSE)

# You should now see a .csv file called "hbr_maples.csv" in your '00_rawdata'
# folder.

# load the Data Dictionary into your Global Environment using
DATA_DICTIONARY <- read.csv("00_rawdata/_DATA-DICTIONARY.csv", header = TRUE)

# You should now see the DATA_DICTIONARY in your Global Environment, which 
# contains essential information on variables in the dataset.

# End of script.