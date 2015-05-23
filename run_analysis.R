#run_analysis.R

#This scripts read data collected from the accelerometers 
#from the Samsung Galaxy S smartphone and 
#creates a space delimited text file named "AverageValues.txt"
#with the averages for he mean() and std()values
#from original  data set.
#See the Cookbook.md file for details on the variables
#genrated in the text file.

##########################
#  Read activity code and descriptions
#  Relabel acitivity code and desctiption columns to user friend name
#######################
activity <- read.table ("activity_labels.txt")
names(activity)[1] <- "ActivityCode"
names(activity)[2] <- "Activity"

##########################
#  Read features code and descriptions
#  Relabel features code and desctiption columns to user friend name
#######################
features <- read.table("features.txt")
names(features)[1] <- "FeaturesCode"
names(features)[2] <- "Features"

##########################
#  Read test data and and corresponding test activity codes
#  Put test data and related activity code in the same data frame
#  Relabel acitivity code column to user friend name
#######################
testd <- read.table("test/x_test.txt")
testl <- read.table("test/y_test.txt")
tests <- read.table("test/subject_test.txt")
test <- cbind (tests, testl, testd)
names(test)[1] <- "Subject"
names(test)[2] <- "ActivityCode"

#merge Activity Code descriptions with test data
testnew <- merge(activity, test, by.x ="ActivityCode", by.y="ActivityCode")



##########################
#  Read training data and and corresponding training activity codes
#  Put training data and related activity code in the same data frame
#  Relabel acitivity code column to user friend name
#######################
traind <- read.table("train/x_train.txt")
trainl <- read.table("train/y_train.txt")
trains <- read.table("train/subject_train.txt")
train <- cbind (trains,trainl, traind)
names(train)[1] <- "Subject"
names(train)[2] <- "ActivityCode"

#merge Activity Code descriptions with train data
trainnew <- merge(activity, train, by.x ="ActivityCode", by.y="ActivityCode")

# relabel variable names to descriptive names
for (i in 1:561) {
      
      ColName <- as.character(features[i,2])
      col <- i + 3
      names(testnew)[col] <- ColName
      names(trainnew)[col] <- ColName
}

#Select only columns realted to mean() and std()
m <- grep(c("mean()"), names(testnew), fixed=TRUE)
s <- grep(c("std()"), names(testnew), fixed=TRUE)
finalTest <-  testnew[, c(1:3 ,m, s)]


m <- grep(c("mean()"), names(trainnew), fixed=TRUE)
s <- grep(c("std()"), names(trainnew), fixed=TRUE)
finalTrain <-  trainnew[, c(1:3 ,m, s)]

#Merge test and train data.
FullData <- join  (finalTest, finalTrain, by="Subject", type="full")

#compute the mean for each column grouping by Acitivy and Subject
t <- ddply(FullData, .(Activity, Subject), numcolwise(mean))

#Create txt file
write.table(t, "AverageValues.txt", row.names = FALSE)

