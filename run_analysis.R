## Make initial settings 
require(plyr)
setwd("~/R/Coursera/GetCleanData/courseprj/")
## Read raw data
msr_col_names <- read.table("./features.txt", stringsAsFactors = FALSE)
act_labels <- read.table("./activity_labels.txt", stringsAsFactors = FALSE)
test_sbj <- read.table("./test/subject_test.txt", stringsAsFactors = FALSE)
test_msr <- read.table("./test/X_test.txt", stringsAsFactors = FALSE)
test_act <- read.table("./test/y_test.txt", stringsAsFactors = FALSE)
train_sbj <- read.table("./train/subject_train.txt", stringsAsFactors = FALSE)
train_msr <- read.table("./train/X_train.txt", stringsAsFactors = FALSE)
train_act <- read.table("./train/y_train.txt", stringsAsFactors = FALSE)
## 1 - Merges the training and the test sets to create one data set.
test <- cbind(test_sbj, test_act, test_msr)
train <- cbind(train_sbj, train_act, train_msr)
mrgd_msr <- rbind(test, train)
## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
colnames(msr_col_names) <- c("FeatId", "FeatName")
colnames(mrgd_msr) <- c("SbjId", "ActId", msr_col_names$FeatName)
msr_mean_std <- mrgd_msr[,grepl("SbjId|ActId|mean|std", names(mrgd_msr))]
## 3 - Uses descriptive activity names to name the activities in the data set
colnames(act_labels) <- c("ActId", "ActName")
msr_mean_std <- join(msr_mean_std, act_labels, by = "ActId", match = "first")
msr_mean_std <- msr_mean_std[,-1]
## 4 - Appropriately labels the data set with descriptive variable names
names(msr_mean_std) <- gsub('SbjId',"SubjectId",names(msr_mean_std))
names(msr_mean_std) <- gsub('ActName',"ActivityName",names(msr_mean_std))
names(msr_mean_std) <- gsub('Acc',"Acceleration",names(msr_mean_std))
names(msr_mean_std) <- gsub('GyroJerk',"AngularAcceleration",names(msr_mean_std))
names(msr_mean_std) <- gsub('Gyro',"AngularSpeed",names(msr_mean_std))
names(msr_mean_std) <- gsub('Mag',"Magnitude",names(msr_mean_std))
names(msr_mean_std) <- gsub('^t',"TimeDomain.",names(msr_mean_std))
names(msr_mean_std) <- gsub('^f',"FrequencyDomain.",names(msr_mean_std))
names(msr_mean_std) <- gsub('\\.mean',".Mean",names(msr_mean_std))
names(msr_mean_std) <- gsub('\\.std',".StandardDeviation",names(msr_mean_std))
names(msr_mean_std) <- gsub('Freq\\.',"Frequency.",names(msr_mean_std))
names(msr_mean_std) <- gsub('Freq$',"Frequency",names(msr_mean_std))
msr_mean_std <- msr_mean_std[,c(1,81,2:80)]
## 5 - From the data set in step 4, creates a second, independent tidy 
##     data set with the average of each variable for each activity and each subject.
msr_avg_by_act_sbj = ddply(msr_mean_std, c("SubjectId","ActivityName"), numcolwise(mean))
write.table(msr_avg_by_act_sbj, file = "./variables_average_by_activity_subject.txt")