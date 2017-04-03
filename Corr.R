corr <- function(directory, threshold = 0) {
        datafiles <- list.files(directory, full.names=TRUE)
        workingdat <- data.frame()
        numfiles <- 1:332
        validcorrs <- vector()
        for(i in numfiles) {
                workingdat <- read.csv(datafiles[i])
                workingdat <- na.omit(workingdat)
                nobs <- nrow(workingdat)
                tempcor <- cor(workingdat$sulfate,workingdat$nitrate)
                if(nobs > threshold) {
                        validcorrs <- append(validcorrs,tempcor)
                }
        }
        invisible(validcorrs)
}