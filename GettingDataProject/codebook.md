**Data Codebook**

This codebook describes the variables of the dataset "tidydata.csv", how it was obtained, and any transformations used to produce it. The dataset comes from the Human Activity Recognition Using Smartphones Dataset (UCI HAR Dataset). A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data used for this project are found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original dataset contained samples from an experiment involving 30 volunteers. Each person performed a variety of different activities (six in all - see activityLabel below) wearing a Samsung Galaxy III smartphone on their waist. Accelerometer and gyroscope measurements were taken. This tidy data takes the means and sample deviations of that data.


**Requirements**

The data must be unpacked into a directory called UCI HAR Dataset. The tidydata.csv will be placed in the working directory. The dplyr package must be installed. Then the program "run_analysis.R" can be run from within the R runtime environment.


**Data Changes**

The actual data content has not been altered. Information from both training and testing data set have been combined, along with descriptive activity information, and the mean and standard deviation have been extracted. Column names have been renamed for clarity purposes (see below).



**Variables**

Unless it is stated otherwise, all the features represented as numeric type are supposed to be double-precision floating point number in a normalized range of [-1, 1].


- subject (number of subject, from 1-30)
- activityLabel (factor: one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

- tBody_Acc_Mean_X
- tBody_Acc_Mean_Y
- tBody_Acc_Mean_Z
- tBody_Acc_Std_X
- tBody_Acc_Std_Y
- tBody_Acc_Std_Z
- tGravity_Acc_Mean_X
- tGravity_Acc_Mean_Y
- tGravity_Acc_Mean_Z
- tGravity_Acc_Std_X
- tGravity_Acc_Std_Y
- tGravity_Acc_Std_Z
- tBody_AccJerk_Mean_X
- tBody_AccJerk_Mean_Y
- tBody_AccJerk_Mean_Z
- tBody_AccJerk_Std_X
- tBody_AccJerk_Std_Y
- tBody_AccJerk_Std_Z
- tBody_Gyro_Mean_X
- tBody_Gyro_Mean_Y
- tBody_Gyro_Mean_Z
- tBody_Gyro_Std_X
- tBody_Gyro_Std_Y
- tBody_Gyro_Std_Z
- tBody_GyroJerk_Mean_X
- tBody_GyroJerk_Mean_Y
- tBody_GyroJerk_Mean_Z
- tBody_GyroJerk_Std_X
- tBody_GyroJerk_Std_Y
- tBody_GyroJerk_Std_Z
- tBody_AccMag_Mean
- tBody_AccMag_Std
- tGravity_AccMag_Mean
- tGravity_AccMag_Std
- tBody_AccJerkMag_Mean
- tBody_AccJerkMag_Std
- tBody_GyroMag_Mean
- tBody_GyroMag_Std
- tBody_GyroJerkMag_Mean
- tBody_GyroJerkMag_Std
- fBody_Acc_Mean_X
- fBody_Acc_Mean_Y
- fBody_Acc_Mean_Z
- fBody_Acc_Std_X
- fBody_Acc_Std_Y
- fBody_Acc_Std_Z
- fBody_Acc_MeanFreq_X
- fBody_Acc_MeanFreq_Y
- fBody_Acc_MeanFreq_Z
- fBody_AccJerk_Mean_X
- fBody_AccJerk_Mean_Y
- fBody_AccJerk_Mean_Z
- fBody_AccJerk_Std_X
- fBody_AccJerk_Std_Y
- fBody_AccJerk_Std_Z
- fBody_AccJerk_MeanFreq_X
- fBody_AccJerk_MeanFreq_Y
- fBody_AccJerk_MeanFreq_Z
- fBody_Gyro_Mean_X
- fBody_Gyro_Mean_Y
- fBody_Gyro_Mean_Z
- fBody_Gyro_Std_X
- fBody_Gyro_Std_Y
- fBody_Gyro_Std_Z
- fBody_Gyro_MeanFreq_X
- fBody_Gyro_MeanFreq_Y
- fBody_Gyro_MeanFreq_Z
- fBody_AccMag_Mean
- fBody_AccMag_Std
- fBody_AccMag_MeanFreq
- fBody_BodyAccJerkMag_Mean
- fBody_BodyAccJerkMag_Std
- fBody_BodyAccJerkMag_MeanFreq
- fBody_BodyGyroMag_Mean
- fBody_BodyGyroMag_Std
- fBody_BodyGyroMag_MeanFreq
- fBody_BodyGyroJerkMag_Mean
- fBody_BodyGyroJerkMag_Std
- fBody_BodyGyroJerkMag_MeanFreq