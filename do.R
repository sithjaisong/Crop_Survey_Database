
##############################################################################
# title         : do.R;
# purpose       : run all step in one script;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 1 Feb 2016;
# inputs        : survey data in excel file;
# outputs       : data frame ofsurvey data of SKEP Phase I from all locations;
##############################################################################

options(stringsAsFactors = FALSE)

# =====Load library =====
library(XLConnect)
library(dplyr)
library(reshape)
library(reshape2)
library(tidyr)


setwd("~/Google Drive/surveySKEP1")

#### Load form1 data ####
source("~/Documents/Github/Crop_Survey_Database/1.loadfileform1.R")

#### Load form2 data ####
source("~/Documents/Github/Crop_Survey_Database/2.loadfileform2.R")

FULL <- left_join(FORM1, FORM2, by = "index")

save(FULL, file =  "~/Google Drive/surveySKEP1/FULLdatabase1.RData")
    