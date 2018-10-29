## Getting and Cleaning Data
## Week 3 Quiz 3 Questions 3,4,5

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

fgdp <- read.csv("getdata%2Fdata%2FGDP.csv", stringsAsFactors = FALSE)
country <- read.csv("getdata%2Fdata%2FEDSTATS_Country.csv", stringsAsFactors = FALSE)

## if you check 
## names(fgdp) and names(country) 
## only country has a column name called "CountryCode"

## head(fgdp) and head(country)
## shows that the country code in fgdp is the column name called "X"
## dim shows 330 x 10 DF ... but according to ques there are 190 "ranked" countries
## The data have to be cleaned first
## How do you know if they are ranked or not?
##Rankings are hidden in "Gross.domestic.product.2012" column

## Clean fgdp
fgdprankings <- fgdp$Gross.domestic.product.2012
fgdpclean <- fgdp[which(!is.na(fgdprankings)),]

## Note that the dim of fgdpclean is now 190 x 10

## Merge
merged <- merge(fgdpclean, country, by.x='X', by.y="CountryCode")

## See number of matches
## dim(merged) 

## Convert rankings to numeric so they can be sorted
## Store in new column called "NumRank"
mutated_merged <- mutate(merged, NumRank=as.numeric(Gross.domestic.product.2012))

## Sort by NumRank
ordered_merged <- arrange(mututated_merged, desc(NumRank))

## print #13 to console
ordered_merged[13,1:4]

## Question 4
## Need to perform mean calculation
## Probably easiest to do this as vector operation

## Get vectors for NumRank and Income.Group
all_ranks <- ordered_merged$NumRank
income_group <- ordered_merged$Income.Group

## Get indices corresponding to oecd and nonoced
oecd <- which(income_group=='High income: OECD')
nonoecd <- which(income_group=='High income: nonOECD')

## Calculate means for oecd and nonoecd rankings
mean(all_ranks[oecd])
mean(all_ranks[nonoecd])

## Question 5

## Group By Quantiles using ntile
## Not sure what the point of Quantiling the data is here c
## Could answer this based soley on NumRank

## Get quantiles and store as new col called "Quantile"
test_quantile <- mutate(ordered_merged, Quantile = ntile(NumRank,5))

## Make a new table with country name (X), Income.Group, NumRank, and Quantile
new_table <- select(test_quantile, X, Income.Group, NumRank, Quantile)

## Sort by NumRank (highest at top now)
new_table_sorted <- arrange(new_table, NumRank)

## Filter by countries in top 38 and with Income.Group "Lower middle income"
filter(new_table_sorted, NumRank <=38 & Income.Group=="Lower middle income")