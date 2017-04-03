complete <- function(directory, id = 1:332) {
        datafiles <- list.files(directory, full.names=TRUE)
                workingdat <- data.frame()
        for(i in id) {
                workingdat <- read.csv(datafiles[i])
                workingdat <- na.omit(workingdat)
                nobs <- nrow(workingdat)
                if(i==id[1]) {
                        finalresults <- matrix(cbind(i,nobs),ncol=2)
                        colnames(finalresults) <- c("id","nobs")
                }
                else finalresults <- rbind(finalresults, cbind(i,nobs))
        }
        print(finalresults)    
}