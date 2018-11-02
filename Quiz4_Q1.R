## Getting and Cleaning Data
## Quiz 4 Ques 1

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## To complete this question see Week 4 Video
## "Editing Text Variables" ~2:12 

## Download .csv and open in excel...
## data looks cleaned already

## read .csv
id_df <- read.csv("getdata%2Fdata%2Fss06hid.csv")

## see what the names are
## names(id_df)

## from looking at the names there are 80 "wgtp" variables
## formatted as wgtp1, wgtp2, ... , wgtp80

## the strsplit function takes a character vector as input
## store names as a character vect
char_vec <- names(id_df)

## check data type to ensure it is character
## typeof(char_vec)

## execute strsplit
split_vec <- strsplit(char_vec, split="wgtp")

## return element 123
split_vec[[123]]

## Answer:
## ""   "15"
