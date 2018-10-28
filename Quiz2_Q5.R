## Getting and Cleaning Data
## Johns Hopkins University and Coursera Data Science Specialization
## Quiz 2 Question Number #5
## by MAS 10/2018

## IMPORTANT NOTE: This script was pushed to github for my own personal 
## record keeping. I have and will not intentionally share this with anyone
## who is enrolled in the "Getting and Cleaning Data" class. If anyone comes
## across this script independently, they should only use it in accordance with 
## the Coursera Honor Code 
## (https://learner.coursera.help/hc/en-us/articles/209818863-Coursera-Honor-Code)
## - MAS

## Add the negative sign that gets lost when you split by "-"
add_neg <- function(listobj){
        for(x in sequence(length(listobj))){
                if(is.na(listobj[[x]][2])==FALSE){
                        listobj[[x]][2]<-paste('-',listobj[[x]][2],sep="")
                }
        }
        listobj
}


## Make a matrix of the cleaned data by going row by row
## and combining the data. this is necessary because the data
## were not in the correct columns to begin with
build_matrix <- function(sizeref, listobject){
        
        testmatrix <- matrix(nrow=nrow(sizeref),ncol=ncol(sizeref))
        for(x in sequence(nrow(sizeref))){
                v <- numeric(0)
                for(y in sequence(length(listobject))){
                        v <- c(v,as.numeric(unlist(listobject[[y]][x])))
                }
                
                testmatrix[x,] <- v
        }
        
        testmatrix
}

## Run everything
split_stuff <- function(datafile){
        ## Read data
        dataobj <- read.table(datafile, fill=TRUE, stringsAsFactors=FALSE)
        ## Remove header
        dataobj2 <- dataobj[3:nrow(dataobj),1:ncol(dataobj)]
        ## Get column names
        names <- colnames(dataobj2)
        ## Initialize empty list
        listhold <- list()
        ## Loop over names to separate columns and split them if there are 
        ## multiple values: this happens when a value is negative
        for(x in sequence(length(names))){
                colvals <- strsplit(as.character(dataobj2[,x]), split='-')
                listhold[[x]] <- colvals
                
        }
        
        ## Put the negative sign back
        neglist <- list()
        for(x in sequence(length(listhold))){
                neglist[[x]] <- add_neg(listhold[[x]])
        }
        
        ## Clean data into an organized matrix
        cleaned_matrix <- build_matrix(dataobj2,neglist)
        cleaned_matrix
}
