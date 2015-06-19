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
The raw data came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ from the Samsung Galaxy S smartphone. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For more info go to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Raw data source was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
##Guide to create the tidy data files
1. Read the instructions and grading scheme on how to accomplish maximum points for the course project
2. Download raw data from link above (zip file) to local computer. Set your working directory to the "./UCI HAR Dataset" path. To double check, type the command list.files(path). You will find the train and test folders as well as activity_labels, features, features_info and README text files
3. Compose a script called run_analysis.R that...
- Read the raw files into RStudio
- Merge the training and the test X_test,y_test and subject_test files
- Label the data set with descriptive variable names appropriately (variable names obtained from source found in features text file). Create one dataset call "alldata" for further analysis.
- Extract only the measurements on the mean and standard deviation for each measurement from "alldata" dataset by using dplyr's select that contains "mean" and "std" 
- Use descriptive activity names to name the activities in the data set (names were obtained from source found in activity_labels text file). The keys and names are matched by using dplyr's match
- From the data set in previous step, creates a second, independent tidy data set call "summary" with the average of each variable for each activity and each subject using dplyr's chain method and group_by and summarise_each functions.
 
##Description of the variables in the Summary.txt file
The Summary.txt file is the output file from running the run_analysis.R file. It is a tidy dataset that contains merged train and test raw datasets.

General description of the Summary.txt file including:
- Dimensions of the dataset : 180 observations of 88 variables [180x88]
 
- Summary of the data : Data contains the average of each variable for each activity and each subject. There are 6     activities, 30 subjects and 86 measurement types spanning from:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
  - Triaxial Angular velocity from the gyroscope. 
  - Time and frequency domain variables, including associate angles. 
 
- List of variables present in the dataset : 

  (Please note the following format applies below:) Variable #	Variable Name	Class	Unit of Measurement	Description

  1	Activity	Factor	NA	Activity that subject performed

  2	subjID	Integer	NA	Identifier of the subject who carried out the experiment

  3	tBodyAcc.mean...X	Numeric	second	Time average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  4	tBodyAcc.mean...Y	Numeric	second	Time average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration
  
  5	tBodyAcc.mean...Z	Numeric	second	Time average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  6	tGravityAcc.mean...X	Numeric	second	Time average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  7	tGravityAcc.mean...Y	Numeric	second	Time average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  8	tGravityAcc.mean...Z	Numeric	second	Time average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  9	tBodyAccJerk.mean...X	Numeric	second	Time average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  10	tBodyAccJerk.mean...Y	Numeric	second	Time average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  11	tBodyAccJerk.mean...Z	Numeric	second	Time average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  12	tBodyGyro.mean...X	Numeric	second	Time average of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  13	tBodyGyro.mean...Y	Numeric	second	Time average of Y-direction measurement related to triaxial angular velocity from the gyroscope. 

  14	tBodyGyro.mean...Z	Numeric	second	Time average of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  15	tBodyGyroJerk.mean...X	Numeric	second	Time average of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  16	tBodyGyroJerk.mean...Y	Numeric	second	Time average of Y-direction measurement related to triaxial angular velocity from the gyroscope. 

  17	tBodyGyroJerk.mean...Z	Numeric	second	Time average of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  18	tBodyAccMag.mean..	Numeric	second	Time average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  19	tGravityAccMag.mean..	Numeric	second	Time average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  20	tBodyAccJerkMag.mean..	Numeric	second	Time average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  21	tBodyGyroMag.mean..	Numeric	second	Time average of measurement related to triaxial angular velocity from the gyroscope. 

  22	tBodyGyroJerkMag.mean..	Numeric	second	Time average of measurement related to triaxial angular velocity from the gyroscope. 

  23	fBodyAcc.mean...X	Numeric	Hz	Frequency average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  24	fBodyAcc.mean...Y	Numeric	Hz	Frequency average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  25	fBodyAcc.mean...Z	Numeric	Hz	Frequency average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  26	fBodyAcc.meanFreq...X	Numeric	Hz	Frequency average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  27	fBodyAcc.meanFreq...Y	Numeric	Hz	Frequency average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  28	fBodyAcc.meanFreq...Z	Numeric	Hz	Frequency average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  29	fBodyAccJerk.mean...X	Numeric	Hz	Frequency average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  30	fBodyAccJerk.mean...Y	Numeric	Hz	Frequency average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  31	fBodyAccJerk.mean...Z	Numeric	Hz	Frequency average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  32	fBodyAccJerk.meanFreq...X	Numeric	Hz	Frequency average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  33	fBodyAccJerk.meanFreq...Y	Numeric	Hz	Frequency average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  34	fBodyAccJerk.meanFreq...Z	Numeric	Hz	Frequency average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  35	fBodyGyro.mean...X	Numeric	Hz	Frequency average of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  36	fBodyGyro.mean...Y	Numeric	Hz	Frequency average of Y-direction measurement related to triaxial angular velocity from the gyroscope. 

  37	fBodyGyro.mean...Z	Numeric	Hz	Frequency average of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  38	fBodyGyro.meanFreq...X	Numeric	Hz	Frequency average of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  39	fBodyGyro.meanFreq...Y	Numeric	Hz	Frequency average of Y-direction measurement related to triaxial angular velocity from the gyroscope. 

  40	fBodyGyro.meanFreq...Z	Numeric	Hz	Frequency average of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  41	fBodyAccMag.mean..	Numeric	Hz	Frequency average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  42	fBodyAccMag.meanFreq..	Numeric	Hz	Frequency average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  43	fBodyBodyAccJerkMag.mean..	Numeric	Hz	Frequency average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  44	fBodyBodyAccJerkMag.meanFreq..	Numeric	Hz	Frequency average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  45	fBodyBodyGyroMag.mean..	Numeric	Hz	Frequency average of measurement related to triaxial angular velocity from the gyroscope. 

  46	fBodyBodyGyroMag.meanFreq..	Numeric	Hz	Frequency average of measurement related to triaxial angular velocity from the gyroscope. 

  47	fBodyBodyGyroJerkMag.mean..	Numeric	Hz	Frequency average of measurement related to triaxial angular velocity from the gyroscope. 

  48	fBodyBodyGyroJerkMag.meanFreq..	Numeric	Hz	Frequency average of measurement related to triaxial angular velocity from the gyroscope. 

  49	angle.tBodyAccMean.gravity.	Numeric	radian	Angle average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  50	angle.tBodyAccJerkMean..gravityMean.	Numeric	radian	Angle average of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  51	angle.tBodyGyroMean.gravityMean.	Numeric	radian	Angle average of measurement related to triaxial angular velocity from the gyroscope. 

  52	angle.tBodyGyroJerkMean.gravityMean.	Numeric	radian	Angle average of measurement related to triaxial angular velocity from the gyroscope. 

  53	angle.X.gravityMean.	Numeric	radian	Angle average of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  54	angle.Y.gravityMean.	Numeric	radian	Angle average of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  55	angle.Z.gravityMean.	Numeric	radian	Angle average of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  56	tBodyAcc.std...X	Numeric	second	Time standard deviation of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  57	tBodyAcc.std...Y	Numeric	second	Time standard deviation of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  58	tBodyAcc.std...Z	Numeric	second	Time standard deviation of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  59	tGravityAcc.std...X	Numeric	second	Time standard deviation of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  60	tGravityAcc.std...Y	Numeric	second	Time standard deviation of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  61	tGravityAcc.std...Z	Numeric	second	Time standard deviation of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  62	tBodyAccJerk.std...X	Numeric	second	Time standard deviation of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  63	tBodyAccJerk.std...Y	Numeric	second	Time standard deviation of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  64	tBodyAccJerk.std...Z	Numeric	second	Time standard deviation of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  65	tBodyGyro.std...X	Numeric	second	Time standard deviation of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  66	tBodyGyro.std...Y	Numeric	second	Time standard deviation of Y-direction measurement related to triaxial angular velocity from the gyroscope. 

  67	tBodyGyro.std...Z	Numeric	second	Time standard deviation of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  68	tBodyGyroJerk.std...X	Numeric	second	Time standard deviation of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  69	tBodyGyroJerk.std...Y	Numeric	second	Time standard deviation of Y-direction measurement related to triaxial angular velocity from the gyroscope. 
  
  70	tBodyGyroJerk.std...Z	Numeric	second	Time standard deviation of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  71	tBodyAccMag.std..	Numeric	second	Time standard deviation of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  72	tGravityAccMag.std..	Numeric	second	Time standard deviation of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  73	tBodyAccJerkMag.std..	Numeric	second	Time standard deviation of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  74	tBodyGyroMag.std..	Numeric	second	Time standard deviation of measurement related to triaxial angular velocity from the gyroscope. 

  75	tBodyGyroJerkMag.std..	Numeric	second	Time standard deviation of measurement related to triaxial angular velocity from the gyroscope. 

  76	fBodyAcc.std...X	Numeric	Hz	Frequency standard deviation of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  77	fBodyAcc.std...Y	Numeric	Hz	Frequency standard deviation of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  78	fBodyAcc.std...Z	Numeric	Hz	Frequency standard deviation of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  79	fBodyAccJerk.std...X	Numeric	Hz	Frequency standard deviation of X-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  80	fBodyAccJerk.std...Y	Numeric	Hz	Frequency standard deviation of Y-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  81	fBodyAccJerk.std...Z	Numeric	Hz	Frequency standard deviation of Z-direction measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  82	fBodyGyro.std...X	Numeric	Hz	Frequency standard deviation of X-direction measurement related to triaxial angular velocity from the gyroscope. 

  83	fBodyGyro.std...Y	Numeric	Hz	Frequency standard deviation of Y-direction measurement related to triaxial angular velocity from the gyroscope. 

  84	fBodyGyro.std...Z	Numeric	Hz	Frequency standard deviation of Z-direction measurement related to triaxial angular velocity from the gyroscope. 

  85	fBodyAccMag.std..	Numeric	Hz	Frequency standard deviation of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  86	fBodyBodyAccJerkMag.std..	Numeric	Hz	Frequency standard deviation of measurement related to triaxial acceleration from the accelerometer and the estimated body acceleration

  87	fBodyBodyGyroMag.std..	Numeric	Hz	Frequency standard deviation of measurement related to triaxial angular velocity from the gyroscope. 

  88	fBodyBodyGyroJerkMag.std..	Numeric	Hz	Frequency standard deviation of measurement related to triaxial angular velocity from the gyroscope. 


