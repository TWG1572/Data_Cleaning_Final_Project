# Objective
The final objective of the script run_analysis.R is to tidy the data. In order to do that, the script will execute 5 tasks.

## Source Data
All the data used in the program comes from the zip file [Project Source Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Output
The program will generate a text file named project.txt. It will contain the result of the last task.

## Script 
### Preparation
1. Create the working directory
1. Donwload the zip file
1. Unzip the file
1. Create data tables for all the files:
   1. subtrain
      * Source: \train\subject_train.txt"
      * Description: Recorded train data of subjects being observed
      * Rows: 7352
      * Columns:1
   1. xtrain
      * Source: \train\X_train.txt"
      * Description: Recorded features train data
      * Rows: 7352
      * Columns:561
   1. ytrain 
      * Source: \train\X_train.txt"
      * Description: Recorded Activities(Code) train data
      * Rows: 7352
      * Columns:1
   1. subtest
      * Source: \test\subject_test.txt"
      * Description: Recorded test data of subjects being observed
      * Rows: 2947
      * Columns:1
   1. xtest 
      * Source: \train\X_test.txt"
      * Description: Recorded features test data
      * Rows: 2947
      * Columns:561
   1. ytest 
      * Source: \train\X_test.txt"
      * Description: Recorded Activities(Code) test data
      * Rows: 2947
      * Columns:1
   1. features 
      * Source: \features.txt"
      * Description: The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
      * Rows: 561
      * Columns:2
   1. activity
      * Source: \activity_labels.txt"
      * Description: List of activities performed (Code and Label)
      * Rows: 6
      * Columns:2

### Step 1
Merges the training and the test sets to create one data set.
   1. Combine the columns from all **train** data table (x, y and subject) using the cbind function
   2. Combine the columns from all **test** data table (x, y and subject) using the cbind function
   3. Merge the train and test data tables in a resulting data table called FullSet

### Step 2
Creates a data set with only the subject, activity code, and mean/std data
   1. Change the column names to: subject, features data table column names
   2. Extract only the measurements on the mean and standard deviation for each row
   3. Creates a dataset with only the subject, activity code, and mean/std data

### Step 3
Creates dataset with activity descriptions added
   1.  Merges dataset with descriptive activity names to name the activities in the data set
   2.  Removes the activity code

### Step 4
Change the column names according to the following rules:
   1.  *Acc* to *Accelerometer*
   2.  *Gyro* to *Gyroscope*
   3.  *BodyBody* to *Body*
   4.  *Mag* to *Magnitude*
   5.  *all t in the begging of the name* to *Time-*
   6.  *all f in the begging of the name* to *Frequency-*
   7.  *tBody* to *TimeBody*
   8.  *mean* to *Mean-*
   9.  *std()* to *STD*
   10.  *Freq* to *Frequency-*
   11.  *angle* to *Angle*
   12.   *Gravity* to *Gravity-*

### Step 5
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   1. Group the data table by subject and activity and then calculate the average
   2. Save the result in the file tidy_data.txt



