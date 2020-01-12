corr <- function(directory, threshold = NULL) {
  #Defining default value for threshold
  if (is.null(threshold)) {
    threshold <- 0
  }
  
  #Create a list of all files' fullnames within the directory
  fileList <- list.files(directory, full.names = TRUE)
  
  #Create an empty dataframe called correlationFile
  correlationFile <- data.frame()
  
  #Loop through all files (monitors) and get the complete case from each single file
  #Calculate the correlation between nitrate and sulfate if it meets the required threshold
  #Generate the vector of correlations (correlationFile)
  for (i in 1:length(fileList)) {
    dataFile <- read.csv(fileList[i])
    dataFile <- dataFile[complete.cases(dataFile),]
    
    if (sum(complete.cases(dataFile)) > threshold) {
      correlation <- cor(dataFile$sulfate, dataFile$nitrate)
      correlationFile <- rbind(correlationFile, correlation)
    }
  }

  #Generate final vector of correlations
  correlationFile <- correlationFile[complete.cases(correlationFile),]
  correlationFile
}