# Extract the data from the zip file
unzip("getdata_projectfiles_UCI HAR Dataset.zip")

# Load the feature names
featuresFile = "./UCI HAR Dataset/features.txt"
features <- read.table(featuresFile, header=FALSE, col.names=c("id","featureName"), colClasses=c("numeric","character"))

# Load the activity labels
activityLabelFile = "./UCI HAR Dataset/activity_labels.txt"
activityLabels <- read.table(activityLabelFile, header=FALSE, col.names=c("id","ActivityLabel"), colClasses=c("numeric","character"))

# Load required libraries
library(dplyr)

# A function that will read the data from the files and then 
# return the column merged data. THe argument dataSetType is used to build the paths to the files
# and avoids the need to hard code file names or pass in a vector of file names.
readDataSet <- function(dataSetType){
  
  subjectFile <- paste("./UCI HAR Dataset/", dataSetType, "/subject_", dataSetType, ".txt", sep="")
  yFile <- paste( "./UCI HAR Dataset/", dataSetType, "/y_", dataSetType, ".txt", sep="")
  xFile <- paste("./UCI HAR Dataset/", dataSetType, "/x_", dataSetType, ".txt", sep="")
  
  # Load the data. This is text data. Using read.table is fine.
  subjectData <- read.table(subjectFile,header=FALSE,col.names=c("Subject"))
  activityData <- read.table(yFile, header=FALSE, col.names=c("Activity"), colClasses=c("numeric"))
  measuredData <- read.table(xFile,header=FALSE, col.names=features$featureName ,colClasses=c(rep("numeric",nrow(features))))

  # Get measurements that have mean or std in the name
  requiredFeatures <- (grepl("mean\\(\\)",features$featureName) & grepl("^[^f]",features$featureName)) | (grepl("std\\(\\)",features$featureName) & grepl("^[^f]",features$featureName))
  
  # Get the required columns from the data
  # First we get the column indexes of the required columns
  interestedCols <- features[requiredFeatures,]$id
  
  # We then use the indexes to select the columns that we are interested in
  measuredData <- measuredData[, interestedCols]
  
  # Bind subject, activity and data
  cbind(subjectData, activityData, measuredData)
  
}

# Tsis function prepares the data and performs steps outlined in the read me file
prepareData <- function(){
  
  # Load the prepared data and row bind the data so we are combining the test and training data
  # First the test and training set are read and rbind uses the two returned data frames to row bind 
  # the data into a single data set
  data <- rbind(readDataSet("test"), readDataSet("train"))
  
  # Join activity labels with the data
  data <- merge(data, activityLabels, by.x = 'Activity', by.y = 'id')
  
  # Drop the numeric label column, we do not want to use this any more
  data <- data[, !(names(data) %in% c('Activity'))]
  
  # Return the prepared data
  data
  
}

# THis function takes the prepared data and performs the grouping of the data
groupData <- function(data){
    
  # Wrap the data frame with a table
  data <- tbl_df(data)
  
  #Create a group-by table
  by_subject_activity <- group_by(data, Subject, ActivityLabel)
  
  # Group the data. Summarise each will apply the mean function 
  # to each non-group by column in the table
  data <- by_subject_activity %>% summarise_each(funs(mean))
  
  # Create descriptive column names
  headers <- gsub("\\.+", ".", names(data))
  headers <- gsub("\\.$", "", headers)
  headers <- sapply(headers, appendStrings, "Mean.of.")
  headers[1] <- 'Subject'
  headers[2] <- 'Activity'
  names(data) <- headers
  data
  
}

# The main function that puts everything together
runAnalysis <- function(){
  
  # Prepare the initial data
  data <- prepareData()

  # Run the grouping on the data and add descriptive column headings
  data <- groupData(data)
  
  # write the data as a ".txt" file, space delimited
  write.table(as.data.frame(data), "mytidydata.txt", row.names=FALSE, sep=" ")

}

# function to append a prefix and a string
appendStrings <- function(x, prefix) {
  paste(prefix, x , sep="")
}