This \_README_rawdata.md file contains information on the contents of the 00_rawdata folder.

**Date created:** 2025-09-20\
**Created by:** Hannah Marton

**Date updated:** 2025-09-21\
**Updated by:** Hannah Marton

### **Folder contents:**

-   hbr_maples.csv: a **read-only** file of the raw data. The R script that acquires the raw data is found in the 01_scripts folder.
-   \_DATA-DICTIONARY.md: a file including **essential information on variables** in the dataset.

### **Dataset information:**

**lterdatasampler description of the hbr_maples dataset:** "Growth of sugar maples (Acer saccharum), known for their maple syrup and iconic leaf shape, can be stunted due to soil acidification from prolonged acid rain, which leaches calcium - a nutrient important for plant growth - from soils and stresses maple seedlings. To investigate the impact of soil calcium supplementation on sugar maple seedling growth, Stephanie Juice, Tim Fahey and colleagues at Hubbard Brook Long Term Ecological Research (LTER) site recorded “general sugar maple germinant health by height, leaf area, biomass, and chlorophyll content” for seedlings in untreated and previously calcium-treated watersheds. By comparing seedling growth in calcium-treated versus untreated watersheds, calcium impacts on sugar maple seedling growth can be explored." (Horst & Brun, 2023)

**Dataset variables:** See \_DATA-DICTIONARY.md for variable names and essential information. To load it in R using the `here` package, run this command in your console:

```

library(here)
DATA_DICTIONARY <- read.csv(here("00_rawdata", "_DATA-DICTIONARY.csv"), header = TRUE)

```

**Date of data collection:** August 2003 - June 2004

**Geographic location:** Hubbard Brook Experimental Forest, Woodstock, New Hampshire, USA.

**Geographic coordinates:**

-   N: 43.959356, S: 43.952121, E: -71.725832, W: -71.730866

-   N: 43.957001, S: 43.949928, E: -71.735649, W: -71.743462

**Data source:** Data was acquired from the "lterdatasampler" package (Horst & Brun, 2023), originally published in the data package "Health and mycorrhizal colonization response of sugar maple (Acer saccharum) seedlings to calcium addition in Watershed 1 at the Hubbard Brook Experimental Forest".

**lterdatasampler citation:** Horst A, Brun J (2023). lterdatasampler: Educational Dataset Examples from the Long Term Ecological Research Program. R package version 0.1.1, <https://github.com/lter/lterdatasampler>

**lterdatasampler licenses/restrictions:** Creative Commons No Rights Reserved (CC 0)

**Dataset package citation:** Juice, S. and T. Fahey. 2019. Health and mycorrhizal colonization response of sugar maple (Acer saccharum) seedlings to calcium addition in Watershed 1 at the Hubbard Brook Experimental Forest ver 3. Environmental Data Initiative. <https://doi.org/10.6073/pasta/0ade53ede9a916a36962799b2407097e>

**Dataset package licenses/restrictions:** Creative Commons Attribution 4.0 International (CC BY 4.0)
