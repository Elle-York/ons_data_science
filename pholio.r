# 1. Load libraries ------------------------------------------------------------


if(!require("tidyverse")) {install.packages("tidyverse");library(tidyverse)}
if(!require("xlsx")) {install.packages("xlsx");library(xlsx)}

# 2. Create pholio sheet -------------------------------------------------------


# Take your dataset 'df' and then transmute (keep what you specify, get rid of the rest)
# Just make sure to check that the values specified are correct for you


df <- df %>%
  transmute(IndicatorID = 93026, # put the correct indicator ID in here
            Year = 2018, # Check the year you want is correct
            YearRange = 1,
            Quarter = -1,
            Month = -1,
            AgeID = Your number,
            SexID = Your number,
            AreaCode = Code, # Take the area code column and call it 'AreaCode'
            Count = Num, # Take the numerator column from your data and call it 'Count'
            Value = Val, # Take the value column from your data and call it 'Value'
            LowerCI95 = Lower, # take the lower CI and call it 'LowerCI95'
            UpperCI95 = Upper, # take the upper CI and call it 'UpperCI95'
            LowerCI99_8 = -1,
            UpperCI99_8 = -1,
            Denominator = Denom, # Take the denominator column from your data and call it 'Denominator'
            Denominator_2 = -1,
            ValueNoteId = 0,
            CategoryTypeId = -1,
            CategoryId = -1)

write.xlsx(df,file = "my_data.xlsx", sheetName = "PHOLIO")


# Puts the pholio output in an excel sheet, renames the tab 'PHOLIO', and saves it to your project folder.