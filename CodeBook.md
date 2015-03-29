#Code Book
##Getting and Cleaning Data course - Final Project - Mar 2nd 2015 session
This file describes the variables, the data, and any transformations or work that have been performed to clean up the data.

#The raw data
The raw data comes from the experiment "Human Activity Recognition Using Smartphones Dataset", Version 1.0, where data was collected from the accelerometers from the Samsung Galaxy S smartphone.
The raw data used in this course project are a sebset of the original data, and comes from the following files:
* Identifiers of the subjects who carried out the experiment:
  * subject_test.txt
  * subject_train.txt
* A 561-feature vector with time and frequency domain variables.
  * X_train.txt
  * y_train.txt
  * X_test.txt
  * y_test.txt
* Features labels
  * features.txt
* Activities labels:
  * activity_labels.txt

##Transformations performed to clean up the data and additional outputs
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Variables
###Identifiers (Variable names are self explanatory):
1. SubjectId
2. ActivityName
 
###Signals
Time Domain  | Frequency Domain
------------ | -------------
BodyAcceleration-mean()-X        |
BodyAcceleration-mean()-Y        |
BodyAcceleration-mean()-Z        |
BodyAcceleration-std()-X         |
BodyAcceleration-std()-Y"      |
BodyAcceleration-std()-Z"      |
GravityAcceleration-mean()-X"  |
GravityAcceleration-mean()-Y"  |
GravityAcceleration-mean()-Z"  |
GravityAcceleration-std()-X"   |
GravityAcceleration-std()-Y"   |
GravityAcceleration-std()-Z"   |
BodyAccelerationJerk-mean()-X" |
BodyAccelerationJerk-mean()-Y" |
BodyAccelerationJerk-mean()-Z" |
BodyAccelerationJerk-std()-X"  |
BodyAccelerationJerk-std()-Y"  |
BodyAccelerationJerk-std()-Z"  |
BodyAngularSpeed-mean()-X"     |
BodyAngularSpeed-mean()-Y"     |
BodyAngularSpeed-mean()-Z"     |
BodyAngularSpeed-std()-X"     |
BodyAngularSpeed-std()-Y"     |
BodyAngularSpeed-std()-Z"     |
BodyAngularAcceleration-mean()-X     |
BodyAngularAcceleration-mean()-Y     |
BodyAngularAcceleration-mean()-Z     |
BodyAngularAcceleration-std()-X      |
BodyAngularAcceleration-std()-Y      |
BodyAngularAcceleration-std()-Z         |
BodyAccelerationMagnitude-mean()        |
BodyAccelerationMagnitude-std()         |
GravityAccelerationMagnitude-mean()     |
GravityAccelerationMagnitude-std()      |
BodyAccelerationJerkMagnitude-mean()    |
BodyAccelerationJerkMagnitude-std()     |
BodyAngularSpeedMagnitude-mean()        |
BodyAngularSpeedMagnitude-std()         |
BodyAngularAccelerationMagnitude-mean() |
BodyAngularAccelerationMagnitude-std()

