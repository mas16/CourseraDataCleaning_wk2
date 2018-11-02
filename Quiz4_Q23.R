## Getting and Cleaning Data
## Quiz 4 Ques 2 and 3

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## To complete this question you need to first identify that the data
## provided need to be cleaned in order to isolate the 190 ranked countries
## Then you need to use the gsub function which was described in Week 4 Video
## "Editing Text Variables" 6:05

## Open data in excel...there is a header
## Data needs to be cleaned first

## Read .csv file and clean data to isolate ranked 190 countries and eliminate header
gdp_df <- read.csv("getdata%2Fdata%2FGDP.csv", stringsAsFactors = FALSE)
rankings <- as.numeric(gdp_df$Gross.domestic.product.2012)
df_clean <- gdp_df[which(!is.na(rankings)),]

## Take a look at it
## head(df_clean)

## The GDP values are in column with name "X.3"
test_vec <- df_clean$X.3

## Remove commas with gsub, convert to numeric, return mean
mean_val <- gsub(",","",test_vec) %>% as.numeric %>% mean
print(mean_val)

## Answer:
## 377652.4

## Question 3

## Regular expressions for start of line use ^
## The answer is automatically narrowed down to two choices
## Country names are given by X.2 
## In both full and cleaned data frame there are 3 countries with "United"
## in the beginning of their name