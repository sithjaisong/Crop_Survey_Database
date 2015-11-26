library(googlesheets)
library(dplyr)
gs_read(file = "/Users/sithjaisong/Google Drive/SYT-SKEP/Raw Data 2010/SKEP-India/India DS 2010/Data Entry Template 2010_ss")

my_sheets <- gs_ls()

my_sheets %>% glimpse() # there are ten variables that you should look at for this project

dothis_sheets <- my_sheets %>% filter(author == "j.macasero") %>% filter(grepl("PH|Ph|ph|pH", sheet_title))

# Here is just one sample data set from the google drive with 

dataf1 <- gs_title(paste(dothis_sheets[54, "sheet_title"])) %>% gs_read(ws = "Form 1", header = FALSE)

dataf1[3,3]
