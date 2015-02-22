# The script 'run_analysis.R'
(Script to the course project of the Coursera course 'Getting and Cleaning Data') 

## Purpose and context
The run_analysis.R script reads data from the 'Human Activity Recognition Using Smartphones Dataset Version 1.0' and produces a new - tidy - data set which may be used for further analysis.

The experiments proving the data set have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

A description of the experiment and the data set as well as the data set itself are available at the following site: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files of the original dataset used
- 'features.txt': List of all features.
- 'activity_labels.txt': List of class labels and their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': ID's of subjects in the training data
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': ID's of subjects in the training data

## Steps performed by the the script 
1. The training and the test sets are merged to create one data set
2. Only the measurements on the mean and standard deviation for each measurement are extracted 
3. Descriptive activity names to name the activities in the data set are used
4. The data set is labeled with descriptive variable names 
5. From the data set in step 4, a second, independent tidy data set with the average of each variable for each activity and each subject is created

## Notes 
- The file created is named 'data_with_means.txt' and can be read into R with the command 'read.table("./data_with_means.txt")'.
- The codebook corresponding to the data set is named 'CodeBook.md' and is part of this repository.
