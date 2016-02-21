#load function wide_weed
source("~/Documents/Github/Crop_Survey_Database/Functions/wide_weed.R")

#load function long_weed
source("~/Documents/Github/Crop_Survey_Database/Functions/long_weed.R")

combind_weed1_2 <- function(data1 = dataf2.1, data2 = dataf2.2){
  form2.weed <- matrix(nrow = 0, ncol = 9)
  # = weed visit1
  visit1.weed <- as.data.frame(wide_weed(dataf2.1))
  visit1.weed$visit <- "1"
  visit1.weed <- long_weed(visit1.weed)

  # = weed visit2

  visit2.weed <- as.data.frame(wide_weed(dataf2.2))
  visit2.weed$visit <- "2"
  visit2.weed <- long_weed(visit2.weed)


  # === combind visit1 and visit2 weed=====

  new.row.weed <- rbind(visit1.weed, visit2.weed)
  form2.weed <- rbind(form2.weed, new.row.weed)

}

#eos