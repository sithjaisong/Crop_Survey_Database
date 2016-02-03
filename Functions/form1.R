##############################################################################
# title         : form1.R
# purpose       : extract the general information from the sheet1 named "form1" in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : general information in the data frame format;
##############################################################################

# this the dunction to extract the data from excel

form1 <- function(dataf1) {

    field.no <- dataf1[2, 3]
    village.name <- dataf1[3, 10]
    latitude <- dataf1[4, 10]
    longitude <- dataf1[4, 19]
    field.area <- dataf1[12, 7]
    farmer.name <- dataf1[12, 14]

    # ==========LANDFORM==========

    land.form <- "Irrigated"
    prev.crop <- dataf1[18, 4]
    fallow.prd <- dataf1[18, 23]
    soil.salt <- dataf1[22, 8]
    names(soil.salt) <- "soil.salt"
    soil.zinc <- dataf1[22, 11]
    names(soil.zinc) <- "soil.zic"
    soil.alum <- dataf1[22, 17]
    names(soil.alum) <- "soil.alu"

    # ==========CROP ESTABLISHMENT==========

    crop.est.method <- ifelse(!is.na(dataf1[25, 7]), "Transplanted", ifelse(!is.na(dataf1[28,
        7]), "Direct_seeded", NA))

    seed.age <- dataf1[25, 21]
    crop.est.date <- dataf1[31, 12]
    crop.harv.date <- dataf1[31, 24]
    rice.var <- dataf1[32, 5]
    type.var <- ifelse(!is.na(dataf1[32, 13]), "traditional", ifelse(!is.na(dataf1[32,
        20]), "modern", ifelse(!is.na(dataf1[32, 26]), "hybrid", NA)))

    # ==========FERTILISER==========

    N1application <- dataf1[38, 11]
    P1application <- dataf1[39, 11]
    K1application <- dataf1[40, 11]

    N2application <- dataf1[41, 11]
    P2application <- dataf1[42, 11]
    K2application <- dataf1[43, 11]

    N3application <- dataf1[44, 11]
    P3application <- dataf1[45, 11]
    K3application <- dataf1[46, 11]

    N4application <- dataf1[47, 11]
    P4application <- dataf1[48, 11]
    K4application <- dataf1[49, 11]

    Ntotal <- dataf1[50, 11]
    Ptotal <- dataf1[51, 11]
    Ktotal <- dataf1[52, 11]

    N1Name <- dataf1[38, 19]
    P1Name <- dataf1[39, 19]
    K1Name <- dataf1[40, 19]

    N2Name <- dataf1[41, 19]
    P2Name <- dataf1[42, 19]
    K2Name <- dataf1[43, 19]

    N3Name <- dataf1[44, 19]
    P3Name <- dataf1[45, 19]
    K3Name <- dataf1[46, 19]

    N4Name <- dataf1[47, 19]
    P4Name <- dataf1[48, 19]
    K4Name <- dataf1[49, 19]

    # ==========Chemical Use==========

    Chem1Name <- dataf1[69, 11]
    Chem2Name <- dataf1[70, 11]
    Chem3Name <- dataf1[71, 11]
    Chem4Name <- dataf1[72, 11]
    Chem5Name <- dataf1[73, 11]

    Chem1Dose <- dataf1[75, 11]
    Chem2Dose <- dataf1[76, 11]
    Chem3Dose <- dataf1[77, 11]
    Chem4Dose <- dataf1[78, 11]
    Chem5Dose <- dataf1[79, 11]

    Chem1Date <- dataf1[81, 11]
    Chem2Date <- dataf1[82, 11]
    Chem3Date <- dataf1[83, 11]
    Chem4Date <- dataf1[84, 11]
    Chem5Date <- dataf1[85, 11]

    # ==========CROP STATUS==========

    CropStatus <- ifelse(!is.na(dataf1[88, 8]), "very good", ifelse(!is.na(dataf1[88,
        16]), "good", ifelse(!is.na(dataf1[88, 26]), "average", ifelse(!is.na(dataf1[90,
        8]), "poor", ifelse(!is.na(dataf1[90, 16]), "very poor", NA)))))

    # ==========Yield Sample========

    yld.area1 <- dataf1[94, 14]
    yld.area2 <- dataf1[94, 18]
    yld.area3 <- dataf1[94, 22]

    # ========Cmbine======#

    form1data <- cbind(field.no, village.name, latitude, longitude, field.area,
        farmer.name, land.form, prev.crop, fallow.prd, soil.salt, soil.zinc,
        soil.alum, crop.est.method, seed.age, crop.est.date, crop.harv.date,
        rice.var, type.var, N1application, P1application, K1application,
        N2application, P2application, K2application, N3application, P3application,
        K3application, N4application, P4application, K4application, Ntotal,
        Ptotal, Ktotal, N1Name, P1Name, K1Name, N2Name, P2Name, K2Name,
        N3Name, P3Name, K3Name, N4Name, P4Name, K4Name, Chem1Name, Chem2Name,
        Chem3Name, Chem4Name, Chem5Name, Chem1Dose, Chem2Dose, Chem3Dose,
        Chem4Dose, Chem5Dose, Chem1Date, Chem2Date, Chem3Date, Chem4Date,
        Chem5Date, CropStatus, yld.area1, yld.area2, yld.area3)

    return(form1data)

}
# ==========EOS==========
