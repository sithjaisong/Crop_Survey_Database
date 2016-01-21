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
    names(field.no) <- "Field.No"
    
    # ==
    village.name <- dataf1[3, 10]
    names(village.name) <- "Village.Name"
    
    # ===
    field.area <- dataf1[12, 7]
    names(field.area) <- "Field.Area"
    
    # ===
    farmer.name <- dataf1[12, 14]
    names(farmer.name) <- "Farmer.Name"
    
    # ==========LANDFORM==========
    
    land.form <- "Irrigated"
    names(land.form) <- "Land.Form"
    
    # ===
    prev.crop <- dataf1[18, 4]
    names(prev.crop) <- "Previous.Crop"
    
    # ===
    fallow.prd <- dataf1[18, 23]
    names(fallow.prd) <- "Fallow.Period"
    
    # ===
    soil.salt <- dataf1[22, 8]
    names(soil.salt) <- "soil.salt"
    soil.zinc <- dataf1[22, 11]
    names(soil.zinc) <- "soil.zic"
    soil.alum <- dataf1[22, 17]
    names(soil.alum) <- "soil.alu"
    
    # ==========CROP ESTABLISHMENT==========
    
    # ===
    crop.est.method <- ifelse(is.character(dataf1[26, 7]) == TRUE, "Transplanted", "Direct_seeded")
    names(crop.est.method) <- "Planting.Method"
    
    # ===
    seed.age <- dataf1[25, 21]
    names(seed.age) <- "Seedling.Age"
    
    # ===
    crop.est.date <- dataf1[31, 12]
    names(crop.est.date) <- "Planting.Date"
    
    # ===
    crop.harv.date <- dataf1[31, 24]
    names(crop.harv.date) <- "Harvest.Date"
    
    # ===
    rice.var <- dataf1[32, 5]
    names(rice.var) <- "Rice.Variety"
    
    # ===
    traditional <- dataf1[32, 13]
    names(traditional) <- "traditional"
    modern <- dataf1[32, 20]
    names(modern) <- "modern"
    hybrid <- dataf1[32, 26]
    names(hybrid) <- "hybrid"
    
    # ==========FERTILISER==========
    
    Ntotal <- dataf1[50, 11]
    
    names(Ntotal) <- "N_total"
    
    Ptotal <- dataf1[51, 11]
    names(Ptotal) <- "P_total"
    
    Ktotal <- dataf1[52, 11]
    names(Ktotal) <- "K_total"
    
    # ==========CROP STATUS==========
    
    yld.area1 <- dataf1[94, 14]
    
    names(yld.area1) <- "Yield.Area1"
    
    yld.area2 <- dataf1[94, 18]
    
    names(yld.area2) <- "Yield.Area2"
    
    yld.area3 <- dataf1[94, 22]
    names(yld.area3) <- "Yield.Area3"
    
    # ====
    
    form1data <- cbind(field.no, field.area, farmer.name, land.form, prev.crop, fallow.prd, soil.salt, soil.zinc, soil.alum, 
        crop.est.method, seed.age, rice.var, traditional, modern, hybrid, Ntotal, Ptotal, Ktotal, yld.area1, yld.area2, 
        yld.area3)
    
    
    return(form1data)
    
}
# ==========EOS========== 
