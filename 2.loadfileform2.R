##############################################################################
# title         : 2.loadfileform2.R;
# purpose       : extract the injuries and diseases from the form2visit1 and form2visit2 in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 2 (excel);
# outputs       : injuries and disease data of SKEP Phase I from all locations;
##############################################################################
options(stringsAsFactors = FALSE)

# =====Load library =====
library(XLConnect)
library(dplyr)
library(reshape)
library(reshape2)
library(tidyr)


setwd("~/Google Drive/surveySKEP1")

# list the folders, there are 6 sub-folders
dirlist <- list.dirs()

# ===== Load Form2 data from all file in this working directory ==== #

#load function combine)injury1_2
source("~/Documents/Github/Crop_Survey_Database/Functions/combind_injury1_2.R")

#load function combine_weed1_2
source("~/Documents/Github/Crop_Survey_Database/Functions/combind_weed1_2.R")

#load function combine_sweep1_2
source("~/Documents/Github/Crop_Survey_Database/Functions/combind_sweep1_2.R")

# create FORM2 dataframe for keep the data
FORM2 <- data.frame()

for (j in 2:length(dirlist)) {
  # keep the file ended with .xls 
  list.file <- list.files(dirlist[j], pattern = ".xls")
  
  for (i in 1:length(list.file)) {
    
    # read sheet3 'form2 visit1'
    dataf2.1 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i],
                                                 sep = "")), sheet = 2, startCol = 1, endCol = 15, startRow = 1,
                              endRow = 70, autofitRow = FALSE, autofitCol = FALSE)
    
    # read sheet3 'form2 visit2'
    dataf2.2 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i],
                                                 sep = "")), sheet = 3, startCol = 1, endCol = 15, startRow = 1,
                              endRow = 70, autofitRow = FALSE, autofitCol = FALSE)
    
    # checking the leaf data, which is indicated whether or not this sheet 'form2visit1' is filled up.
    check.df2.1 <- dataf2.1[10, 5]  
    # checking the leaf data, which is indicated whether or not this sheet 'form2visit2' is filled up.
    check.df2.2 <- dataf2.2[10, 5]  
    
    # if those data have not the data that mean that sheet does not have data
    if (is.na(check.df2.1) == TRUE | is.na(check.df2.2) == TRUE) {
      # then will report which files have not the data, and will skip this file
      print(paste(list.file[i], "is not complete because either visit1 or visit2 has not data",
                  sep = " "))
      next  
    } else {
      
      # combine form2 data
      injury <- combind_injury1_2(dataf2.1, dataf2.2)
      
      injury$filename <- as.character(list.file[i])
      
      # === weed data ======
      
      weed <- combind_weed1_2(dataf2.1, dataf2.2)
      
      weed$filename <- as.character(list.file[i])
      
      # === sweep data ======
      sweep <- combind_sweep1_2(dataf2.1, dataf2.2)
      
      sweep$filename <- as.character(list.file[i])
      
      #== combind all ====
      
      form2.list <- list(weed, injury, sweep)
      
      new.row.injury <- merge_recurse(form2.list, by = c("filename", "visit", "DVS"))
      
      FORM2 <- rbind(FORM2, new.row.injury)
    }
  }
}

filename <- FORM2$filename

FORM2 <- FORM2 %>% separate(filename, c("SKEP", "SURVEY", "Country", "Year",
                                        "Season", "Fieldno"), "-") %>% transform(Fieldno = gsub(pattern = "\\.xls$",
                                                                                                replacement = "", .$Fieldno))
FORM2$SKEP <- NULL
FORM2$SURVEY <- NULL

FORM2$index <- filename

FORM2 <- FORM2 %>% select(index, everything())

#eos

