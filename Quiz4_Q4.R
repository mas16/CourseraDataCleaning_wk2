## Getting and Cleaning Data
## Quiz 4 Ques 4

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## Read .csv file and clean data to isolate ranked 190 countries and eliminate header
gdp_df <- read.csv("getdata%2Fdata%2FGDP.csv", stringsAsFactors = FALSE)
rankings <- as.numeric(gdp_df$Gross.domestic.product.2012)
df_clean <- gdp_df[which(!is.na(rankings)),]

## Read .csv for country fed stats data
country <- read.csv("getdata%2Fdata%2FEDSTATS_Country.csv", stringsAsFactors = FALSE)

## Match data based on country codes
merged <- merge(df_clean, country, by.x='X', by.y="CountryCode")

june_end <- grep("Fiscal year end: June",merged$Special.Notes)

length(june_end)

## Answer:
## 13