## Getting and Cleaning Data
## Course Project

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url=url,destfile="projectData.zip")
unzip("projectData.zip")

###############################################################################
## 1. Merge the training and the test sets to create one data set.

testDF <- read.table("UCI HAR Dataset/test/X_test.txt")

trainDF <- read.table("UCI HAR Dataset/train/X_train.txt")

data <- rbind(testDF,trainDF)

###############################################################################
## 2. Extract only the measurements on the mean and standard deviation for each measurement

## Grab the feature names and make them descriptive.
features <- scan("UCI HAR Dataset/features.txt", what="")
features <- features[seq(2,length(features), by=2)]
## remove parentheses and replace dashes, "-", with "."
features <- gsub("\\(\\)","",features)
features <- gsub("-",".",features)
names(data) <- features

## label the columns of the data set
names(data) <- features

## keep only those columns which have "mean" or "std" in their name
correctFeatures <- grepl("mean",features) | grepl("std",features)
data <- data[ ,features[correctFeatures]]

###############################################################################
## 3. Use descriptive activity names to name the activities in the data set

## read in the activity data, and store in a factor
activityTest <- scan("UCI HAR Dataset/test/y_test.txt")
activityTrain <- scan("UCI HAR Dataset/train/y_train.txt")
activity <- as.factor(c(activityTest,activityTrain))
levels(activity) <- c("walking", "walking upstairs","walking downstairs",
                      "sitting","standing","laying")
data <- cbind(activity,data)

###############################################################################
## 4. Appropriately label the data set with descriptive variable names.

## already done, see section 2

###############################################################################
## 5. from the data set, create a second, independent tidy data set with
## the avarage of each variable for every activity and each subject

## Add the subject data
subjectTest <- scan("UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- scan("UCI HAR Dataset/train/subject_train.txt")
subject <- as.factor(c(subjectTest,subjectTrain))
data <- cbind(subject,data)

## we will use the dplyr package to make calculating each mean simple
library(dplyr)
dataTable <- group_by(tbl_df(data),subject,activity)
tidyData <- as.data.frame(summarise_each(dataTable,funs(mean)))

###############################################################################
## 6. Write the tidy data set to a file

write.table(tidyData, "tidy_data.txt", row.names=FALSE)