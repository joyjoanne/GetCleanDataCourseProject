# Coder: Joanne Lee
# Date: June 18, 2015
# This run_analysis.R script does the following:

# 1) Merge the training and the test sets to create one data set call merged
# Download raw data to local hard drive. Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# Set working directory to be in the UCI HAR Dataset folder
# Merge test and train sets
Xtest <- read.table("./test/X_test.txt")
Xtrain <- read.table("./train/X_train.txt")
merged <- rbind(Xtest,Xtrain)

# Rename variable names. Make names unique else duplication error would occur
feats <- read.table("./features.txt")
colnames(merged) <- make.names(feats$V2,unique=TRUE, allow_ = TRUE)

# Merge test and train labels. Rename variable to Activity
ytest <- read.table("./test/y_test.txt")
ytrain <- read.table("./train/y_train.txt")
mergedlab <- rbind(ytest,ytrain)
colnames(mergedlab) <- "Activity"

# Read activity_labels.txt file
act <- read.table("./activity_labels.txt")

# Merge test and train subjects. Rename variable to subjID
subjtest <- read.table("./test/subject_test.txt")
subjtrain <- read.table("./train/subject_train.txt")
mergedsubj <- rbind(subjtest,subjtrain)
colnames(mergedsubj) <- "subjID"

# Merge all cleaned datasets and store in alldata
alldata <- cbind(mergedsubj,mergedlab,merged)

# 2) Extract only the measurements on the mean and standard deviation for each measurement
library(dplyr)
meanstd<-select(alldata, subjID, Activity, contains("mean"),contains("std")) 

# 3) Use descriptive activity names to name the activities in the data set
temp <- data.frame(meanstd$Activity, V2=act[match(meanstd$Activity, act$V1), 2])
meanstd$Activity <- temp$V2

# 4) Appropriately labels the data set with descriptive variable names
## Done in step 1

# 5) From the data set in step 4, create a second, independent tidy data set with 
#   the average of each variable for each activity and each subject
summary <- meanstd %>% group_by(Activity, subjID) %>% summarise_each(funs(mean))

# Write summary to text file for upload to Github
write.table(summary,file="Summary.txt", row.name=FALSE)
