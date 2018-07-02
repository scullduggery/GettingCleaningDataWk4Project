###############################################################
## Script to download file on data collected on the accelerometers from the Samsung Galaxy S smartphones.
## Clean and tidy the data and then summarise the data in a tidy data set output.
###############################################################

## Check if "reshape2" package already installed, if not then install it

ReshapePackage <- c("reshape2")

NewPackage <- ReshapePackage[!(ReshapePackage %in% installed.packages()[,"Package"])]

if(length(NewPackage)>0) {
  install.packages("reshape2") 
}
## Load library reshape

library(reshape2)

## Download and unzip the dataset:
filename <- "GettingDataCourseProjectData.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists(filename)){
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

#################################################################
## Loading Data into R
#################################################################

## Load in Training Data
TrainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
TrainActivity <- read.table("UCI HAR Dataset/train/Y_train.txt")
TrainValues <- read.table("UCI HAR Dataset/train/X_train.txt")

## Load in Test Data

TestSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
TestActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
TestValues <- read.table("UCI HAR Dataset/test/X_test.txt")

## Load in Features, Don't allow conversion to factors

Features <- read.table("UCI HAR Dataset/features.txt", as.is = TRUE)

## Load in Activities

Activities <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(Activities) <- c("ActivityId", "ActivityLabel")

#################################################################
## Part 1 - Merge the Training and Test data together
#################################################################

# concatenate individual data tables to make single data table
AllData <- rbind(
  cbind(TrainSubject, TrainValues, TrainActivity),
  cbind(TestSubject, TestValues, TestActivity)
)

# To save memory remove individual data tables 
rm(TrainSubject, TrainValues, TrainActivity, 
   TestSubject, TestValues, TestActivity)

# assign column names
colnames(AllData) <- c("Subject", Features[, 2], "Activity")



#################################################################
## Part 2 - Extract only the measurements on the mean and 
## standard deviation for each measurement.
#################################################################

## Identify Columns Wanted and remove all others

ColumnsToKeep <- grepl("Subject|Activity|mean|std", colnames(AllData))
AllData <- AllData[, ColumnsToKeep]


###############################################################
## Part 3 - Use descriptive activity names to name the activities in the data set
###############################################################

## Replace activity values with Factor labels from activity_labels.txt

AllData$Activity <- factor(AllData$Activity , 
                                 levels = Activities[, 1], labels = Activities[, 2])

###############################################################
## Part 4 - Appropriately labels the data set with descriptive variable names.
###############################################################

## Identify Column Names

AllDataCols <- colnames(AllData)

# remove brackets
AllDataCols <- gsub("[\\(\\)]", "", AllDataCols)

## Change where BodyBody occurs in field names to just Body

AllDataCols <- gsub("BodyBody", "Body", AllDataCols)

## Change abbreviations and add Capitals for easier reading


AllDataCols <- gsub("^t", "TimeDomain", AllDataCols)
AllDataCols <- gsub("Acc", "Accelerometer", AllDataCols)
AllDataCols <- gsub("Gyro", "Gyroscope", AllDataCols)
AllDataCols <- gsub("Mag", "Magnitude", AllDataCols)
AllDataCols <- gsub("Freq", "Frequency", AllDataCols)
AllDataCols <- gsub("^f", "FrequencyDomain", AllDataCols)
AllDataCols <- gsub("mean", "Mean", AllDataCols)
AllDataCols <- gsub("std", "StandardDeviation", AllDataCols)

## Change Column names within Data Set to those cleaned

colnames(AllData) <- AllDataCols

###############################################################
## Part 5 - Create a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
###############################################################

## Firstly Change "Subject" into factor variable

AllData$Subject <- as.factor(AllData$Subject)

## "Melt" the dataset so that it can be used within a dcast function
AllData.melted <- melt(AllData, id = c("Subject", "Activity"))

## Apply dcast function with formula to calculate mean
AllData.mean <- dcast(AllData.melted, Subject + Activity ~ variable, mean)

## Create text file from AllData.mean within working directory

write.table(AllData.mean, "TidyData.txt", row.names = FALSE, quote = FALSE)

