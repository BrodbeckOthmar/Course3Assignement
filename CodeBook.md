# Code book for the file 'data_with_means.txt'

## Feature selection 

The features for this data set are derived from the features of the 'Human Activity Recognition Using Smartphones Dataset Version 1.0' by means of the following steps (s. file 'features_info.txt' of the original data set for information about the variables used on the feature vector): 

1. The training and the test sets are merged to create one data set 
2. Only the measurements on the mean and standard deviation for each measurement are extracted
3. The average of each variable for each activity and each subject is created

The feature names used for the data set can be derifed from the original names as follows:

1. '-' is replaced by '_'
2. 'mean()', 'std()' is replaced by 'mean', 'std', respectively

## Feature vector variables

Variables '\*\_mean\_\*'

- Mean value of multiple measurements of the corrrespondig original variable
- Type: Real number
- Range: [-1,1]
		
Variables '\*\_std\_\*'

- Standard deviation of multiple measurements of the corresponding original variables
- Type: Real number
- Range: [-1,1]

Variable 'activity'

- Descriptive activity name
- Type: Factor
- Values: 'WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING'

Variable 'subject'

- Subject identifier
- Type: Integer
- Values: 1:30
