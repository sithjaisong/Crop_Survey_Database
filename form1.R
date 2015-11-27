
# data for load this is the data 

field.no <- dataf1[3,3]
names(field.no) <- 'Field.No'

village.name <- dataf1[4, 10]
names(village.name) <- 'Village.Name'

field.area <- dataf1[13, 7] 
names(field.area) <- 'Field.Area'

farmer.name <- dataf1[13, 14]
        
names(farmer.name) <- 'Farmer.Name'

GEN.INFO <- cbind(field.no,
                  village.name,
                  field.area,
                  farmer.name)
print(GEN.INFO)

# ==========LANDFORM==========

land.form <- dataf1[10,2]

names(land.form) <- 'Land.Form'

prev.crop <- dataf1[19, 4]

names(prev.crop) <- 'Previous.Crop'

fallow.prd <- dataf1[19, 23]

names(fallow.prd) <- 'Fallow.Period'

soil.prob <- dataf1[13, 2]

names(soil.prob) <- 'Soil.Problem'

LAND.FORM <- cbind(land.form,
                   prev.crop,
                   fallow.prd,
                   soil.prob)
print(LAND.FORM)

# ==========CROP ESTABLISHMENT==========

crop.est.method <- dataf1[14, 2]
  
names(crop.est.method) <- 'Planting.Method'

seed.age <- dataf1[26,21]

names(seed.age) <- 'Seedling.Age'

tiller.no <- dataf1[ 27, 17]
  
if (length(tiller.no[1,1]<1)) {
  tiller.no <- 'NA'
} else {
  tiller.no 
}

plant.no <- dataf1[29, 17]

if (length(plant.no[1,1]<1)) {
  plant.no[1,1] <- 'NA'
} else {
  names(plant.no) <- 'Plant.No'
}

crop.est.date <- dataf1[31, 12]

Planting.Date <- as.Date(crop.est.date, "%YYYY-%m-%d")

crop.harv.date <- dataf1[31, 24]

Harvest.Date <- as.Date(crop.harv.date, "%YYYY-%m-%d")

rice.var <- data[33, 5] 
names(rice.var) <- 'Rice.Variety'

var.type <- dataf1[20, 2]

names(var.type) <- 'Variety.Type'

CROP.EST <- cbind(crop.est.method,
                  seed.age,
                  tiller.no,
                  plant.no,
                  Planting.Date,
                  Harvest.Date,
                  rice.var,
                  var.type)
print(CROP.EST)

# ==========FERTILISER==========

manure.rate <- dataf1[37, 11]

names(manure.rate) <- 'Manure.Rate'

N1.rate <- dataf1[39, 11] 
names(N1.rate) <- 'N1.Rate'

N1.fert.name <- dataf1[39,19]
names(N1.fert.name) <- 'N1.Name'

P1.rate <- dataf1[40, 11]

P1.rate <-as.character(P1.rate)

P1.fert.name <- dataf1[40,19] 
names(P1.fert.name) <- 'P1.Name'

K1.rate <- dataf1[41,11]
names(K1.rate) <- 'K1.Rate'

K1.fert.name <- dataf1[41, 19]
names(K1.fert.name) <- 'K1.Name'

N2.rate <- dataf1[42, 11] 
names(N2.rate) <- 'N2.Rate'

N2.fert.name <- dataf1[42,19] 
names(N2.fert.name) <- 'N2.Name'

P2.rate <- dataf1[43,11] 
names(P2.rate) <- 'P2.Rate'

P2.fert.name <- dataf1[43, 19] 
names(P2.fert.name) <- 'P2.Name'

K2.rate <- dataf1[44, 11]
names(K2.rate) <- 'K2.Rate'

K2.fert.name <- dataf1[44, 19] 
names(K2.fert.name) <- 'K2.Name'

N3.rate <- dataf1[45, 11]  
names(N3.rate) <- 'N3.Rate'

N3.fert.name <- dataf1[45,19]
names(N3.fert.name) <- 'N3.Name'

P3.rate <- dataf1[46, 11] 
names(P3.rate) <- 'P3.Rate'

P3.fert.name <- dataf1[46,19] 
names(P3.fert.name) <- 'P3.Name'

K3.rate <- dataf1[47,11] 
names(K3.rate) <- 'K3.Rate'

K3.fert.name <- dataf1[47,19] 
names(K3.fert.name) <- 'K3.Name'

N4.rate <- dataf1[48,11] 

names(N4.rate) <- 'N4.Rate'

N4.fert.name <- dataf1[48, 19] 
names(N4.fert.name) <- 'N4.Name'

P4.rate <- dataf1[49, 11]
names(P4.rate) <- 'P4.Rate'

P4.fert.name <-  dataf1[49,19] 
names(P4.fert.name) <- 'P4.Name'

K4.rate <- dataf1[50, 11]
names(K4.rate) <- 'K4.Rate'

K4.fert.name <- dataf1[50, 19] 
names(K4.fert.name) <- 'K4.Name'

N.total <- dataf1[51, 11] 
names(N.total) <- 'Total.N'

P.total <-  dataf1[52, 11] 
names(P.total) <- 'Total.P'

K.total <- dataf1[53, 11] 
names(K.total) <- 'Total K'

N1.date <- dataf1[55, 11] 
N1.date <- as.Date(N1.date, "%YYYY-%m-%d")

P1.date <- dataf1[56, 11] 
P1.date <- as.Date(P1.date, "%YYYY-%m-%d")

K1.date <- dataf1[57, 11] 
K1.date <- as.Date(K1.date, "%YYYY-%m-%d")

N2.date <- dataf1[58, 11] 
N2.date <- as.Date(N2.date, "%YYYY-%m-%d")

P2.date <- dataf1[59, 11] 
P2.date <- as.Date(P2.date, "%YYYY-%m-%d")

K2.date <- dataf1[60, 11] 
K2.date <- as.Date(K2.date, "%YYYY-%m-%d")

N3.date <- dataf1[61, 11] 
N3.date <- as.Date(N3.date, "%YYYY-%m-%d")

P3.date <- dataf1[62, 11]
P3.date <- as.Date(P3.date, "%YYYY-%m-%d")

K3.date <- dataf1[63,11] 
K3.date <- as.Date(K3.date, "%YYYY-%m-%d")

N4.date <- dataf1[64, 11]
N4.date <- as.Date(N4.date, "%YYYY-%m-%d")

P4.date <- dataf1[65, 11] 
P4.date <- as.Date(P4.date, "%YYYY-%m-%d")

K4.date <- dataf1[66,11] 
if (length(K4.date <1)) K4.date <- 'NULL'
K4.date <- as.Date(K4.date, "%YYYY-%m-%d")

FERTILISER <- cbind(manure.rate,
                    N1.rate,
                    N1.fert.name,
                    P1.rate,
                    P1.fert.name,
                    K1.rate,
                    K1.fert.name,
                    N2.rate,
                    N2.fert.name,
                    P2.rate,
                    P2.fert.name,
                    K2.rate,
                    K2.fert.name,
                    N3.rate,
                    N3.fert.name,
                    P3.rate,
                    P3.fert.name,
                    K3.rate,
                    K3.fert.name,
                    N4.rate,
                    N4.fert.name,
                    P4.rate,
                    P4.fert.name,
                    K4.rate,
                    K4.fert.name,
                    N.total,
                    P.total,
                    K.total,
                    N1.date,
                    P1.date,
                    K1.date,
                    N2.date,
                    P2.date,
                    K2.date,
                    N3.date,
                    P3.date,
                    K3.date,
                    N4.date,
                    P4.date,
                    K4.date)
print(FERTILISER)

# ==========PESTICIDE==========

insectcd.use <- dataf1[readWorksheet(wb,
                              "Summary Visit 1",
                              startRow=27,
                              startCol=2,
                              endRow=27,
                              endCol=2,
                              header=FALSE)
names(insectcd.use) <- 'Insecticide.Use'

herbcd.use <- readWorksheet(wb,
                            "Summary Visit 1",
                            startRow=28,
                            startCol=2,
                            endRow=28,
                            endCol=2,
                            header=FALSE)
names(herbcd.use) <- 'Herbicide.Use'

fungicd.use <- readWorksheet(wb,
                             "Summary Visit 1",
                             startRow=29,
                             startCol=2,
                             endRow=29,
                             endCol=2,
                             header=FALSE)
names(fungicd.use) <- 'Fungicide.Use'

pestcd.name1 <- readWorksheet(wb,
                              "Form 1",
                              startRow=70,
                              startCol=11,
                              endRow=70,
                              endCol=16,
                              header=FALSE)
names(pestcd.name1) <- 'Pesticide.Name1'

pestcd.name2 <- readWorksheet(wb,
                              "Form 1",
                              startRow=71,
                              startCol=11,
                              endRow=71,
                              endCol=16,
                              header=FALSE)
names(pestcd.name2) <- 'Pesticide.Name2'

pestcd.name3 <- readWorksheet(wb,
                              "Form 1",
                              startRow=72,
                              startCol=11,
                              endRow=72,
                              endCol=16,
                              header=FALSE)
names(pestcd.name3) <- 'Pesticide.Name3'

pestcd.name4 <- readWorksheet(wb,
                              "Form 1",
                              startRow=73,
                              startCol=11,
                              endRow=73,
                              endCol=16,
                              header=FALSE)
names(pestcd.name4) <- 'Pesticide.Name4'

pestcd.name5 <- readWorksheet(wb,
                              "Form 1",
                              startRow=74,
                              startCol=11,
                              endRow=74,
                              endCol=16,
                              header=FALSE)
names(pestcd.name5) <- 'Pesticide.Name5'

pestcd.name6 <- readWorksheet(wb,
                              "Form 1",
                              startRow=75,
                              startCol=11,
                              endRow=75,
                              endCol=16,
                              header=FALSE)
names(pestcd.name6) <- 'Pesticide.Name6'

pestcd.rate1 <- readWorksheet(wb,
                              "Form 1",
                              startRow=77,
                              startCol=11,
                              endRow=77,
                              endCol=16,
                              header=FALSE)
names(pestcd.rate1) <- 'Pesticide.Rate1'

pestcd.rate2 <- readWorksheet(wb,
                              "Form 1",
                              startRow=78,
                              startCol=11,
                              endRow=78,
                              endCol=16,
                              header=FALSE)
names(pestcd.rate2) <- 'Pesticide.Rate2'

pestcd.rate3 <- readWorksheet(wb,
                              "Form 1",
                              startRow=79,
                              startCol=11,
                              endRow=79,
                              endCol=16,
                              header=FALSE)
names(pestcd.rate3) <- 'Pesticide.Rate3'

pestcd.rate4 <- readWorksheet(wb,
                              "Form 1",
                              startRow=80,
                              startCol=11,
                              endRow=80,
                              endCol=16,
                              header=FALSE)
names(pestcd.rate4) <- 'Pesticide.Rate4'

pestcd.rate5 <- readWorksheet(wb,
                              "Form 1",
                              startRow=81,
                              startCol=11,
                              endRow=81,
                              endCol=16,
                              header=FALSE)
names(pestcd.rate5) <- 'Pesticide.Rate5'

pestcd.rate6 <- readWorksheet(wb,
                              "Form 1",
                              startRow=82,
                              startCol=11,
                              endRow=82,
                              endCol=16,
                              header=FALSE)
names(pestcd.rate6) <- 'Pesticide.Rate6'

pestcd.date1 <- readWorksheet(wb,
                              "Form 1",
                              startRow=84,
                              startCol=11,
                              endRow=84,
                              endCol=16,
                              header=FALSE)
names(pestcd.date1) <- 'Pesticide.Date1'

pestcd.date2 <- readWorksheet(wb,
                              "Form 1",
                              startRow=85,
                              startCol=11,
                              endRow=85,
                              endCol=16,
                              header=FALSE)
names(pestcd.date2) <- 'Pesticide.Date2'

pestcd.date3 <- readWorksheet(wb,
                              "Form 1",
                              startRow=86,
                              startCol=11,
                              endRow=86,
                              endCol=16,
                              header=FALSE)
names(pestcd.date3) <- 'Pesticide.Date3'

pestcd.date4 <- readWorksheet(wb,
                              "Form 1",
                              startRow=87,
                              startCol=11,
                              endRow=87,
                              endCol=16,
                              header=FALSE)
names(pestcd.date4) <- 'Pesticide.Date4'

pestcd.date5 <- readWorksheet(wb,
                              "Form 1",
                              startRow=88,
                              startCol=11,
                              endRow=88,
                              endCol=16,
                              header=FALSE)
names(pestcd.date5) <- 'Pesticide.Date5'

pestcd.date6 <- readWorksheet(wb,
                              "Form 1",
                              startRow=89,
                              startCol=11,
                              endRow=89,
                              endCol=16,
                              header=FALSE)
names(pestcd.date6) <- 'Pesticide.Date6'

PESTICIDE <- cbind(insectcd.use,
                   herbcd.use,
                   fungicd.use,
                   pestcd.name1,
                   pestcd.name2,
                   pestcd.name3,
                   pestcd.name4,
                   pestcd.name5,
                   pestcd.name6,
                   pestcd.rate1,
                   pestcd.rate2,
                   pestcd.rate3,
                   pestcd.rate4,
                   pestcd.rate5,
                   pestcd.rate6,
                   pestcd.date1,
                   pestcd.date2,
                   pestcd.date3,
                   pestcd.date4,
                   pestcd.date5,
                   pestcd.date6)
print(PESTICIDE)

# ==========CROP STATUS==========

crop.stat <- readWorksheet(wb,
                           "Summary Visit 1",
                           startRow=35,
                           startCol=2,
                           endRow=35,
                           endCol=2,
                           header=FALSE)
names(crop.stat) <- 'Crop.Status'

lodging <- readWorksheet(wb,
                         "Summary Visit 1",
                         startRow=36,
                         startCol=2,
                         endRow=36,
                         endCol=2,
                         header=FALSE)
names(lodging) <- 'Percent.Lodging'

yld.area1 <- readWorksheet(wb,
                           "Form 1",
                           startRow=98,
                           startCol=14,
                           endRow=98,
                           endCol=15,
                           header=FALSE)
names(yld.area1) <- 'Yield.Area1'

yld.area2 <- readWorksheet(wb,
                           "Form 1",
                           startRow=98,
                           startCol=18,
                           endRow=98,
                           endCol=19,
                           header=FALSE)
names(yld.area2) <- 'Yield.Area2'

yld.area3 <- readWorksheet(wb,
                           "Form 1",
                           startRow=98,
                           startCol=22,
                           endRow=98,
                           endCol=23,
                           header=FALSE)
names(yld.area3) <- 'Yield.Area3'

mc.area1 <- readWorksheet(wb,
                          "Form 1",
                          startRow=99,
                          startCol=14,
                          endRow=99,
                          endCol=15,
                          header=FALSE)
names(mc.area1) <- 'MC.Area1'

mc.area2 <- readWorksheet(wb,
                          "Form 1",
                          startRow=99,
                          startCol=18,
                          endRow=99,
                          endCol=19,
                          header=FALSE)
names(mc.area2) <- 'MC.Area2'

mc.area3 <- readWorksheet(wb,
                          "Form 1",
                          startRow=99,
                          startCol=22,
                          endRow=99,
                          endCol=23,
                          header=FALSE)
names(mc.area3) <- 'MC.Area3'

CROP.STATUS <- cbind(crop.stat,
                     lodging,
                     yld.area1,
                     yld.area2,
                     yld.area3,
                     mc.area1,
                     mc.area2,
                     mc.area3)
print(CROP.STATUS)

## cbind the above dataframes

form1 <- cbind(GEN.INFO,
               LAND.FORM,
               CROP.EST,
               FERTILISER,
               PESTICIDE,
               CROP.STATUS)
print(form1)

## create worksheet for form1

createSheet(wb, "Form1_R")

writeWorksheet(wb, form1, sheet="Form1_R")

saveWorkbook(wb)


# ==========EOS==========