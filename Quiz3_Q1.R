## Getting and Cleaning Data
## Week 3 Quiz 3 Question 1

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## "ACR" - Lot Size - "3" = House on ten or more acres
## "AGS" - Sales of Agriculture Products - "6" = $10000+

## 1. Create logical vector 

agricultureLogical <- (agdf$ACR==3 & agdf$AGS==6)

## 2. Apply which function to identify rows of df where logical is true

which(agricultureLogical)

## Could also do in one line:
## answer <- which(agdf$ACR==3 & agdf$AGS==6)