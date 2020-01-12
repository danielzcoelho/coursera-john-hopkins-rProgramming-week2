pollutantmean <- function(directory, pollutant, id = NULL) {
  #Create a list of all files fullnames within the directory
  fileList <- list.files(directory, full.names = TRUE)
  
  #Defining default value for id
  if (is.null(id)) {
    id <- 1:length(fileList)
  }
  
  #Create an empty dataframe called dataFile
  dataFile <- data.frame()
  
  #Combine all files indicated to be used in the vector "id"
  for (i in id) {
    dataFile <- rbind(dataFile, read.csv(fileList[i]))
  }
  
  #Calculate the mean value of the specified list of monitors, ignoring all missing values as NA
  if (pollutant == "nitrate") {
    mean(dataFile$nitrate, na.rm = TRUE)
  } else {
    mean(dataFile$sulfate, na.rm = TRUE)
  }
}