## Project Description
The aim of the project is to creating tidy data set based on the raw Human Activity Recognition Using Smartphones Data Set.

##Study design and data processing

###Collection of the raw data
Input data is Human Activity Recognition Using Smartphones Data Set and it was obtained from UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

Original data comes from experiments carried by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto from Smartlab. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Creating the tidy datafile

###Guide to create the tidy data file

First of all the code is written in R language so you need to have it installed on your platform. RStudio is also recommended.

Having R installed, in order to execute function properely, following steps should be taken:

1. Download Human Activity Recognition Using Smartphones Data Set (it can be obtained from here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. Extract it to your working directory perserving file structure (i.e. you should have following folder structure ./_your working directory_/UCI HAR Dataset/).

3. Make sure that dplyr package is installed, because it is used to summarise data.

4. Run the code.

Successful execution of the function should result in appearance of the TidyData.txt file in your working directory. You can read it into R by using read.table function with header=TRUE.

###Cleaning of the data

The tidy data set is obtained by merging test and train data into one data frame. This data frame is later summarised by activity, subject and means for other variables. See the readme file and r code in this repo for more specific, step by step explanation. 

##Description of the variables in the TidyData.txt file

TinyData.txt that is the result of running run_analysis code contains 180 observations for 82 variables.

Observations are constituted by 6 activities for 30 subjects. Variables include means of mean and standard deviation sensor readings.

List of variables:
 [1] "activity"                     "subject"                      "activityCode"                
 [4] "tBodyAccmeanX"                "tBodyAccmeanY"                "tBodyAccmeanZ"               
 [7] "tGravityAccmeanX"             "tGravityAccmeanY"             "tGravityAccmeanZ"            
[10] "tBodyAccJerkmeanX"            "tBodyAccJerkmeanY"            "tBodyAccJerkmeanZ"           
[13] "tBodyGyromeanX"               "tBodyGyromeanY"               "tBodyGyromeanZ"              
[16] "tBodyGyroJerkmeanX"           "tBodyGyroJerkmeanY"           "tBodyGyroJerkmeanZ"          
[19] "tBodyAccMagmean"              "tGravityAccMagmean"           "tBodyAccJerkMagmean"         
[22] "tBodyGyroMagmean"             "tBodyGyroJerkMagmean"         "fBodyAccmeanX"               
[25] "fBodyAccmeanY"                "fBodyAccmeanZ"                "fBodyAccmeanFreqX"           
[28] "fBodyAccmeanFreqY"            "fBodyAccmeanFreqZ"            "fBodyAccJerkmeanX"           
[31] "fBodyAccJerkmeanY"            "fBodyAccJerkmeanZ"            "fBodyAccJerkmeanFreqX"       
[34] "fBodyAccJerkmeanFreqY"        "fBodyAccJerkmeanFreqZ"        "fBodyGyromeanX"              
[37] "fBodyGyromeanY"               "fBodyGyromeanZ"               "fBodyGyromeanFreqX"          
[40] "fBodyGyromeanFreqY"           "fBodyGyromeanFreqZ"           "fBodyAccMagmean"             
[43] "fBodyAccMagmeanFreq"          "fBodyBodyAccJerkMagmean"      "fBodyBodyAccJerkMagmeanFreq" 
[46] "fBodyBodyGyroMagmean"         "fBodyBodyGyroMagmeanFreq"     "fBodyBodyGyroJerkMagmean"    
[49] "fBodyBodyGyroJerkMagmeanFreq" "tBodyAccstdX"                 "tBodyAccstdY"                
[52] "tBodyAccstdZ"                 "tGravityAccstdX"              "tGravityAccstdY"             
[55] "tGravityAccstdZ"              "tBodyAccJerkstdX"             "tBodyAccJerkstdY"            
[58] "tBodyAccJerkstdZ"             "tBodyGyrostdX"                "tBodyGyrostdY"               
[61] "tBodyGyrostdZ"                "tBodyGyroJerkstdX"            "tBodyGyroJerkstdY"           
[64] "tBodyGyroJerkstdZ"            "tBodyAccMagstd"               "tGravityAccMagstd"           
[67] "tBodyAccJerkMagstd"           "tBodyGyroMagstd"              "tBodyGyroJerkMagstd"         
[70] "fBodyAccstdX"                 "fBodyAccstdY"                 "fBodyAccstdZ"                
[73] "fBodyAccJerkstdX"             "fBodyAccJerkstdY"             "fBodyAccJerkstdZ"            
[76] "fBodyGyrostdX"                "fBodyGyrostdY"                "fBodyGyrostdZ"               
[79] "fBodyAccMagstd"               "fBodyBodyAccJerkMagstd"       "fBodyBodyGyroMagstd"         
[82] "fBodyBodyGyroJerkMagstd"    

###activity
Activity performed by a subject.

Factor variable, 6 possible levels: 
*Laying
*Sitting
*Standing
*Walking
*Walking_Downstairs
*Walking_Upstairs

###subject
Subject's number that was performing activity.

Integer variable, with values raging from 1 to 30.

###activityCode
Number attached to each of a six activities.

Integer variable, with values raging from 1 to 6.

###Other Variables
Other variables include means for sensor readings.

These are numeric variables.
