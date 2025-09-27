## **READ ME FIRST**

This is a public repository for the materials associated with the following project:\
**Canadian Institute of Ecology and Evolution Productivity and Reproducibility Project (CIEE_PR_Project)**

**Date created:** 2025-09-04\
**Created by:** Hannah Marton

**Date updated:** 2025-09-26\
**Updated by:** Hannah Marton

This project is being completed as part of the Canadian Institute of Ecology and Evolution's (CIEE) Productivity and Reproducibility module. The goal of this project is to gain experience producing a reproducible mini-project.

## **Instructions**

1.  To reproduce outputs, download the ZIP file "CIEE_PR_Project.zip" and unzip to your local storage.
2.  Open the RStudio project called "CIEE_PR_Project.Rproj"
3.  If the `renv` package is not yet installed on your RStudio, install the latest version using the following commands in your console:

```         
if(!requireNamespace("remotes")) {
install.packages("remotes")
}
remotes::install_github("rstudio/renv")
```

4.  Once `renv` is installed, you can restore the required package versions for this project using the following command in your console:

```         
renv::restore()
```

5.  You may now work through the project as you wish. The draft manuscript RMD script is located in the "04_manuscript" folder. Individual scripts are in the "01_scripts" folder.

6.  For reading accessibility, you can 'knit' the RMD and MD scripts to PDF using the knit function.

## **Contents**

**File structure:**

-   *00_rawdata:* folder that contains all raw data files (read-only), a data dictionary, and a readme file

-   *01_scripts*: folder that contains all scripts and analysis of the data

-   *02_outdata:* folder that contains all processed data files and a data dictionary

-   *03_figures:* folder that contains all plots and figures of the data

-   *04_manuscript:* folder that contains all versions of written lab reports, a references.bib file, and a rendered folder with .pdf file manuscripts

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
