Survey data of SKEP project Phase I
=========

All files are contained in the :file_folder: named "surveySKEP1"
Inside the folder there are 5 sub-folders

- IDN#85
- IND#85
- PHL#40
- THA#105
- VNM#80

Excel files are all named "SKEP-SURVEY-XXX-20XX-XX-FieldX"

- XXX = country code (IDN(Indonesia), IND(India), PHL(Philippines), THA(Thailand),VNM(Vietnam))
- 20XX = year (2010, 2011, 2012)
- XX = season code (DS(dry season), WS(wet season))
- FieldX = Field1, Field2, Field3,...

Excel files are composed of 3 data sheets names, form1, form2 visit1, and form2 visit2.

**surveySKEP1** folder is sheared with the PDM group, CESD, IRRI through the Google Drive.

The data in excel are store in the format, which is not appropriate to analyze. So Rscripts were wrote for extract the data from excel to the data frame format.

## Transforming the data from excel to the data frame format

You can download or folk from :octocat: Github:[surveySKEP1 project](https://github.com/sithjaisong/Crop_Survey_Database.git)

`1loadfileform1.R` is for transform the data in sheet1 named "form 1"  from all subfolders in surveySKEP1 folder


`2loadfileform2.R` is for transform the data in sheet2 and sheet3 named "form2 visit1" and "form2 visit2", respectively.

`3.combine1_2.R` is for combine the `FORM1` dataframe, which is the output from `1loadfileform1.R` and `FORM2` dataframe, which is the output from `2loadfileform2.R`
