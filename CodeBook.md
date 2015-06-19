---
title: "Codebook for Course Project"
author: "Joanne Lee"
date: "June 18, 2015"
output:
  
---
 
## Project Description
Demonstrate my ability to collect, work with, and clean a data set. 
Goal is to prepare tidy data that can be used for later analysis.
 
##Study design and data processing
 
###Collection and notes of the raw data
Raw data was collected from the accelerometers from the Samsung Galaxy S smartphone. 
For more info go to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Raw data source was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
##Creating the tidy datafile
 
###Guide to create the tidy data file
1. Read the instructions and grading scheme on how to accomplish maximum points for the course project
2. Download raw data from link above (zip file)
3. Scan the files in the zip file
4. Compose a script called run_analysis.R that:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in previous stel, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
###Cleaning of the data
Short, high-level description of what the cleaning script does.
 
##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.
 
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.
 
##Sources
Sources you used if any, otherise leave out.
 
##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)
