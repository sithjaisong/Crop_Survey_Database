##############################################################################
# title         : 1.loadfileform1.R;
# purpose       : extract the general information from the form1 in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : general information of survey data of SKEP Phase I from all locations;
##############################################################################

options(stringsAsFactors = FALSE)

# =====Load library =====
library(XLConnect)
library(dplyr)
library(reshape2)
library(tidyr)

# = setting the working directory = #
setwd("~/Google Drive/surveySKEP1")

# list the folders, there are 6 sub-folders
dirlist <- list.dirs()
# [2] IDN#85 [3] IND#85 [4] PHL#40 [5] THA#105 [6] VNM#70 ==== Start
# extrating here ====#


# ===== Load Form1 data from all file in this working directory ==== #

source("~/Documents/Github/Crop_Survey_Database/Functions/form1_df.R") # call function readForm1

FORM1 <- data.frame()

for (j in 2:length(dirlist)) {

  list.file <- list.files(dirlist[j], pattern = ".xls")

  for (i in 1:length(list.file)) {

    dataf1 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i],
                                               sep = "")), sheet = 1, startCol = 1, endCol = 30, startRow = 1,
                            endRow = 100, autofitRow = FALSE, autofitCol = FALSE)

    # = extract Form1 data from excel
    # = return wide table formate for Form1 data in the dataframe
    # = reshape from wide table data frame to long table format

    new.field <- as.data.frame(form1_df(dataf1))

    # = inset the column named 'filename'

    new.field$index <- as.character(list.file[i])  #

    new.field <- new.field %>% select(index, everything())

    FORM1 <- rbind(FORM1, new.field)

  }
}

# names(FORM1) # check how many variables in FORM1

#write.csv(FORM1.new, file = "FORM1.csv")
