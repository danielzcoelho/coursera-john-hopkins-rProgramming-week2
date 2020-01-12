# coursera-john-hopkins-rProgramming-week2
**R Programming by Johns Hopkins University - Week 2 - Assignment 1**

Part 1

A function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID number, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA.

Part 2

A function named 'complete' that reads a directory full of files and reports the number of completely observed cases in each data file. The function takes two arguments: 'directory' and 'id'. Given a vector monitor ID number, 'complete' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns a data frame where the first column is the name of the file and the second column is the number of complete cases.

Part 3

A function named 'corr' that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. It returns a vector of correlations for the monitors that meet the threshold requirement.
