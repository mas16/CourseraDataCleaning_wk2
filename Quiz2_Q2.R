## Getting and Cleaning Data
## Johns Hopkins University and Coursera Data Science Specialization
## Quiz 2 Question Number #2
## by MAS 10/2018

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## You need to find the correct choice that matches the output of ques2_ref:

acs <- read.csv("getdata%2Fdata%2Fss06pid.csv")
ques2_ref <- subset(acs, AGEP<50, select=pwgtp1)