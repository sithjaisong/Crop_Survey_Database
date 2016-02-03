##############################################################################
# title         : 3.combine1_2.R;
# purpose       : to create the whole dataset of the survey data of SKEP Phase I;
# producer      : prepared by S. jaiosong;
# last update   : in Los Banos, IRRI, 21 January 2016;
# inputs        : FORM1 and FORM2 from 1,loadfileform1.R, loadfileform2.R;
# outputs       : FULL data of SKEP Phase I fromm all locations;
##############################################################################

#1 to get FORM1 data frame, please run the loadfileform1.R before
#2 to get FORM2 data frame, please run the loadfileform2.R

FULL <- merge(FORM1, FORM2, by = "index")

save(FULL, file =  "~/Google Drive/surveySKEP1/FULLdatabase1.RData")
