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
 
###Signals (Variable names are self explanatory):
Time Domain  | Frequency Domain
------------ | -------------
BodyAcceleration-mean()-X        |  BodyAcceleration-mean()-X
BodyAcceleration-mean()-Y        |  BodyAcceleration-mean()-Y
BodyAcceleration-mean()-Z        |  BodyAcceleration-mean()-Z
BodyAcceleration-std()-X         |  BodyAcceleration-std()-X
BodyAcceleration-std()-Y"      |  BodyAcceleration-std()-Y
BodyAcceleration-std()-Z"      |  BodyAcceleration-std()-Z
GravityAcceleration-mean()-X"  |  BodyAcceleration-meanFreq()-X
GravityAcceleration-mean()-Y"  |  BodyAcceleration-meanFreq()-Y
GravityAcceleration-mean()-Z"  |  BodyAcceleration-meanFreq()-Z
GravityAcceleration-std()-X"   |  BodyAccelerationJerk-mean()-X
GravityAcceleration-std()-Y"   |  BodyAccelerationJerk-mean()-Y
GravityAcceleration-std()-Z"   |  BodyAccelerationJerk-mean()-Z
BodyAccelerationJerk-mean()-X" |  BodyAccelerationJerk-std()-X
BodyAccelerationJerk-mean()-Y" |  BodyAccelerationJerk-std()-Y
BodyAccelerationJerk-mean()-Z" |  BodyAccelerationJerk-std()-Z
BodyAccelerationJerk-std()-X"  |  BodyAccelerationJerk-meanFreq()-X
BodyAccelerationJerk-std()-Y"  |  BodyAccelerationJerk-meanFreq()-Y
BodyAccelerationJerk-std()-Z"  |  BodyAccelerationJerk-meanFreq()-Z
BodyAngularSpeed-mean()-X"     |  BodyAngularSpeed-mean()-X
BodyAngularSpeed-mean()-Y"     |  BodyAngularSpeed-mean()-Y
BodyAngularSpeed-mean()-Z"     |  BodyAngularSpeed-mean()-Z
BodyAngularSpeed-std()-X"     |  BodyAngularSpeed-std()-X
BodyAngularSpeed-std()-Y"     |  BodyAngularSpeed-std()-Y
BodyAngularSpeed-std()-Z"     |  BodyAngularSpeed-std()-Z
BodyAngularAcceleration-mean()-X     |  BodyAngularSpeed-meanFreq()-X
BodyAngularAcceleration-mean()-Y     |  BodyAngularSpeed-meanFreq()-Y
BodyAngularAcceleration-mean()-Z     |  BodyAngularSpeed-meanFreq()-Z
BodyAngularAcceleration-std()-X      |  BodyAccelerationMagnitude-mean()
BodyAngularAcceleration-std()-Y      |  BodyAccelerationMagnitude-std()
BodyAngularAcceleration-std()-Z         |  BodyAccelerationMagnitude-meanFreq()
BodyAccelerationMagnitude-mean()        |  BodyBodyAccelerationJerkMagnitude-mean()
BodyAccelerationMagnitude-std()         |  BodyBodyAccelerationJerkMagnitude-std()
GravityAccelerationMagnitude-mean()     |  BodyBodyAccelerationJerkMagnitude-meanFreq()
GravityAccelerationMagnitude-std()      |  BodyBodyAngularSpeedMagnitude-mean()
BodyAccelerationJerkMagnitude-mean()    |  BodyBodyAngularSpeedMagnitude-std()
BodyAccelerationJerkMagnitude-std()     |  BodyBodyAngularSpeedMagnitude-meanFreq()
BodyAngularSpeedMagnitude-mean()        |  BodyBodyAngularAccelerationMagnitude-mean()
BodyAngularSpeedMagnitude-std()         |  BodyBodyAngularAccelerationMagnitude-std()
BodyAngularAccelerationMagnitude-mean() |  BodyBodyAngularAccelerationMagnitude-meanFreq()
BodyAngularAccelerationMagnitude-std()  |

