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

# ===== Load Form1 data from all file in this working directory ==== #

# call function readForm1
source("~/Documents/Github/Crop_Survey_Database/Functions/form1_df.R") 

# create FORM1 to keep the data
FORM1 <- data.frame()

for (j in 2:length(dirlist)) {
  # create list.file of files which have names end with .xls from each country folder
  list.file <- list.files(dirlist[j], pattern = ".xls")

  for (i in 1:length(list.file)) {
  # extract the form1 data from each xls
  # return wide table formate for Form1 data in the dataframe
    dataf1 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i],
                                               sep = "")), sheet = 1, startCol = 1, endCol = 30, startRow = 1,
                            endRow = 100, autofitRow = FALSE, autofitCol = FALSE)

    # reshape from wide table data frame to long table format
    new.field <- as.data.frame(form1_df(dataf1))

    # inset the column named 'filename'
    new.field$index <- as.character(list.file[i]) 
  
    # reoorder column by setting first column is index, whcih is filenamme
    new.field <- new.field %>% select(index, everything())

    # insert new row
    FORM1 <- rbind(FORM1, new.field)
  }
}

# save filename
filename <- FORM1$index

# seperate contry data and season data from filename
FORM1 <- FORM1 %>% separate(index, c("SKEP", "SURVEY", "Country", "Year",
                                     "Season", "Fieldno"), "-") %>% transform(Fieldno = gsub(pattern = "\\.xls$",
                                                                                             replacement = "", .$Fieldno))
# delete column named SKEP and SURVEY
FORM1$SKEP <- NULL
FORM1$SURVEY <- NULL

# re-add the index column 
FORM1$index <- filename

# reorder column named index in the first column
FORM1 <- FORM1 %>% select(index, everything())

# delete row name
row.names(FORM1) <- NULL

#eos
