## **READ ME FIRST**

This is a public repository for the materials associated with the following project:\
**CIEE PR Project: Addition of calcium on sugar maple (*Acer saccharum*) seedling growth.**

**Date created:** 2025-09-04\
**Created by:** Hannah Marton

**Date updated:** 2025-09-29\
**Updated by:** Hannah Marton

This project is being completed as part of the Canadian Institute of Ecology and Evolution's (CIEE) Productivity and Reproducibility (PR) module. The goal of this project is to gain experience producing a reproducible mini-project.

Acid rain leaches calcium out of the soil, a nutrient critical to the growth of the sugar maple (*Acer saccharum*). This lack of calcium contributes to soil acidification, and creates a stressful environment for the species. We use the Hubbard Brook Experimental Forest Sugar Maples (“hbr_maples”) dataset from the ‘lterdatasampler’ package to explore the addition of calcium on sugar maple seedling growth.

## **Instructions**

1.  To reproduce outputs, download the ZIP file "CIEE_PR_Project.zip" and unzip to your local storage.

2.  Open the RStudio project called "CIEE_PR_Project.Rproj"

3.  If the renv package is not yet installed on your RStudio, install the latest version using the following commands in your console:

if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")

remotes::install_github("rstudio/renv")

4.  Once renv is installed, you can restore the required package versions for this project using the following command in your console:

renv::restore()

5.  You may now work through the project as you wish. The draft manuscript RMD script is located in the "04_manuscript" folder. Individual scripts are in the "01_scripts" folder.

6.  For reading accessibility, you can 'knit' the RMD and MD scripts to PDF using the knit function.

7.  Note: if the command renv::restore() fails to install the R package 'tinytex', you may get an error when running the manuscript RMD script if no LaTeX disribution is installed. Follow the prompts by renv to install a LaTeX distribution such as 'tinytex', using tinytex::install_tinytex() to install.

## **Contents**

**File structure:**

-   *00_rawdata:* folder that contains all raw data files (read-only), a data dictionary, and a readme file

-   *01_scripts*: folder that contains all scripts and analysis of the data

-   *02_outdata:* folder that contains all processed data files and a data dictionary

-   *03_figures:* folder that contains all plots and figures of the data

-   *04_manuscript:* folder that contains the manuscript draft, a references.bib file, a citation style language file, and a rendered folder with the .pdf file manuscript

-   *05_preregistration:* folder that contains the filled out preregistration template and rendered .pdf

-   *\_README.md*: (this file) contains essential information on the materials included in the repository and how to use them

-   *.gitignore*: tells git to only track the files needed for reproducibility

-   *renv.lock*: records the package versions used in this project

**File naming conventions:**

-   *Raw data:* File-contents.file-type

-   *Scripts:* LastName_Project_Script_Version.file-type

-   *Out data:* File-contents_Version.file-type

-   *Figures and plots:* LastName_Project_Figure-title_Version.file-type

-   *Manuscripts:* LastName_Project_File-contents_Version.file-type

-   *Preregistration:* LastName_Project_File-content_Versions.file-type

## **Citations**

To cite this project, please use: Marton, H. (2025, September 29). *CIEE PR Project: Addition of calcium on sugar maple (Acer saccharum) seedling growth.* Retrieved from osf.io/trf2d

## **Notes**

-   The renv lockfile 'renv.lock' was last updated with the project dependencies on 2025-09-29.

-   The citation style language (CSL) used for the manuscript draft, 'ecology-letters.csl', was last updated on GitHub on 2023-10-11.
