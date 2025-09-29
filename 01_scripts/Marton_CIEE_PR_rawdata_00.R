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

# NOTE: before continuing with this script, you must first run the 
# renv::restore() command in the _README.md file to ensure required packages
# have been installed.

# load required packages 
library(lterdatasampler) # contains sampler datasets
library(here) # for reproducible, relative file paths

# The package contains several sample datasets, but we will work with the
# hbr_maples data.

# Dataset description: "Sugar maple seedlings at Hubbard Brook Experimental 
# Forest (New Hampshire) in calcium-treated and reference watersheds in 
# August 2003 and June 2004"

# load the data into your Global Environment
data("hbr_maples")

# save the data as a .csv in the 00_rawdata folder 
write.csv(hbr_maples, here("00_rawdata", "hbr_maples.csv"), row.names = FALSE)

# You should now see a .csv file called "hbr_maples.csv" in your '00_rawdata'
# folder.

# load the Data Dictionary into your Global Environment 
DATA_DICTIONARY_rawdata <- read.csv(here("00_rawdata", "_DATA-DICTIONARY_rawdata.csv"), header = TRUE)

# You should now see the DATA_DICTIONARY in your Global Environment, which 
# contains essential information on variables in the dataset.

# End of script.