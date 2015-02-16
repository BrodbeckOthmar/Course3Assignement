#Step 1: Merge the training and the test sets to create one data set

library("dplyr")
setwd("~/R/work/C3Assignement")

#Read and concat data
trainData <- read.table("./data/train/X_train.txt")
testData <- read.table("./data/test/X_test.txt")
joinData <- rbind(trainData, testData)
features <- read.table("./data/features.txt")
names(joinData) <- features[,2]

#Read and concat labels
trainLabel <- read.table("./data/train/y_train.txt")
testLabel <- read.table("./data/test/y_test.txt") 
joinLabel <- rbind(trainLabel, testLabel)
names(joinLabel) <- "activity"

#Read and concat subjects
trainSubject <- read.table("./data/train/subject_train.txt")
testSubject <- read.table("./data/test/subject_test.txt")
joinSubject <- rbind(trainSubject, testSubject)
names(joinSubject) <- "subject"

#Merge subjects, labels, data
cleanedData <- cbind(joinSubject, joinLabel, joinData)

#Step2: Extract only the measurements on the mean and standard deviation for each measurement
meanStdIndices <- grep("activity|subject|mean\\(\\)|std\\(\\)", names(cleanedData))
cleanedData <- cleanedData[, meanStdIndices]

#Step3: Use descriptive activity names to name the activities in the data set
activityNames <- read.table("./data/activity_labels.txt")
cleanedData$activity <- activityNames[cleanedData$activity, 2]

#Step4: Appropriately labels the data set with descriptive variable names. 
#Remove "()"
names(cleanedData) <- gsub("\\(\\)", "", names(cleanedData))
#Replace "-" by "_"
names(cleanedData)<- gsub("-", "_", names(cleanedData))

#Write 1st dataset
#write.table(cleanedData, "merged_data.txt",row.name=FALSE)

#Step5: create a second, independent tidy data set with the average of each variable for each activity and each subject.
result<-cleanedData %>% group_by(subject, activity) %>% summarise_each(funs(mean))
#Write 2nd dataset
write.table(result, "data_with_means.txt", row.name=FALSE) 

#TestTestTest
