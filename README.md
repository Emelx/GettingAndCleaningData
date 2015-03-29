# Getting And Cleaning Data Course final Project
This repo contains the assigments for the "Getting And Cleaning Data" course final project - Mar 2nd 2015 session

##Repo content (as requested by the assigment)
* README.md: explains how all of the scripts work and how they are connected.
* CodeBook.md: describes the variables, the data, and any transformations or work that have benn performed to clean up the data
* run_analysis.R: the R script that performs the following transformations on raw data:
  * Merges of the training and the test sets
  * Extracts only the measurements on the mean and standard deviation
  * Uses descriptive activity names to name the activities
  * Appropriately labels the data set with descriptive variable names. 
  * From the data tidy data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Raw data
The raw data comes from the experiment "Human Activity Recognition Using Smartphones Dataset", and represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The data used in this project, actually a sebset of the original data, are:
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment. 

##The R script
The script has been written and run on R version 3.1.3 (2015-03-09) -- "Smooth Sidewalk".
To run the script unzip the files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in a subdirectory of the working direcotry called "courseprj", then source the script. The independent tidy data set with the average of each variable for each activity and each subject generated by the script is saved in the "courseprj" subdirecotry with name "variables_average_by_activity_subject.txt".
NB: the script uses the plyr package
