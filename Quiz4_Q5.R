## Getting and Cleaning Data
## Quiz 4 Ques 5

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

library(quantmod)
library(lubridate)

amzn = getSymbols("AMZN", auto.assign = FALSE)
sampleTimes = index(amzn)

## Get number of samples collected in 2012
sample2012 <- sampleTimes[year(sampleTimes)==2012]
length(sample2012)

## Get number of Mondays
sum(wday(sample2012, label=TRUE)=="Mon")

## Answer:
## 250, 47