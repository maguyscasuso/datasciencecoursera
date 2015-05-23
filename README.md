#####run_analysis.R

This file describes the transformations done 
on the original data set to generate the 
space delimited by file named _"AverageValues.txt"_ 
generated by the script _run_analysis.R_

####Steps:

1. READ ACTIVITY AND FEATURES 
Read activity code and descriptions. 
Relabel acitivity code and desctiption columns to user friend name (ActivityCode, Activity)
Read features code and descriptions.  
Relabel features code and desctiption columns to user friend name ( FeaturesCode, Features)

2. READ TEST DATA AND PREPARE DATA FRAME
Read test data and and corresponding test activity codes and subject data files
Put subject, test data and related activity code in the same data frame
Relabel subject and acitivity code column to user friendly name
Merge Activity Code descriptions with test data

3. READ TRAIN DATA AND PREPARE DATA FRAME
Read train data and and corresponding train activity codes and subject data files
Put subject, train data and related activity code in the same data frame
Relabel subject and acitivity code column to user friendly name
Merge Activity Code descriptions with train data

4. RELABELING AND SUBSETTING THE DATA FRAMES
Relabel variable (V1 - V561) names to descriptive names for test and train data
Select only columns realted to mean() and std() for test and train data


5. TRANSFORMATIONS
Merge test and train data.
compute the mean for each column grouping by Acitivy and Subject

6. CREATE TEXT FILE 
Create txt file  _"AverageValues.txt"_
First column contains the names of the variables

