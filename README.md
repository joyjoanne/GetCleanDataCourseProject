# GetCleanDataCourseProject
Name: Joanne Lee
Date: June 19, 2015
Goal: Demonstrate my ability to collect, work with, and clean a data set AND get full points in my course project :)

Welcome to my repository containing all the files required to complete the Coursera's Getting and Cleaning Data course project. Please take some time to read this file as this will provide you a general idea how to navigate in this repository. 

This repository contains:
- readme.md that describes the general idea how to navigate and expect in this repository
- run_analysis.R script that takes the raw dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The script merges and tidy the training and test sets to create one dataset called alldata. It then extracts only the measurements on the mean and standard deviation for each measurement from the alldata. The script uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names. Finally, it creates a second, independent tidy data set called summary that compiles the average of each variable for each activity and each subject.
- a codebook.md that describes the origin of the raw data, transformations performed to tidy the data and the list of variables in the output Summary.txt file
- Summary.txt file which is the output file of run_analysis.R. It contains the average of each variable for each activity and each subject.

If you wish to run my run_analysis.R file, make sure you download and unzip the raw dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to your local harddrive. Set your working directory to the "./UCI HAR Dataset" path. To double check, type the command list.files(path). You will find the train and test folders as well as activity_labels, features, features_info and README text files. After the script ends, an output file called Summary.txt will be generated in the same folder. 

I hope this readme.md provide you a good sense of my repository. Enjoy and thank you for visiting this page.
Joanne Lee
