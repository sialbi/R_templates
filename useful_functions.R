# inst_pack function: install and load multiple R packages.
# check to see if packages are installed. Install them
# if they are not, then load them into the R session.

pkg <- c("devtools", "ggplot2", "reshape", "foreign", "stargazer", "psych", "dplyr",
         "car", "gridExtra", "readxl", "tidyverse", "ggswissmaps")

inst_pack <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

inst_pack(pkg)

