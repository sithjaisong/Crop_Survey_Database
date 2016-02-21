
# Load function
#load function wide_injury()
source("~/Documents/Github/Crop_Survey_Database/Functions/wide_injury.R")

#load function long_injury()
source("~/Documents/Github/Crop_Survey_Database/Functions/long_injury.R")

combind_injury1_2 <- function(data1 = dataf2.1, data2 = dataf2.2){
  form2.injury <- matrix(nrow = 0, ncol = 30) 
  # = injury visit1
  visit1.injury <- as.data.frame(wide.injury(dataf2.1))
  visit1.injury$visit <- "1"
  visit1.injury <- long_injury(visit1.injury)
  
  # = injury visit2
  
  visit2.injury <- as.data.frame(wide.injury(dataf2.2))
  visit2.injury$visit <- "2"
  visit2.injury <- long_injury(visit2.injury)
  
  
  # === combind visit1 and visit2 injury=====
  
  new.row.injury <- rbind(visit1.injury, visit2.injury)
  form2.injury <- rbind(form2.injury, new.row.injury)
  
}

#eos