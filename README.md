#run_analysis.R

# Read activity code and descriptions. 
# Relabel acitivity code and desctiption columns to user friend name (ActivityCode, Activity)
# Read features code and descriptions.  
# Relabel features code and desctiption columns to user friend name ( FeaturesCode, Features)

# READ TEST DATA AND PREPARE DATA FRAME
# Read test data and and corresponding test activity codes and subject data files
# Put subject, test data and related activity code in the same data frame
# Relabel subject and acitivity code column to user friendly name
# Merge Activity Code descriptions with test data

# READ TRAIN DATA AND PREPARE DATA FRAME
# Read train data and and corresponding train activity codes and subject data files
# Put subject, train data and related activity code in the same data frame
# Relabel subject and acitivity code column to user friendly name
# Merge Activity Code descriptions with train data

# RELABELING AND SUBSETTING THE DATA FRAME
# Relabel variable (V1 - V561) names to descriptive names for test and train data
# Select only columns realted to mean() and std() for test and train data


#Merge test and train data.
#compute the mean for each column grouping by Acitivy and Subject
#Create txt file
