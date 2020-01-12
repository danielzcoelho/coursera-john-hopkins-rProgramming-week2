complete <- function(directory, id) {
  #Create a list of all files' fullnames within the directory
  fileList <- list.files(directory, full.names = TRUE)
  
  #Create an empty dataframe called dataNobs
  dataNobs <- data.frame(matrix(ncol = 2))
  
  #Assign column names for dataNobs
  names(dataNobs) <- c("id", "nobs")
  
  #Loop through all files (monitors) indicated in the vector "id"
  #Get the complete cases from each single file and generate a temporary dataframe
  #Combine the final dataframe with each temporary dataframe
  for (i in id) {
    dataFile <- read.csv(fileList[i])
    dataFile_Complete <- dataFile[complete.cases(dataFile),]
    
    temporaryData <- c(i, sum(complete.cases(dataFile_Complete)))
    dataNobs <- rbind(dataNobs, temporaryData)
  }
  
  #Generate final dataframe without the first row ignoring the first row with missing values as NA
  dataNobs[complete.cases(dataNobs),]
}