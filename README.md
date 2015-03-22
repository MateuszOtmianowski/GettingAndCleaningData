# Getting And Cleaning Data

##What is this repo and what it contains

This repo was created to contain files connected to the Getting and Cleaning Data course project. 
Next to the readme file that you are reading now you will find here:
* __run_analysis.R__ containing R script (described below)
* __CodeBook__ explaining data and variables

##Purpose of the run_analysis R

Aim of the run_analysis R code is to prepare tidy data set based on Human Activity Recognition Using Smartphones Data Set (see Code Book for more information about this data set). Tidy data is obtained by merging train and test data sets and averaging each variable for each activity and each subject.

##Instructions on the running run_analysis.R

First of all the code is written in R language so you need to have it installed on your platform. RStudio is also recommended. It should be also noted that the code was written under Windows and it may not work properly on other platforms (the main concern beign file path structure).

Having R installed in order to execute function properely following steps should be taken:

1. Download Human Activity Recognition Using Smartphones Data Set (it can be obtained from here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. Extract it to your working directory perserving file structure (i.e. you should have following folder structure ./_your working directory_/UCI HAR Dataset/).

3. Make sure that dplyr package is installed, because it is used to summarise data.

4. Run the code.

Successful execution of the function should result in appearance of the TidyData.txt file in your working directory. You can read it into R by using read.table function with header=TRUE.

##What exactly run_analysis code does

As it was stated previously the run_analysis code prepares tidy data set based on Activity Recognition Using Smartphones Data Set. The function takes following steps:

1. Loads "features" data frame that will be used as column names.

2. Based on "features" data it creates vector of column names by removing "()" and "-" to make them shorter and more readable.

3. Loads test data: X, Y and subjects into Xtest, Ytest and Stets data frames respectively.

4. Merges test data frames into one data frame called "DataTest".

5. Loads train data: X, Y and subjects into Xtrain, Ytrain and Strain data frames respectively.

6. Merges test data frames into one data frame called "DataTrain".

7. Merge test and train data sets into one data frame called "DataRaw"

8. Searches for columns containing means, standard deviations, activity and subject and based on these columns creates new data frame called "DataFrame"

9. Loads activity labels from "activity_labels.txt".

10. Adds activities names to the DataFrame based on labels

11. Loads dplyr package and uses it to create new data frame called "Final" in which data is grouped by activity and subject, means of other variables for these groups are calculated.

12. The reasult of the step 11 is save into TidyData.txt in the working directory.






