## Quiz 2 Question 4

## For this one if you use htmlParse you get a data object of length 1 so
## there are no rows

## To get rows of HTML you need to use readlines
## From the "reading data from the web" video
## You can verify that readlines is the proper function to use
## by viewing the source of the webpage (right click, "View Page Source" on Chrome)

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

con = url("http://www.biostat.jhsph.edu/~jleek/contact.html")
htmlcode = readLines(con)
close(con)

## Check length
length(htmlcode)

## Get number of chars for specified rows
lapply(htmlcode[c(10,20,30,100)],nchar)