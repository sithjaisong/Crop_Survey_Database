##############################################################################
# title         : 2.loadfileform2.R;
# purpose       : extract the injuries and diseases from the form2visit1 and form2visit2 in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 2 (excel);
# outputs       : injuries and disease data of SKEP Phase I from all locations;
##############################################################################
# ==== Load libraries
library(XLConnect)
library(dplyr)
library(tidyr)
library(reshape)
library(reshape2)

# Load function
source("~/Documents/Github/surveySKEP1/Functions/injury.R")
source("~/Documents/Github/surveySKEP1/Functions/tidy_injury.R")

source("~/Documents/Github/surveySKEP1/Functions/weed.R")
source("~/Documents/Github/surveySKEP1/Functions/tidy_weed.R")

setwd("~/Desktop/surveySKEP1")
# load data of form2

dirlist <- list.dirs()
# [2] IDN#85 
# [3] IND#85 
# [4] PHL#40 
# [5] THA#105 
# [6] VNM#70

form2.injury <- matrix(nrow = 0, ncol = 31)  # crearte the object to store the injury data
form2.weed <- matrix(nrow = 0, ncol = 10)  # create the object to store the weed data

for (j in 2:length(dirlist)) {
    list.file <- list.files(dirlist[j], pattern = ".xls")
    
    for (i in 1:length(list.file)) {
        # read sheet3 'form2 visit1'
        dataf2.1 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i], sep = "")), sheet = 2, startCol = 1, 
            endCol = 15, startRow = 1, endRow = 70, autofitRow = FALSE, autofitCol = FALSE)
        # read sheet3 'form2 visit2'
        dataf2.2 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i], sep = "")), sheet = 3, startCol = 1, 
            endCol = 15, startRow = 1, endRow = 70, autofitRow = FALSE, autofitCol = FALSE)
            
            # ==== visit1.injury=====
            visit1.injury <- as.data.frame(injury(dataf2.1))
            visit1.injury$visit <- "1"
            visit1.injury$filename <- as.character(list.file[i])  # change the list name
            visit1.injury$DVS <- dataf2.1[3, 4]
            
            # arrange the column by moving the filename to the first, and visit and DVS inthe second and third, respectively.
            col_idx <- grep("DVS", names(visit1.injury))
            visit1.injury <- visit1.injury[, c(col_idx, (1:ncol(visit1.injury))[-col_idx])]
            
            col_idx <- grep("visit", names(visit1.injury))
            visit1.injury <- visit1.injury[, c(col_idx, (1:ncol(visit1.injury))[-col_idx])]
            
            col_idx <- grep("filename", names(visit1.injury))
            visit1.injury <- visit1.injury[, c(col_idx, (1:ncol(visit1.injury))[-col_idx])]
            
            visit1.injury <- tidy_injury(visit1.injury)
            
            # ====visit2.injury=====
            visit2.injury <- as.data.frame(injury(dataf2.2))
            visit2.injury$filename <- as.character(list.file[i])  # change the list name
            visit2.injury$visit <- "2"
            visit2.injury$DVS <- dataf2.2[3, 4]
            
            # arrange the column by moving the filename to the first, and visit and DVS inthe second and third, respectively.
            col_idx <- grep("DVS", names(visit2.injury))
            visit2.injury <- visit2.injury[, c(col_idx, (1:ncol(visit2.injury))[-col_idx])]
            
            col_idx <- grep("visit", names(visit2.injury))
            visit2.injury <- visit2.injury[, c(col_idx, (1:ncol(visit2.injury))[-col_idx])]
            
            col_idx <- grep("filename", names(visit2.injury))
            visit2.injury <- visit2.injury[, c(col_idx, (1:ncol(visit2.injury))[-col_idx])]
            
            visit2.injury <- tidy_injury(visit2.injury)
            
            # === combind visit1 and visit2 injury=====
            new.row.injury <- rbind(visit1.injury, visit2.injury)
            form2.injury <- rbind(form2.injury, new.row.injury)
            
            
            # === vist1.weed ======
            visit1.weed <- as.data.frame(weed(dataf2.1))
            visit1.weed$visit <- "1"
            visit1.weed$filename <- as.character(list.file[i])  # change the list name
            visit1.weed$DVS <- dataf2.1[3, 4]
            
            col_idx <- grep("DVS", names(visit1.weed))
            visit1.weed <- visit1.weed[, c(col_idx, (1:ncol(visit1.weed))[-col_idx])]
            
            col_idx <- grep("visit", names(visit1.weed))
            visit1.weed <- visit1.weed[, c(col_idx, (1:ncol(visit1.weed))[-col_idx])]
            
            col_idx <- grep("filename", names(visit1.weed))
            visit1.weed <- visit1.weed[, c(col_idx, (1:ncol(visit1.weed))[-col_idx])]
            
            visit1.weed <- tidy_weed(visit1.weed)
            
            # ==== visit2.weed====
            
            visit2.weed <- as.data.frame(weed(dataf2.2))
            visit2.weed$visit <- "2"
            visit2.weed$filename <- as.character(list.file[i])  # change the list name
            visit2.weed$DVS <- dataf2.2[3, 4]
            
            col_idx <- grep("DVS", names(visit2.weed))
            visit2.weed <- visit2.weed[, c(col_idx, (1:ncol(visit2.weed))[-col_idx])]
            
            col_idx <- grep("visit", names(visit2.weed))
            visit2.weed <- visit2.weed[, c(col_idx, (1:ncol(visit2.weed))[-col_idx])]
            
            col_idx <- grep("filename", names(visit2.weed))
            visit2.weed <- visit2.weed[, c(col_idx, (1:ncol(visit2.weed))[-col_idx])]
            
            visit2.weed <- tidy_weed(visit2.weed)
            
            # ====combine visit1 and visit 2 weed
            
            new.row.weed <- rbind(visit1.weed, visit2.weed)
            
            form2.weed <- rbind(form2.weed, new.row.weed)
            
            # ====combind weed and injury data
            
            FORM2 <- merge(form2.weed, form2.injury)
        }
    }


# output is new.row.sum
FORM2  # the final output

# save the output write.csv(FORM2, 'FORM2.csv')


 
