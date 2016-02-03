##############################################################################
# title         : 1.loadfileform1.R;
# purpose       : extract the general information from the form1 in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : general information of survey data of SKEP Phase I from all locations;
##############################################################################

# =====Load library =====
library(XLConnect)
library(dplyr)

# ==== Load function change following your folder
source("~/Documents/Github/Crop_Survey_Database/Functions/form1.R")

# set working directory
options(stringsAsFactors = FALSE)
# setwd('~/Google Drive/survey1') files can be downloaded form the
# Google Drive that I shared I will create the script for make the
# lists of the files of the survey excel file setwd('~/Google
# Drive/survey1') # this is for Mac
setwd("~/Google Drive/surveySKEP1")
# setwd('E:/Google Drive/surveySKEP1') # this is for Window

# list the folders, there are 6 sub-folders
dirlist <- list.dirs()
# [2] IDN#85 [3] IND#85 [4] PHL#40 [5] THA#105 [6] VNM#70 ==== Start
# extrating here ====#

FORM1 <- data.frame()

for (j in 2:length(dirlist)) {
    list.file <- list.files(dirlist[j], pattern = ".xls")

    for (i in 1:length(list.file)) {

        dataf1 <- readWorksheet(loadWorkbook(paste(dirlist[j], "/", list.file[i],
            sep = "")), sheet = 1, startCol = 1, endCol = 30, startRow = 1,
            endRow = 100, autofitRow = FALSE, autofitCol = FALSE)

        new.row <- as.data.frame(form1(dataf1))  # store the extracted data

        new.row$filename <- as.character(list.file[i])  # inset the column named 'filename'

        # corract the type of variables
        new.row <- new.row %>% transform(filename = as.character(as.factor(filename)),
            village.name = as.character(village.name), latitude = as.character(latitude),
            longitude = as.character(longitude), field.area = as.numeric(as.character(field.area)),
            farmer.name = as.character(farmer.name), land.form = as.character(land.form),
            prev.crop = as.character(prev.crop), fallow.prd = as.numeric(as.character(fallow.prd)),
            soil.salt = as.character(soil.salt), soil.zinc = as.character(soil.salt),
            soil.alum = as.character(soil.alum), crop.est.method = as.character(crop.est.method),
            seed.age = as.numeric(as.character(seed.age)), crop.est.date = as.character(N1application),
            crop.harv.date = as.character(N1application), rice.var = as.character(rice.var),
            type.var = as.character(type.var), N1application = as.character(N1application),
            P1application = as.character(P1application), K1application = as.character(K1application),
            N2application = as.character(N2application), P2application = as.character(P2application),
            K2application = as.character(K2application), N3application = as.character(N3application),
            P3application = as.character(P3application), K3application = as.character(K3application),
            N4application = as.character(N4application), P4application = as.character(P4application),
            K4application = as.character(K4application), Ntotal = as.numeric(as.character(Ntotal)),
            Ptotal = as.numeric(as.character(Ptotal)), Ktotal = as.numeric(as.character(Ktotal)),
            N1Name = as.character(N1Name), P1Name = as.character(P1Name),
            K1Name = as.character(K1Name), N2Name = as.character(N2Name),
            P2Name = as.character(P2Name), K2Name = as.character(K2Name),
            N3Name = as.character(N3Name), P3Name = as.character(P3Name),
            K3Name = as.character(K3Name), N4Name = as.character(N4Name),
            P4Name = as.character(P4Name), K4Name = as.character(K4Name),
            Chem1Name = as.character(Chem1Name), Chem2Name = as.character(Chem2Name),
            Chem3Name = as.character(Chem3Name), Chem4Name = as.character(Chem4Name),
            Chem5Name = as.character(Chem5Name), Chem1Dose = as.character(Chem1Dose),
            Chem2Dose = as.character(Chem2Dose), Chem3Dose = as.character(Chem3Dose),
            Chem4Dose = as.character(Chem4Dose), Chem5Dose = as.character(Chem5Dose),
            Chem1Date = as.character(Chem1Date), Chem2Date = as.character(Chem2Date),
            Chem3Date = as.character(Chem3Date), Chem4Date = as.character(Chem4Date),
            Chem5Date = as.character(Chem5Date), CropStatus = as.character(CropStatus),
            yld.area1 = as.numeric(as.character(yld.area1)), yld.area2 = as.numeric(as.character(yld.area2)),
            yld.area3 = as.numeric(as.character(yld.area3)))

        col_idx <- grep("filename", names(new.row))
        new.row <- new.row[, c(col_idx, (1:ncol(new.row))[-col_idx])]

        FORM1 <- rbind(FORM1, new.row)
    }
}
# remove the row name
row.names(FORM1) <- NULL

filenames <- FORM1$filename

FORM1 <- FORM1 %>% separate(filename, c("SKEP", "SURVEY", "Country",
    "Year", "Season", "Fieldno"), "-") %>% transform(Fieldno = gsub(pattern = "\\.xls$",
    replacement = "", .$Fieldno))

FORM1$SKEP <- NULL
FORM1$SURVEY <- NULL

FORM1$index <- filenames

col_idx <- grep("index", names(FORM1))

FORM1.new <- FORM1.new[, c(col_idx, (1:ncol(FORM1))[-col_idx])]
# FORM1 data is in the right data frame FORM1 <-
# data.frame(lapply(FORM1, as.character), stringsAsFactors = FALSE)

write.csv(FORM1.new, file = "FORM1.csv")
