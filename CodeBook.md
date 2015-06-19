---
title: "Codebook for Course Project"
author: "Joanne Lee"
date: "June 18, 2015"
output:
  
---
 
## Project Description
Demonstrate my ability to collect, work with, and clean a data set. 
Goal is to prepare tidy data that can be used for later analysis.

##Collection and notes on the raw data
Raw data was collected from the accelerometers from the Samsung Galaxy S smartphone.
For more info go to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Raw data source was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
##Guide to create the tidy data files
1. Read the instructions and grading scheme on how to accomplish maximum points for the course project
2. Download raw data from link above (zip file) to local computer
3. Compose a script called run_analysis.R that:
- Read the raw files into RStudio
- Merge the training and the test X_test,y_test and subject_test files
- Label the data set with descriptive variable names appropriately. Create one dataset call "alldata" for further analysis.
- Extract only the measurements on the mean and standard deviation for each measurement from "alldata" dataset by using dplyr's select that contains "mean" and "std" 
- Use descriptive activity names to name the activities in the data set. The keys and names are matched by using dplyr's match
- From the data set in previous step, creates a second, independent tidy data set call "summary" with the average of each variable for each activity and each subject.
 
##Description of the variables in the summary.txt file
General description of the file including:
- Dimensions of the dataset : 180 observations of 88 variables [180x88]
 
- Summary of the data : Data contains the average of each variable for each activity and each subject. There are 6     activities, 30 subjects and 86 measurement types spanning from:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
  - Triaxial Angular velocity from the gyroscope. 
  - Time and frequency domain variables, including associate angles. 
 
- Activity, subject ID and 86 mean- and standard deviation- related variables present in the dataset : (-XYZ' is used to denote 3-axial signals in the X, Y and Z directions)
 -  Activity: 6 level
 -  subjID: integer
 -  tBodyAcc-XYZ: 3x numeric
 -  tGravityAcc-XYZ: 3x numeric
 -  tBodyAccJerk-XYZ: 3x numeric
 -  tBodyGyro-XYZ: 3x numeric
 -  tBodyGyroJerk-XYZ: 3x numeric
 -  tBodyAccMag: numeric
 -  tGravityAccMag: numeric
 -  tBodyAccJerkMag: numeric
 -  tBodyGyroMag: numeric
 -  tBodyGyroJerkMag: numeric
 -  fBodyAcc-XYZ: 3x numeric
 -  fBodyAccJerk-XYZ: 3x numeric
 -  fBodyGyro-XYZ: 3x numeric
 -  fBodyAccMag: numeric
 -  fBodyAccJerkMag: numeric
 -  fBodyGyroMag: numeric
 -  fBodyGyroJerkMag: numeric
 -  associated angles: 7x numeric
 
For more information on the variables such as unit of measurements, collection, etc. visit  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
