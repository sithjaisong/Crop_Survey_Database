Survey data of SKEP project Phase I
=========

All files are contained in the :file_folder: named "surveySKEP1"
Inside the folder there are 5 sub-folders

- IDN
- IND
- PHL
- THA
- VNM

Excel files are all named `SKEP-SURVEY-XXX-20XX-XX-FieldX.xls`

- `XXX` = country code (IDN(Indonesia), IND(India), PHL(Philippines), THA(Thailand),VNM(Vietnam))
- `20XX` = year (2010, 2011, 2012)
- `XX` = season code (DS(dry season), WS(wet season))
- `FieldX` = Field1, Field2, Field3,...

Excel files are composed of 3 data sheets names, form1, form2 visit1, and form2 visit2.

**surveySKEP1** folder is sheared with the PDM group, CESD, IRRI through the Google Drive.

The data in excel are store in the format, which is not appropriate to analyze. So Rscripts were wrote for extract the data from excel to the data frame format.

Crop Survey Database project
=====

You can download or folk from :octocat: Github:[Crop_Survey_Database](https://github.com/sithjaisong/Crop_Survey_Database.git) from my fork.

** project root

```
Crop_Survey_Database
|-----1.loadfileform1.R
|-----2.loadfileform2.R
|-----3.combind1_2.R
|-----Functions/
                /--form1.R
                /--injury.R
                /--sweep.R
                /--tidy_injury.R
                /--tidy_sweep.R
                /--weed.R

```

## Transforming the data from excel to the data frame format

`1loadfileform1.R` is for transform the data in sheet1 named "form 1"  from all subfolders in surveySKEP1 folder


`2loadfileform2.R` is for transform the data of sheet2 and sheet3 named "form2 visit1" and "form2 visit2", respectively from wide table format to long table format.

`3.combine1_2.R` is for combide the `FORM1` dataframe, which is the output from `1loadfileform1.R` and `FORM2` dataframe, which is the output from `2loadfileform2.R` using index as a primary key.
