##############################################################################
# title         : Crop_Survey_DB_Form1.R;
# purpose       : Format crop health survey data for insertion and insert into relational database;
# producer      : prepared by A. Sparks;
# editor        : edited by M. Noel;
# last update   : in Los Banos, IRRI, 30 OCT 2013;
# inputs        : crop health survey form 1;
# outputs       : crop health survey data inserted into relational database;
##############################################################################

library(XLConnect)


wb <- loadWorkbook("E:\\Google Drive\\SYT-SKEP\\Raw_data_2011_exc\\SKEP TH WS2011\\TH second season\\IRRI-Survey (1).xlsx")

## Synthesis <- readWorksheet(object, sheet, startRow, startCol, endRow, endCol, header=TRUE)

# ==========GENERAL INFORMATION==========

field.no <- readWorksheet(wb,
                          "Form 1",
                          startRow=3,
                          startCol=3,
                          endRow=3,
                          endCol=3,
                          header=FALSE)
names(field.no) <- 'Field.No'

visit.date <- readWorksheet(wb,
                            "Form 1",
                            startRow=1,
                            startCol=18,
                            endRow=1,
                            endCol=20,
                            header=FALSE)
Visit.Date <- as.Date(visit.date[1, 1], "%YYYY-%m-%d")

village.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=4,
                              startCol=10,
                              endRow=4,
                              endCol=10,
                              header=FALSE)
names(village.name) <- 'Village.Name'

lat <- readWorksheet(wb,
                     "Form 1",
                     startRow=5,
                     startCol=10,
                     endRow=5,
                     endCol=14,
                     header=FALSE)
Latitude <- as.numeric(substr(lat, 1, 2)) +
  (as.numeric(substr(lat, 5, 6))*60 +
     as.numeric(substr(lat, 9, 12)))/3600
if(substr(lat, 15, 15) == "S") latitude = latitude*-1

lon <- readWorksheet(wb,
                     "Form 1",
                     startRow=5,
                     startCol=19,
                     endRow=5,
                     endCol=23,
                     header=FALSE)
Longitude <- as.numeric(substr(lon, 1, 2)) +
  (as.numeric(substr(lon, 5, 6))*60 +
     as.numeric(substr(lon, 9, 12)))/3600
if(substr(lon, 16, 16) == "W") longitude = longitude*-1

field.area <- readWorksheet(wb,
                            "Form 1",
                            startRow=13,
                            startCol=7,
                            endRow=13,
                            endCol=8,
                            header=FALSE)
names(field.area) <- 'Field.Area'

farmer.name <- readWorksheet(wb,
                             "Form 1",
                             startRow=13,
                             startCol=14,
                             endRow=13,
                             endCol=22,
                             header=FALSE)
names(farmer.name) <- 'Farmer.Name'

GEN.INFO <- cbind(field.no,
                  Visit.Date,
                  village.name,
                  Latitude,
                  Longitude,
                  field.area,
                  farmer.name)
print(GEN.INFO)

# ==========LANDFORM==========

land.form <- readWorksheet(wb,
                           "Summary Visit 1",
                           startRow=10,
                           startCol=2,
                           endRow=10,
                           endCol=2,
                           header=FALSE)
names(land.form) <- 'Land.Form'

prev.crop <- readWorksheet(wb,
                           "Form 1",
                           startRow=19,
                           startCol=4,
                           endRow=19,
                           endCol=5,
                           header=FALSE)
names(prev.crop) <- 'Previous.Crop'

fallow.prd <- readWorksheet(wb,
                            "Form 1",
                            startRow=19,
                            startCol=23,
                            endRow=19,
                            endCol=23,
                            header=FALSE)
names(fallow.prd) <- 'Fallow.Period'

soil.prob <- readWorksheet(wb,
                           "Summary Visit 1",
                           startRow=13,
                           startCol=2,
                           endRow=13,
                           endCol=2,
                           header=FALSE)
names(soil.prob) <- 'Soil.Problem'

LAND.FORM <- cbind(land.form,
                   prev.crop,
                   fallow.prd,
                   soil.prob)
print(LAND.FORM)

# ==========CROP ESTABLISHMENT==========

crop.est.method <- readWorksheet(wb,
                                 "Summary Visit 1",
                                 startRow=14,
                                 startCol=2,
                                 endRow=14,
                                 endCol=2,
                                 header=FALSE)
names(crop.est.method) <- 'Planting.Method'

seed.age <- readWorksheet(wb,
                          "Form 1",
                          startRow=26,
                          startCol=21,
                          endRow=26,
                          endCol=21,
                          header=FALSE)
names(seed.age) <- 'Seedling.Age'

tiller.no <- readWorksheet(wb,
                           "Form 1",
                           startRow=27,
                           startCol=17,
                           endRow=27,
                           endCol=17,
                           header=FALSE)
if (length(tiller.no[1,1]<1)) {
  tiller.no <- 'NA'
} else {
  tiller.no 
}

plant.no <- readWorksheet(wb,
                          "Form 1",
                          startRow=29,
                          startCol=17,
                          endRow=29,
                          endCol=18,
                          header=FALSE)
if (length(plant.no[1,1]<1)) {
  plant.no[1,1] <- 'NA'
} else {
  names(plant.no) <- 'Plant.No'
}


crop.est.date <- readWorksheet(wb,
                               "Form 1",
                               startRow=31,
                               startCol=12,
                               endRow=31,
                               endCol=14,
                               header = FALSE)
Planting.Date <- as.Date(crop.est.date[1, 1], "%YYYY-%m-%d")

crop.harv.date <- readWorksheet(wb,
                                "Form 1",
                                startRow=31,
                                startCol=24,
                                endRow=31,
                                endCol=26,
                                header=FALSE)
Harvest.Date <- as.Date(crop.harv.date[1, 1], "%YYYY-%m-%d")

rice.var <- readWorksheet(wb,
                          "Form 1",
                          startRow=33,
                          startCol=5,
                          endRow=33,
                          endCol=7,
                          header=FALSE)
names(rice.var) <- 'Rice.Variety'

var.type <- readWorksheet(wb,
                          "Summary Visit 1",
                          startRow=20,
                          startCol=2,
                          endRow=20,
                          endCol=2,
                          header=FALSE)
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

manure.rate <- readWorksheet(wb,
                             "Form 1",
                             startRow=37,
                             startCol=11,
                             endRow=37,
                             endCol=11,
                             header=FALSE)
names(manure.rate) <- 'Manure.Rate'

N1.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=39,
                         startCol=11,
                         endRow=39,
                         endCol=14,
                         header=FALSE)
names(N1.rate) <- 'N1.Rate'

N1.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=39,
                              startCol=19,
                              endRow=39,
                              endCol=22,
                              header=FALSE)
names(N1.fert.name) <- 'N1.Name'

P1.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=40,
                         startCol=11,
                         endRow=40,
                         endCol=14,
                         header=FALSE)
P1.rate <-as.character(P1.rate[1,1])

P1.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=40,
                              startCol=19,
                              endRow=40,
                              endCol=22,
                              header=FALSE)
names(P1.fert.name) <- 'P1.Name'

K1.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=41,
                         startCol=11,
                         endRow=41,
                         endCol=14,
                         header=FALSE)
names(K1.rate) <- 'K1.Rate'

K1.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=41,
                              startCol=19,
                              endRow=41,
                              endCol=22,
                              header=FALSE)
names(K1.fert.name) <- 'K1.Name'

N2.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=42,
                         startCol=11,
                         endRow=42,
                         endCol=14,
                         header=FALSE)
names(N2.rate) <- 'N2.Rate'

N2.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=42,
                              startCol=19,
                              endRow=42,
                              endCol=22,
                              header=FALSE)
names(N2.fert.name) <- 'N2.Name'

P2.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=43,
                         startCol=11,
                         endRow=43,
                         endCol=14,
                         header=FALSE)
names(P2.rate) <- 'P2.Rate'

P2.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=43,
                              startCol=19,
                              endRow=43,
                              endCol=22,
                              header=FALSE)
names(P2.fert.name) <- 'P2.Name'

K2.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=44,
                         startCol=11,
                         endRow=44,
                         endCol=14,
                         header=FALSE)
names(K2.rate) <- 'K2.Rate'

K2.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=44,
                              startCol=19,
                              endRow=44,
                              endCol=22,
                              header=FALSE)
names(K2.fert.name) <- 'K2.Name'

N3.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=45,
                         startCol=11,
                         endRow=45,
                         endCol=14,
                         header=FALSE)
names(N3.rate) <- 'N3.Rate'

N3.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=45,
                              startCol=19,
                              endRow=45,
                              endCol=22,
                              header=FALSE)
names(N3.fert.name) <- 'N3.Name'

P3.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=46,
                         startCol=11,
                         endRow=46,
                         endCol=14,
                         header=FALSE)
names(P3.rate) <- 'P3.Rate'

P3.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=46,
                              startCol=19,
                              endRow=46,
                              endCol=22,
                              header=FALSE)
names(P3.fert.name) <- 'P3.Name'

K3.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=47,
                         startCol=11,
                         endRow=47,
                         endCol=14,
                         header=FALSE)
names(K3.rate) <- 'K3.Rate'

K3.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=47,
                              startCol=19,
                              endRow=47,
                              endCol=22,
                              header=FALSE)
names(K3.fert.name) <- 'K3.Name'

N4.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=48,
                         startCol=11,
                         endRow=48,
                         endCol=14,
                         header=FALSE)
names(N4.rate) <- 'N4.Rate'

N4.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=48,
                              startCol=19,
                              endRow=48,
                              endCol=22,
                              header=FALSE)
names(N4.fert.name) <- 'N4.Name'

P4.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=49,
                         startCol=11,
                         endRow=49,
                         endCol=14,
                         header=FALSE)
names(P4.rate) <- 'P4.Rate'

P4.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=49,
                              startCol=19,
                              endRow=49,
                              endCol=22,
                              header=FALSE)
names(P4.fert.name) <- 'P4.Name'

K4.rate <- readWorksheet(wb,
                         "Form 1",
                         startRow=50,
                         startCol=11,
                         endRow=50,
                         endCol=14,
                         header=FALSE)
names(K4.rate) <- 'K4.Rate'

K4.fert.name <- readWorksheet(wb,
                              "Form 1",
                              startRow=50,
                              startCol=19,
                              endRow=50,
                              endCol=22,
                              header=FALSE)
names(K4.fert.name) <- 'K4.Name'

N.total <- readWorksheet(wb,
                         "Form 1",
                         startRow=51,
                         startCol=11,
                         endRow=51,
                         endCol=14,
                         header=FALSE)
names(N.total) <- 'Total.N'

P.total <- readWorksheet(wb,
                         "Form 1",
                         startRow=52,
                         startCol=11,
                         endRow=52,
                         endCol=14,
                         header=FALSE)
names(P.total) <- 'Total.P'

K.total <- readWorksheet(wb,
                         "Form 1",
                         startRow=53,
                         startCol=11,
                         endRow=53,
                         endCol=14,
                         header=FALSE)
names(K.total) <- 'Total K'

N1.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=55,
                         startCol=11,
                         endRow=55,
                         endCol=14,
                         header=FALSE)
N1.date <- as.Date(N1.date[1, 1], "%YYYY-%m-%d")

P1.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=56,
                         startCol=11,
                         endRow=56,
                         endCol=14,
                         header=FALSE)
P1.date <- as.Date(P1.date[1, 1], "%YYYY-%m-%d")

K1.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=57,
                         startCol=11,
                         endRow=57,
                         endCol=14,
                         header=FALSE)
K1.date <- as.Date(K1.date[1, 1], "%YYYY-%m-%d")

N2.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=58,
                         startCol=11,
                         endRow=58,
                         endCol=14,
                         header=FALSE)
N2.date <- as.Date(N2.date[1, 1], "%YYYY-%m-%d")

P2.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=59,
                         startCol=11,
                         endRow=59,
                         endCol=14,
                         header=FALSE)
P2.date <- as.Date(P2.date[1, 1], "%YYYY-%m-%d")

K2.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=60,
                         startCol=11,
                         endRow=60,
                         endCol=14,
                         header=FALSE)
K2.date <- as.Date(K2.date[1, 1], "%YYYY-%m-%d")

N3.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=61,
                         startCol=11,
                         endRow=61,
                         endCol=14,
                         header=FALSE)
N3.date <- as.Date(N3.date[1, 1], "%YYYY-%m-%d")

P3.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=62,
                         startCol=11,
                         endRow=62,
                         endCol=14,
                         header=FALSE)
P3.date <- as.Date(P3.date[1, 1], "%YYYY-%m-%d")

K3.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=63,
                         startCol=11,
                         endRow=63,
                         endCol=14,
                         header=FALSE)
K3.date <- as.Date(K3.date[1, 1], "%YYYY-%m-%d")

N4.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=64,
                         startCol=11,
                         endRow=64,
                         endCol=14,
                         header=FALSE)
N4.date <- as.Date(N4.date[1, 1], "%YYYY-%m-%d")

P4.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=65,
                         startCol=11,
                         endRow=65,
                         endCol=14,
                         header=FALSE)
P4.date <- as.Date(P4.date[1, 1], "%YYYY-%m-%d")

K4.date <- readWorksheet(wb,
                         "Form 1",
                         startRow=66,
                         startCol=11,
                         endRow=66,
                         endCol=14,
                         header=FALSE)
if (length(K4.date[1,1] <1)) K4.date[1,1] <- 'NULL'
K4.date <- as.Date(K4.date[1, 1], "%YYYY-%m-%d")

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

insectcd.use <- readWorksheet(wb,
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
