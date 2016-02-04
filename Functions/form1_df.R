##############################################################################
# title         : form1.R
# purpose       : extract the general information from the sheet1 named "form1" in excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : general information in the data frame format;
##############################################################################

# this the dunction to extract the data from excel

form1_df <- function(dataf1) {

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



          # corract the type of variables
          df1 <- form1data %>% transform(field.no = as.character(field.no),
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

          return(df1) # return the dataframe of data for Form1


}
# ==========EOS==========
