pollutantmean <- function(directory, pollutant, id = 1:332) {
        datafiles <- list.files(directory, full.names=TRUE)
        workingdat <- data.frame()
        for (i in id) {
                workingdat <- rbind(workingdat, read.csv(datafiles[i]))
        }
        PolluteOutput <- mean(workingdat[[pollutant]], na.rm = TRUE)
        round(PolluteOutput,digits = 3)
}