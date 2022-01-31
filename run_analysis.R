library(dplyr)

# get data
features<-read.table('./UCI HAR Dataset/features.txt', header=FALSE,col.names = c("n","functions"))
activity<-read.table('./UCI HAR Dataset/activity_labels.txt', header=FALSE,col.names = c("code", "activity"))
subtest<-read.table('./UCI HAR Dataset/test/subject_test.txt', header=FALSE, col.names = "subject")
subtrain<-read.table('./UCI HAR Dataset/train/subject_train.txt', header=FALSE, col.names = "subject")
ytrain<-read.table('./UCI HAR Dataset/train/y_train.txt', header=FALSE, col.names = "code")
ytest<-read.table('./UCI HAR Dataset/test/y_test.txt', header=FALSE, col.names = "code")
xtrain<-read.table('./UCI HAR Dataset/train/X_train.txt', header=FALSE,col.names=features$functions)
xtest<-read.table('./UCI HAR Dataset/test/X_test.txt', header=FALSE, col.names=features$functions)

test  <- cbind(subtest, ytest, xtest)
train <- cbind(subtrain, ytrain, xtrain)
FullSet <- rbind(test,train)

# step 1 complete

varnames <-colnames(FullSet)
varindex <- grep("mean|std",varnames)
TidyData <- FullSet[c(1,2,varindex)]

# step 2 complete

descriptive <- merge(TidyData,activity,by="code")
TidyData2 <- descriptive %>%
  select(subject,activity, everything(),)

# step 3 complete

names(TidyData2)[2] = "activity"
names(TidyData2)<-gsub("Acc", "Accelerometer", names(TidyData2))
names(TidyData2)<-gsub("Gyro", "Gyroscope", names(TidyData2))
names(TidyData2)<-gsub("BodyBody", "Body", names(TidyData2))
names(TidyData2)<-gsub("Mag", "Magnitude", names(TidyData2))
names(TidyData2)<-gsub("^t", "Time", names(TidyData2))
names(TidyData2)<-gsub("^f", "Frequency", names(TidyData2))
names(TidyData2)<-gsub("tBody", "TimeBody", names(TidyData2))
names(TidyData2)<-gsub("-mean()", "Mean", names(TidyData2), ignore.case = TRUE)
names(TidyData2)<-gsub("-std()", "STD", names(TidyData2), ignore.case = TRUE)
names(TidyData2)<-gsub("-freq()", "Frequency", names(TidyData2), ignore.case = TRUE)
names(TidyData2)<-gsub("angle", "Angle", names(TidyData2))
names(TidyData2)<-gsub("gravity", "Gravity", names(TidyData2))

TidyData3 <- TidyData2 %>%
  select(-code, everything())

# step 4 complete

FinalData <- TidyData3 %>% 
  group_by(subject,activity) %>%
  summarize_all(list(mean))

# step 5 complete

write.table(FinalData,file="project.text", sep= "\t", row.name=FALSE)


