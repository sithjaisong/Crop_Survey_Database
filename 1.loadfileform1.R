##############################################################################
# title         : 1.loadfileform1.R;
# purpose       : extract the general information from the form1 in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : general information of survey data of SKEP Phase I from all locations;
##############################################################################

#=====Load library =====
library(XLConnect)
library(dplyr)

# ==== Load function
# change following your folder
source("~/Documents/Github/surveySKEP1/Functions/form1.R")

# set working directory 
options(stringsAsFactors = FALSE) 
#setwd('~/Google Drive/survey1')
#files can be downloaded form the Google Drive that I shared
# I will create the script for make the lists of the files of the survey excel file
# setwd('~/Google Drive/survey1') # this is for Mac
setwd("~/Desktop/surveySKEP1")
# setwd('E:/Google Drive/surveySKEP1') # this is for Window

# list the folders, there are 6 sub-folders
dirlist <- list.dirs()
# [2] IDN#85 
# [3] IND#85 
# [4] PHL#40 
# [5] #THA#105 
# [6] VNM#70

#==== Start extrating here ====#

FORM1  <- data.frame() 

for (j in 2:length(dirlist)){
  list.file <- list.files(dirlist[j], pattern = ".xls")
  
for (i in 1:length(list.file)) {
    
    dataf1 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i], sep = "")), sheet = 1, startCol = 1, endCol = 30, 
        startRow = 1, endRow = 100, autofitRow = FALSE, autofitCol = FALSE)
    
    new.row <- as.data.frame(form1(dataf1)) # store the extracted data
    
    new.row$filename <- as.character(list.file[i]) # inset the column named "filename"
    
    # corract the type of variables
    new.row <- new.row %>% transform(
      filename = as.character(as.factor(filename)),
      field.area = as.numeric(as.character(field.area)),
      farmer.name = as.character(farmer.name),
      land.form = as.character(land.form),
      prev.crop = as.character(prev.crop),
      fallow.prd = as.numeric(as.character(fallow.prd)),
      soil.salt = as.character(soil.salt),
      soil.zinc = as.character(soil.salt),
      soil.alum = as.character(soil.alum),
      crop.est.method = as.character(crop.est.method),
      seed.age = as.numeric(as.character(seed.age)),
      rice.var = as.character(rice.var),
      traditional= as.character(traditional),
      modern = as.character(modern),
      hybrid = as.character(hybrid),
      Ntotal = as.numeric(as.character(Ntotal)),
      Ptotal = as.numeric(as.character(Ptotal)),
      Ktotal = as.numeric(as.character(Ktotal)),
      yld.area1 = as.numeric(as.character(yld.area1)),
      yld.area2 = as.numeric(as.character(yld.area2)),
      yld.area3 = as.numeric(as.character(yld.area3))
      )
    
    FORM1 <- rbind(FORM1, new.row)
}
}

# remove the row name
row.names(FORM1) <- NULL

# move the filename column up to the front column
col_idx <- grep("filename", names(FORM1))
FORM1 <- FORM1[, c(col_idx, (1:ncol(FORM1))[-col_idx])]

# FORM1 data is in the right data frame
#FORM1 <- data.frame(lapply(FORM1, as.character), stringsAsFactors = FALSE)

#write.csv(dataF1, file = "dataf1.vnm.csv")

 
