
# Load function
##############################################################################
# title         : weed_analysis.R;
# purpose       : compute weed data recoreded in the excel file;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : crop health survey form 1 (excel);
# outputs       : injuries and disease data of SKEP Phase I from all locations;
##############################################################################

source("~/Documents/Github/surveySKEP1//Functions/function.audpc.R")

weed_analysis <- function(form2.weed) {
    
    form2.weed[is.na(form2.weed)] <- 0
    
    form2.weed <- form2.weed %>% transform(filename = as.character(filename), visit = as.numeric(visit), Samp = as.numeric(Samp), 
        DVS = as.numeric(DVS), weed.above = as.numeric(weed.above), weed.below = as.numeric(weed.below), S.rank = as.numeric(S.rank), 
        BD.rank = as.numeric(BD.rank), G.rank = as.numeric(G.rank), SD.rank = as.numeric(SD.rank))
    # fill the na with 0
    
    ##### ----- Analysis sheet 3 weed infastration-----##### Calcuation for Weed sheet3, especially WA and WB tranform from
    ##### scale to percent
    #' weed class 0 is 0 percent
    #' weed class 1 is up to 10 percent, 
    #' weed class 2 is 10 to 30 percent
    #' weed class 3 is 30 to 60 percent
    #' weed class 4 is 60 to 100 percent 
    ########################################################## 
    
    form2.weed["weed.above"][form2.weed["weed.above"] == "0"] <- 0
    form2.weed["weed.above"][form2.weed["weed.above"] == "1"] <- 5
    form2.weed["weed.above"][form2.weed["weed.above"] == "2"] <- 20
    form2.weed["weed.above"][form2.weed["weed.above"] == "3"] <- 45
    form2.weed["weed.above"][form2.weed["weed.above"] == "4"] <- 80
    
    form2.weed["weed.below"][form2.weed["weed.below"] == "0"] <- 0
    form2.weed["weed.below"][form2.weed["weed.below"] == "1"] <- 5
    form2.weed["weed.below"][form2.weed["weed.below"] == "2"] <- 20
    form2.weed["weed.below"][form2.weed["weed.below"] == "3"] <- 45
    form2.weed["weed.below"][form2.weed["weed.below"] == "4"] <- 80
    
    ### 
    
    output <- form2.weed %>% group_by(filename, visit, DVS) %>% # find mean
    mutate(m.WA = mean(weed.above), m.WB = mean(weed.below)) %>% group_by(filename) %>% summarise(x.WA = audpc(m.WA, 
        DVS), x.WB = audpc(m.WB, DVS))
    
    return(output)
} 
