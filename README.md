Getting and Cleaning Data: Course Project
=====================

## What is this project about?
The purpose of this project is to take the "Human Activity Recognition Using Smartphones Data Set" from UCI, clean it up, and summarize the data.

## The files:

* 'README.MD'
* 'run_Analysis.R': this script runs the analyis of the HAR dataset
* 'tidyData.txt': this is the output of 'run_Analysis.R'
* 'CodeBook.md': provides descriptions of the variables in the dataset

## What does the 'run_Analysis.R' script do?
This R script:

1. downloads a [zipped archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the dataset
2. extracts and combines test and training data, keeping only measurements of mean and standard deviation for each variable
3. extracts activity data (specifiying whether the subject was walking, sitting, etc.), which is stored in files seperate from the measured data, and associates this appropriately with the data
4. extracts subject data (specifying the subject a given measurement comes from), which is also stored in a seperate file, and associates this appropriately with the data
5. variable names are edited to enhance readability.
6. the summarise_each() function from the {dplyr} package is utilized to conveniently calculate the mean of every variable for each activity and for each subject.
7. the script then writes the resulting data frame to a text file, tidyData.txt.