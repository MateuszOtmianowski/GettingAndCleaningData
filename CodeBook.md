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

These are numeric variables, summary has been provided below

 tBodyAccmeanX    tBodyAccmeanY       tBodyAccmeanZ      tGravityAccmeanX  tGravityAccmeanY  
 Min.   :0.2216   Min.   :-0.040514   Min.   :-0.15251   Min.   :-0.6800   Min.   :-0.47989  
 1st Qu.:0.2712   1st Qu.:-0.020022   1st Qu.:-0.11207   1st Qu.: 0.8376   1st Qu.:-0.23319  
 Median :0.2770   Median :-0.017262   Median :-0.10819   Median : 0.9208   Median :-0.12782  
 Mean   :0.2743   Mean   :-0.017876   Mean   :-0.10916   Mean   : 0.6975   Mean   :-0.01621  
 3rd Qu.:0.2800   3rd Qu.:-0.014936   3rd Qu.:-0.10443   3rd Qu.: 0.9425   3rd Qu.: 0.08773  
 Max.   :0.3015   Max.   :-0.001308   Max.   :-0.07538   Max.   : 0.9745   Max.   : 0.95659  
 tGravityAccmeanZ   tBodyAccJerkmeanX tBodyAccJerkmeanY    tBodyAccJerkmeanZ   tBodyGyromeanX    
 Min.   :-0.49509   Min.   :0.04269   Min.   :-0.0386872   Min.   :-0.067458   Min.   :-0.20578  
 1st Qu.:-0.11726   1st Qu.:0.07396   1st Qu.: 0.0004664   1st Qu.:-0.010601   1st Qu.:-0.04712  
 Median : 0.02384   Median :0.07640   Median : 0.0094698   Median :-0.003861   Median :-0.02871  
 Mean   : 0.07413   Mean   :0.07947   Mean   : 0.0075652   Mean   :-0.004953   Mean   :-0.03244  
 3rd Qu.: 0.14946   3rd Qu.:0.08330   3rd Qu.: 0.0134008   3rd Qu.: 0.001958   3rd Qu.:-0.01676  
 Max.   : 0.95787   Max.   :0.13019   Max.   : 0.0568186   Max.   : 0.038053   Max.   : 0.19270  
 tBodyGyromeanY     tBodyGyromeanZ     tBodyGyroJerkmeanX tBodyGyroJerkmeanY tBodyGyroJerkmeanZ 
 Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.15721   Min.   :-0.07681   Min.   :-0.092500  
 1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.10322   1st Qu.:-0.04552   1st Qu.:-0.061725  
 Median :-0.07318   Median : 0.08512   Median :-0.09868   Median :-0.04112   Median :-0.053430  
 Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.09606   Mean   :-0.04269   Mean   :-0.054802  
 3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.09110   3rd Qu.:-0.03842   3rd Qu.:-0.048985  
 Max.   : 0.02747   Max.   : 0.17910   Max.   :-0.02209   Max.   :-0.01320   Max.   :-0.006941  
 tBodyAccMagmean   tGravityAccMagmean tBodyAccJerkMagmean tBodyGyroMagmean  tBodyGyroJerkMagmean
 Min.   :-0.9865   Min.   :-0.9865    Min.   :-0.9928     Min.   :-0.9807   Min.   :-0.99732    
 1st Qu.:-0.9573   1st Qu.:-0.9573    1st Qu.:-0.9807     1st Qu.:-0.9461   1st Qu.:-0.98515    
 Median :-0.4829   Median :-0.4829    Median :-0.8168     Median :-0.6551   Median :-0.86479    
 Mean   :-0.4973   Mean   :-0.4973    Mean   :-0.6079     Mean   :-0.5652   Mean   :-0.73637    
 3rd Qu.:-0.0919   3rd Qu.:-0.0919    3rd Qu.:-0.2456     3rd Qu.:-0.2159   3rd Qu.:-0.51186    
 Max.   : 0.6446   Max.   : 0.6446    Max.   : 0.4345     Max.   : 0.4180   Max.   : 0.08758    
 fBodyAccmeanX     fBodyAccmeanY      fBodyAccmeanZ     fBodyAccmeanFreqX  fBodyAccmeanFreqY  
 Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895   Min.   :-0.63591   Min.   :-0.379518  
 1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619   1st Qu.:-0.39165   1st Qu.:-0.081314  
 Median :-0.7691   Median :-0.59498   Median :-0.7236   Median :-0.25731   Median : 0.007855  
 Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297   Mean   :-0.23227   Mean   : 0.011529  
 3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183   3rd Qu.:-0.06105   3rd Qu.: 0.086281  
 Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807   Max.   : 0.15912   Max.   : 0.466528  
 fBodyAccmeanFreqZ  fBodyAccJerkmeanX fBodyAccJerkmeanY fBodyAccJerkmeanZ fBodyAccJerkmeanFreqX
 Min.   :-0.52011   Min.   :-0.9946   Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.57604     
 1st Qu.:-0.03629   1st Qu.:-0.9828   1st Qu.:-0.9725   1st Qu.:-0.9796   1st Qu.:-0.28966     
 Median : 0.06582   Median :-0.8126   Median :-0.7817   Median :-0.8707   Median :-0.06091     
 Mean   : 0.04372   Mean   :-0.6139   Mean   :-0.5882   Mean   :-0.7144   Mean   :-0.06910     
 3rd Qu.: 0.17542   3rd Qu.:-0.2820   3rd Qu.:-0.1963   3rd Qu.:-0.4697   3rd Qu.: 0.17660     
 Max.   : 0.40253   Max.   : 0.4743   Max.   : 0.2767   Max.   : 0.1578   Max.   : 0.33145     
 fBodyAccJerkmeanFreqY fBodyAccJerkmeanFreqZ fBodyGyromeanX    fBodyGyromeanY    fBodyGyromeanZ   
 Min.   :-0.60197      Min.   :-0.62756      Min.   :-0.9931   Min.   :-0.9940   Min.   :-0.9860  
 1st Qu.:-0.39751      1st Qu.:-0.30867      1st Qu.:-0.9697   1st Qu.:-0.9700   1st Qu.:-0.9624  
 Median :-0.23209      Median :-0.09187      Median :-0.7300   Median :-0.8141   Median :-0.7909  
 Mean   :-0.22810      Mean   :-0.13760      Mean   :-0.6367   Mean   :-0.6767   Mean   :-0.6044  
 3rd Qu.:-0.04721      3rd Qu.: 0.03858      3rd Qu.:-0.3387   3rd Qu.:-0.4458   3rd Qu.:-0.2635  
 Max.   : 0.19568      Max.   : 0.23011      Max.   : 0.4750   Max.   : 0.3288   Max.   : 0.4924  
 fBodyGyromeanFreqX  fBodyGyromeanFreqY fBodyGyromeanFreqZ fBodyAccMagmean   fBodyAccMagmeanFreq
 Min.   :-0.395770   Min.   :-0.66681   Min.   :-0.50749   Min.   :-0.9868   Min.   :-0.31234   
 1st Qu.:-0.213363   1st Qu.:-0.29433   1st Qu.:-0.15481   1st Qu.:-0.9560   1st Qu.:-0.01475   
 Median :-0.115527   Median :-0.15794   Median :-0.05081   Median :-0.6703   Median : 0.08132   
 Mean   :-0.104551   Mean   :-0.16741   Mean   :-0.05718   Mean   :-0.5365   Mean   : 0.07613   
 3rd Qu.: 0.002655   3rd Qu.:-0.04269   3rd Qu.: 0.04152   3rd Qu.:-0.1622   3rd Qu.: 0.17436   
 Max.   : 0.249209   Max.   : 0.27314   Max.   : 0.37707   Max.   : 0.5866   Max.   : 0.43585   
 fBodyBodyAccJerkMagmean fBodyBodyAccJerkMagmeanFreq fBodyBodyGyroMagmean fBodyBodyGyroMagmeanFreq
 Min.   :-0.9940         Min.   :-0.12521            Min.   :-0.9865      Min.   :-0.45664        
 1st Qu.:-0.9770         1st Qu.: 0.04527            1st Qu.:-0.9616      1st Qu.:-0.16951        
 Median :-0.7940         Median : 0.17198            Median :-0.7657      Median :-0.05352        
 Mean   :-0.5756         Mean   : 0.16255            Mean   :-0.6671      Mean   :-0.03603        
 3rd Qu.:-0.1872         3rd Qu.: 0.27593            3rd Qu.:-0.4087      3rd Qu.: 0.08228        
 Max.   : 0.5384         Max.   : 0.48809            Max.   : 0.2040      Max.   : 0.40952        
 fBodyBodyGyroJerkMagmean fBodyBodyGyroJerkMagmeanFreq  tBodyAccstdX      tBodyAccstdY     
 Min.   :-0.9976          Min.   :-0.18292             Min.   :-0.9961   Min.   :-0.99024  
 1st Qu.:-0.9813          1st Qu.: 0.05423             1st Qu.:-0.9799   1st Qu.:-0.94205  
 Median :-0.8779          Median : 0.11156             Median :-0.7526   Median :-0.50897  
 Mean   :-0.7564          Mean   : 0.12592             Mean   :-0.5577   Mean   :-0.46046  
 3rd Qu.:-0.5831          3rd Qu.: 0.20805             3rd Qu.:-0.1984   3rd Qu.:-0.03077  
 Max.   : 0.1466          Max.   : 0.42630             Max.   : 0.6269   Max.   : 0.61694  
  tBodyAccstdZ     tGravityAccstdX   tGravityAccstdY   tGravityAccstdZ   tBodyAccJerkstdX 
 Min.   :-0.9877   Min.   :-0.9968   Min.   :-0.9942   Min.   :-0.9910   Min.   :-0.9946  
 1st Qu.:-0.9498   1st Qu.:-0.9825   1st Qu.:-0.9711   1st Qu.:-0.9605   1st Qu.:-0.9832  
 Median :-0.6518   Median :-0.9695   Median :-0.9590   Median :-0.9450   Median :-0.8104  
 Mean   :-0.5756   Mean   :-0.9638   Mean   :-0.9524   Mean   :-0.9364   Mean   :-0.5949  
 3rd Qu.:-0.2306   3rd Qu.:-0.9509   3rd Qu.:-0.9370   3rd Qu.:-0.9180   3rd Qu.:-0.2233  
 Max.   : 0.6090   Max.   :-0.8296   Max.   :-0.6436   Max.   :-0.6102   Max.   : 0.5443  
 tBodyAccJerkstdY  tBodyAccJerkstdZ   tBodyGyrostdX     tBodyGyrostdY     tBodyGyrostdZ    
 Min.   :-0.9895   Min.   :-0.99329   Min.   :-0.9943   Min.   :-0.9942   Min.   :-0.9855  
 1st Qu.:-0.9724   1st Qu.:-0.98266   1st Qu.:-0.9735   1st Qu.:-0.9629   1st Qu.:-0.9609  
 Median :-0.7756   Median :-0.88366   Median :-0.7890   Median :-0.8017   Median :-0.8010  
 Mean   :-0.5654   Mean   :-0.73596   Mean   :-0.6916   Mean   :-0.6533   Mean   :-0.6164  
 3rd Qu.:-0.1483   3rd Qu.:-0.51212   3rd Qu.:-0.4414   3rd Qu.:-0.4196   3rd Qu.:-0.3106  
 Max.   : 0.3553   Max.   : 0.03102   Max.   : 0.2677   Max.   : 0.4765   Max.   : 0.5649  
 

 tBodyGyroJerkstdX
 Min.   :-0.9965
 1st Qu.:-0.9800
 Median :-0.8396
 Mean   :-0.7036
 3rd Qu.:-0.4629   
 Max.   : 0.1791  
 
 tBodyGyroJerkstdY
 Min.   :-0.9971
 1st Qu.:-0.9832
 Median :-0.8942
 Mean   :-0.7636
 3rd Qu.:-0.5861
 Max.   : 0.2959  
 
 tBodyGyroJerkstdZ
 Min.   :-0.9954
 1st Qu.:-0.9848
 Median :-0.8610
 Mean   :-0.7096
 3rd Qu.:-0.4741
 Max.   : 0.1932   
 
 tBodyAccMagstd
 Min.   :-0.9865
 1st Qu.:-0.9430
 Median :-0.6074 
 Mean   :-0.5439
 3rd Qu.:-0.2090  
 Max.   : 0.4284    
 
 tGravityAccMagstd
 Min.   :-0.9865
 1st Qu.:-0.9430 
 Median :-0.6074  
 Mean   :-0.5439
 3rd Qu.:-0.2090
 Max.   : 0.4284 
 
 tBodyAccJerkMagstd                
 Min.   :-0.9946               
 1st Qu.:-0.9765                
 Median :-0.8014                 
 Mean   :-0.5842                
 3rd Qu.:-0.2173                
 Max.   : 0.4506    
 
 tBodyGyroMagstd
 Min.   :-0.9814 
 1st Qu.:-0.9476
 Median :-0.7420
 Mean   :-0.6304
 3rd Qu.:-0.3602
 Max.   : 0.3000
 
 tBodyGyroJerkMagstd
 Min.   :-0.9977
 1st Qu.:-0.9805 
 Median :-0.8809
 Mean   :-0.7550
 3rd Qu.:-0.5767
 Max.   : 0.2502
 
 fBodyAccstdX 
 Min.   :-0.9966
 1st Qu.:-0.9820
 Median :-0.7470
 Mean   :-0.5522 
 3rd Qu.:-0.1966
 Max.   : 0.6585
 
 fBodyAccstdY
 Min.   :-0.99068 
 1st Qu.:-0.94042
 Median :-0.51338
 Mean   :-0.48148
 3rd Qu.:-0.07913 
 Max.   : 0.56019  
 
 
 fBodyAccstdZ               
 Min.   :-0.9872            
 1st Qu.:-0.9459             
 Median :-0.6441             
 Mean   :-0.5824             
 3rd Qu.:-0.2655           
 Max.   : 0.6871          
 
 fBodyAccJerkstdX 
 Min.   :-0.9951 
 1st Qu.:-0.9847
 Median :-0.8254
 Mean   :-0.6121
 3rd Qu.:-0.2475
 Max.   : 0.4768 
 
 fBodyAccJerkstdY
 Min.   :-0.9905
 1st Qu.:-0.9737
 Median :-0.7852
 Mean   :-0.5707
 3rd Qu.:-0.1685 
 Max.   : 0.3498
 
 fBodyAccJerkstdZ
 Min.   :-0.993108 
 1st Qu.:-0.983747
 Median :-0.895121
 Mean   :-0.756489
 3rd Qu.:-0.543787 
 Max.   :-0.006236  
 
 fBodyGyrostdX 
 Min.   :-0.9947
 1st Qu.:-0.9750 
 Median :-0.8086 
 Mean   :-0.7110 
 3rd Qu.:-0.4813 
 Max.   : 0.1966 
 
 fBodyGyrostdY              
 Min.   :-0.9944                   
 1st Qu.:-0.9602                  
 Median :-0.7964                    
 Mean   :-0.6454                   
 3rd Qu.:-0.4154                   
 Max.   : 0.6462                  
 
 fBodyGyrostdZ 
 Min.   :-0.9867
 1st Qu.:-0.9643
 Median :-0.8224
 Mean   :-0.6577
 3rd Qu.:-0.3916 
 Max.   : 0.5225 
 
 fBodyAccMagstd
 Min.   :-0.9876
 1st Qu.:-0.9452  
 Median :-0.6513
 Mean   :-0.6210
 3rd Qu.:-0.3654 
 Max.   : 0.1787  
 
 fBodyBodyAccJerkMagstd
 Min.   :-0.9944 
 1st Qu.:-0.9752
 Median :-0.8126 
 Mean   :-0.5992
 3rd Qu.:-0.2668
 Max.   : 0.3163
 
 fBodyBodyGyroMagstd
 Min.   :-0.9815 
 1st Qu.:-0.9488 
 Median :-0.7727
 Mean   :-0.6723  
 3rd Qu.:-0.4277
 Max.   : 0.2367
 
 fBodyBodyGyroJerkMagstd
 Min.   :-0.9976        
 1st Qu.:-0.9802        
 Median :-0.8941        
 Mean   :-0.7715        
 3rd Qu.:-0.6081        
 Max.   : 0.2878  
