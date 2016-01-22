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
source("~/Documents/Github/Crop_Survey_Database/Functions/injury.R")
source("~/Documents/Github/Crop_Survey_Database/Functions/tidy_injury.R")

source("~/Documents/Github/Crop_Survey_Database/Functions/weed.R")
source("~/Documents/Github/Crop_Survey_Database/Functions/tidy_weed.R")

source("~/Documents/Github/Crop_Survey_Database/Functions/sweep.R")
source("~/Documents/Github/Crop_Survey_Database/Functions/tidy_sweep.R")

# insert the sweep net 

setwd("~/Desktop/surveySKEP1")
# load data of form2

dirlist <- list.dirs()
# [2] IDN#85 
# [3] IND#85 
# [4] PHL#40 
# [5] THA#105 
# [6] VNM#70

j <- 2
i <- 2
form2.injury <- matrix(nrow = 0, ncol = 31)  # crearte the object to store the injury data
form2.weed <- matrix(nrow = 0, ncol = 10)  # create the object to store the weed data
form2.sweep <- matrix(nrow = 0, ncol = 10)
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
            
            
            # === vist1.sweep  ======
            visit1.sweep <- as.data.frame(sweep(dataf2.1))
            visit1.sweep$visit <- "1"
            visit1.sweep$filename <- as.character(list.file[i])  # change the list name
            visit1.sweep$DVS <- dataf2.1[3, 4]
            
            col_idx <- grep("DVS", names(visit1.sweep))
            visit1.sweep <- visit1.sweep[, c(col_idx, (1:ncol(visit1.sweep))[-col_idx])]
            
            col_idx <- grep("visit", names(visit1.sweep))
            visit1.sweep <- visit1.sweep[, c(col_idx, (1:ncol(visit1.sweep))[-col_idx])]
            
            col_idx <- grep("filename", names(visit1.sweep))
            visit1.sweep <- visit1.sweep[, c(col_idx, (1:ncol(visit1.sweep))[-col_idx])]
            
            visit1.sweep <- tidy_sweep(visit1.sweep)
            
            # ==== visit2.sweep====
            
            visit2.sweep <- as.data.frame(sweep(dataf2.2))
            visit2.sweep$visit <- "2"
            visit2.sweep$filename <- as.character(list.file[i])  # change the list name
            visit2.sweep$DVS <- dataf2.2[3, 4]
            
            col_idx <- grep("DVS", names(visit2.sweep))
            visit2.sweep <- visit2.sweep[, c(col_idx, (1:ncol(visit2.sweep))[-col_idx])]
            
            col_idx <- grep("visit", names(visit2.sweep))
            visit2.sweep <- visit2.sweep[, c(col_idx, (1:ncol(visit2.sweep))[-col_idx])]
            
            col_idx <- grep("filename", names(visit2.sweep))
            visit2.sweep <- visit2.sweep[, c(col_idx, (1:ncol(visit2.sweep))[-col_idx])]
            
            visit2.sweep <- tidy_sweep(visit2.sweep)
            
            # ====combine visit1 and visit 2 weed
            
            new.row.sweep <- rbind(visit1.sweep, visit2.sweep)
            
            form2.sweep <- rbind(form2.sweep, new.row.sweep)
            
            # ====combind weed, injury, and sweep data
            
            form2.list <- list(form2.weed, form2.injury, form2.sweep)
            
            FORM2 <- merge_recurse(form2.list, by = c("filename", "visit", "DVS"))
        }
    }


FORM2.new <- FORM2 %>%
  separate(filename, c("SKEP", "SURVEY", "Country", "Year", "Season", "Fieldno"), "-") %>%
  transform(Fieldno = gsub(pattern = "\\.xls$", replacement = "", .$Fieldno)) 

FORM2.new$SKEP <- NULL
FORM2.new$SURVEY <- NULL

FORM2.new$index <- FORM2$filename

col_idx <- grep("index", names(FORM2.new))
FORM2.new <- FORM2.new[, c(col_idx, (1:ncol(FORM2.new))[-col_idx])]


# output is new.row.sum
head(FORM2.new)  # the final output

# save the output 
write.csv(FORM2.new, 'FORM2.csv')
#eos