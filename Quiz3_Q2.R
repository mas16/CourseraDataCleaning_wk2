## Getting and Cleaning Data
## Week 3 Quiz 3 Question 2

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## This question can be answered by watching the "Summarizing Data" video at 3:48

## Import jpeg library
library(jpeg)

## read jpeg, use nativeRaster (native=TRUE)
jt <- readJPEG("getdata%2Fjeff.jpg", native=TRUE)

## return 30th and 80th quantiles

quantile(jt, probs=c(0.3,0.8))