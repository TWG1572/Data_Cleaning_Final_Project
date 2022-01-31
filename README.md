# Data_Cleaning_Final_Project
Data Cleaning Final Project
Final project for the data cleaning course with R at Coursera

## Content
- The **run_analysis.R** script that performs all the analysis
- This **README.md** with all the instructions to run and explanations
- The **CodeBook.md** with description of all the variables in the final tidy data set


## Objective
Prepare a tidy data set from the Samsung Smartphone data that can be used for later analysis.

## Tasks required
Create one R script called run_analysis.R that does the following.

  1. Download the dataset if it does not already exist in the working directory
  2. Load the activity and feature info
  3. Loads both the training and test datasets, keeping only those columns which
     reflect a mean or standard deviation
  4. Loads the activity and subject data for each dataset, and merges those
     columns with the dataset
  5. Merges the two datasets
  6. Converts the `activity` and `subject` columns into factors
  7. Creates a tidy dataset that consists of the average (mean) value of each
     variable for each subject and activity pair.

##Additional comments
Packages:
data.table
dplyr
