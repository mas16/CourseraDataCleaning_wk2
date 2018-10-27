#Getting and Cleaning Data
#Johns Hopkins University and Coursera Data Science Specialization
#Quiz 2 Question Number #1
#by MAS 10/2018

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

#libraries to scrape github
library(httr)
library(httpuv)

#library to use JSON
library(jsonlite)

###from the reference provided in the quiz
oauth_endpoints("github")

###use your key (client ID) and secret
myapp <- oauth_app("github",key='xxxxxxxxxxxx',
                   secret='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')

#Here I could not get the reference code to work and would get an
#authentication error even with the correct client ID and secret
#I looked around and found on the coursera forum that you could
#overcome the authentication error if you used OAUTH1.0_token
#NOT OUAUTH2.0_token. This worked for me.
github_token <- oauth1.0_token(oauth_endpoints("github"), myapp)

#Use API
gtoken <- config(token = github_token)
req <- with_config(gtoken, GET("https://api.github.com/users/jtleek/repos"))

#Check Authentication
stop_for_status(req)

## Convert to JSON
## This is taken from the JSON lecture video in week 1

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

json1 = content(req)
json2 = jsonlite::fromJSON(toJSON(json1))

## Get names for repo and date created
## Again, from the JSON lecture video
names(json2)

## when you run names(json2) you see that repos are listed under "name"
## and dates created are listed under "created_at"

## Get Repo Names
repo_names <- json2$name

## Get Dates Created
created <- json2$created_at

## Get Date "datasharing" repo was created
created[[which(repo_names=="datasharing")]]