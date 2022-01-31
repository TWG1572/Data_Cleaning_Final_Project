# Data_Cleaning_Final_Project
Data Cleaning Final Project
Final project for the data cleaning course with R at Coursera

## Objective
Prepare a tidy data set from the Samsung Smartphone data that can be used for later analysis.

## Tasks required
Create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Files
README.md
This file, where the project is explained and files used
CodeBook.md
The CodeBook describes the variables, the data files and the logic used in the script
run_analysis.R
The R script used to generate the final data set
tidy_data.txt
The final result of the project

##Additional comments
R version 4.0.0 (2020-04-24) -- "Arbor Day"
Platform: x86_64-w64-mingw32/x64 (64-bit)
Packages:
data.table
plyr (because of the function mapvalues)
dplyr
