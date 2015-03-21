run_analysis<-function() {
        
#load "features" data frame that will be used as column names
features<-read.table("./UCI HAR Dataset/features.txt")

#creates vector with column names by removing "()" and "-" that will make them shorter 
#and more readable
colname<-gsub("()","",features$V2, fixed=TRUE)
colname<-gsub("-","",colname, fixed=TRUE)

#load test data: X, Y and subjects into Xtest, Ytest and Stets data frames respectively
Xtest<-read.table("./UCI HAR Dataset/test/X_test.txt", col.names=colname)
Ytest<-read.table("./UCI HAR Dataset/test/y_test.txt", col.names="activityCode")
Stest<-read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="subject")

#merge test data frames into one data frame called "DataTest"
DataTest<-cbind(Xtest, Ytest, Stest)

#load train data: X, Y and subjects into Xtrain, Ytrain and Strain data frames respectively
Xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt", col.names=colname)
Ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt", col.names="activityCode")
Strain<-read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="subject")

#merge test data frames into one data frame called "DataTrain"
DataTrain<-cbind(Xtrain, Ytrain, Strain)

#merge test and train data sets into one data frame called "DataRaw"
DataRaw<-rbind(DataTest, DataTrain)

#search for column indices that hold mean, std, activity code and subject observations and creates one vector from them
#called "finalcolind" 
meancolind<-grep("mean", colnames(DataRaw), ignore.case=FALSE)
stdcolind<-grep("std", colnames(DataRaw), ignore.case=TRUE)
actcolind<-grep("activityCode", colnames(DataRaw), ignore.case=TRUE)
subjcolind<-grep("subject", colnames(DataRaw), ignore.case=TRUE)
finalcolind<-c(meancolind, stdcolind, actcolind, subjcolind)

#creates data frame with desired columns, that were specified in erlier step
DataFrame<-DataRaw[,finalcolind]

#loads activities labels
ActivLabels<-read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("V1", "activity"))

#adds activities names to the DataFrame based on labels
DataFrame=merge(DataFrame, ActivLabels, by.x="activityCode", by.y="V1")

#loads dplyr library that will be used to summarise data
library(dplyr)

#creates final data frame (called accordingly "final") in which data is grouped by activity, subject and means for
#other variables are calculated
Final<-DataFrame %>% group_by(activity,subject) %>% summarise_each(funs(mean))

write.table(Final, file="TidyData.txt", row.name=FALSE)

}
