#Cook book for "AverageValues.txt"

### This file describes the original data set, transformations, and 
### list of attributes in the space delimited text 
### file named _"AverageValues.txt"_ geerated by the script run_analysis.R

####Original Data Set

 #The features selected for this database come from the accelerometer and 
 #gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
 #These time domain signals (prefix 't' to denote time) were captured 
 #at a constant rate of 50 Hz. Then they were filtered using a median filter 
 #and a 3rd order low pass Butterworth filter with a corner 
 #frequency of 20 Hz to remove noise. Similarly, the acceleration signal 
 #was then separated into body and gravity acceleration signals 
 #(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth 
 #filter with a corner frequency of 0.3 Hz. 
 #Subsequently, the body linear acceleration and angular velocity were 
 #derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
 #Also the magnitude of these three-dimensional signals were calculated using 
 #the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

 #Finally a Fast Fourier Transform (FFT) was applied to some of these signals
 #producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
 #fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

 #These signals were used to estimate variables of the feature vector for each pattern:  
 #'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Two of the set of variables that were estimated from these signals and read from 
the original data set are: 

* mean(): Mean value
* std(): Standard deviation

####Transformations

The averages for the numeric values mean() and std() were computed
for each activity and subject in the original data set.

#### Resulting data set 

 ###### 180 obs. of  69 variables:
 ###### The list of variable and the variable type is listed below.
 
 * Activity                   : Factor w/ 6 levels "WALKING ,  WALKING_DOWNSTAIRS , WALKING_UPSTAIRS, SITTING , STANDING , LAYING "
 * Subject                    : int  Values 1 through 30
 * ActivityCode               : num  Values 1 through 6 corresponding to Activity list above.
 * tBodyAcc-mean()-X          : num  
 * tBodyAcc-mean()-Y          : num  
 * tBodyAcc-mean()-Z          : num  
 * tGravityAcc-mean()-X       : num  
 * tGravityAcc-mean()-Y       : num  
 * tGravityAcc-mean()-Z       : num  
 * tBodyAccJerk-mean()-X      : num  
 * tBodyAccJerk-mean()-Y      : num  
 * tBodyAccJerk-mean()-Z      : num  
 * tBodyGyro-mean()-X         : num  
 * tBodyGyro-mean()-Y         : num  
 * tBodyGyro-mean()-Z         : num  
 * tBodyGyroJerk-mean()-X     : num  
 * tBodyGyroJerk-mean()-Y     : num  
 * tBodyGyroJerk-mean()-Z     : num  
 * tBodyAccMag-mean()         : num  
 * tGravityAccMag-mean()      : num  
 * tBodyAccJerkMag-mean()     : num  
 * tBodyGyroMag-mean()        : num  
 * tBodyGyroJerkMag-mean()    : num  
 * fBodyAcc-mean()-X          : num  
 * fBodyAcc-mean()-Y          : num  
 * fBodyAcc-mean()-Z          : num  
 * fBodyAccJerk-mean()-X      : num  
 * fBodyAccJerk-mean()-Y      : num  
 * fBodyAccJerk-mean()-Z      : num  
 * fBodyGyro-mean()-X         : num  
 * fBodyGyro-mean()-Y         : num  
 * fBodyGyro-mean()-Z         : num  
 * fBodyAccMag-mean()         : num  
 * fBodyBodyAccJerkMag-mean() : num  
 * fBodyBodyGyroMag-mean()    : num  
 * fBodyBodyGyroJerkMag-mean(): num  
 * tBodyAcc-std()-X           : num  
 * tBodyAcc-std()-Y           : num  
 * tBodyAcc-std()-Z           : num  
 * tGravityAcc-std()-X        : num  
 * tGravityAcc-std()-Y        : num  
 * tGravityAcc-std()-Z        : num  
 * tBodyAccJerk-std()-X       : num  
 * tBodyAccJerk-std()-Y       : num  
 * tBodyAccJerk-std()-Z       : num  
 * tBodyGyro-std()-X          : num  
 * tBodyGyro-std()-Y          : num  
 * tBodyGyro-std()-Z          : num  
 * tBodyGyroJerk-std()-X      : num  
 * tBodyGyroJerk-std()-Y      : num  
 * tBodyGyroJerk-std()-Z      : num  
 * tBodyAccMag-std()          : num  
 * tGravityAccMag-std()       : num  
 * tBodyAccJerkMag-std()      : num  
 * tBodyGyroMag-std()         : num  
 * tBodyGyroJerkMag-std()     : num  
 * fBodyAcc-std()-X           : num  
 * fBodyAcc-std()-Y           : num  
 * fBodyAcc-std()-Z           : num  
 * fBodyAccJerk-std()-X       : num  
 * fBodyAccJerk-std()-Y       : num  
 * fBodyAccJerk-std()-Z       : num  
 * fBodyGyro-std()-X          : num  
 * fBodyGyro-std()-Y          : num  
 * fBodyGyro-std()-Z          : num  
 * fBodyAccMag-std()          : num  
 * fBodyBodyAccJerkMag-std()  : num  
 * fBodyBodyGyroMag-std()     : num  
 * fBodyBodyGyroJerkMag-std() : num  