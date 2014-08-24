run_analysis <- function()
{
 ## Creating tidy data set
 ## Reading names of the variables
 features <- read.delim("features.txt", header=FALSE, sep="")
 ##Reading Activity names
 activityLabels <- read.delim("activity_labels.txt", header=FALSE, sep="", col.names = c("ActivityID", "ActivityName"))
 ##Reading Train dataset with assigning variable names from features data set
 xTrain <- read.delim("train/X_train.txt", header=FALSE, sep="", col.names = features[,2])
 ##Reading Train Activityt IDs
 yTrain <- read.delim("train/Y_train.txt", header=FALSE, sep="", col.names = c("ActivityID"))
 ##Reading Train Subject IDs
 xTrain_Subj <- read.delim("train/subject_train.txt", header=FALSE, sep="", col.names = c("SubjectID"))
  ##Reading Test dataset with assigning variable names from features data set
 xTest <- read.delim("test/X_test.txt", header=FALSE, sep="", col.names = features[,2])
  ##Reading Test Activityt IDs
 yTest <- read.delim("test/Y_test.txt", header=FALSE, sep="", col.names = c("ActivityID"))
  ##Reading Test Subject IDs
 xTest_Subj <- read.delim("test/subject_test.txt", header=FALSE, sep="", col.names = c("SubjectID"))

 ## Subsetting  Test and Train data sets by leaving only the variables having "M/mean" or "S/std" in the name
 ## using regular expression 
 lNames <- names(xTest)
 xTest <- xTest[lNames[grep("[Mm]ean|[Ss]td", lNames)]]
 lNames <- names(xTrain)
 xTrain <- xTrain[lNames[grep("[Mm]ean|[Ss]td", lNames)]]
 
 ##merging Activity names with Activity IDs
 yTest <- merge(yTest, activityLabels)
 yTrain <- merge(yTrain, activityLabels)

 ##Adding sequentual number to each data set. 
 
##Train numbers start after last sequentual number in the Test data set
 yTest["Seq"] <- seq(along=yTest[,1])
 yTrain["Seq"] <- length(yTest[,1]) + seq(along=yTrain[,1])
 xTest["Seq"] <- seq(along=xTest[,1])
 xTrain["Seq"] <- length(yTest[,1]) + seq(along=xTrain[,1])
 xTest_Subj["Seq"] <- seq(along=xTest_Subj[,1])
 xTrain_Subj["Seq"] <- length(yTest[,1]) + seq(along=xTrain_Subj[,1])
 ##Merging Test with Test Activity
 xTest <- merge(yTest, xTest, by.Seq="Seq")
 ##Merging Test with Test Subject ID
 xTest <- merge(xTest_Subj, xTest, by.Seq="Seq")
 ##Merging Train with Train Activity
 xTrain <- merge(yTrain, xTrain, , by.Seq="Seq")
 ##Merging Train with Train Subject ID
 xTrain <- merge(xTrain_Subj, xTrain, by.Seq="Seq")
 ##Merging Train and Test datasets
 allSets <- merge(xTest, xTrain, by.Seq="Seq", all=TRUE)
##calculating Mean value in the groups by Subject ID and Activity Name
aggSet <- aggregate(allSets[grep("[Mm]ean|[Ss]td", names(xTest))], by = list(allSets$SubjectID, allSets$ActivityName), FUN=mean, na.rm = TRUE) 
##Renaming grouping columns
names(aggSet)[names(aggSet)=="Group.1"] <-"Group1-SubjectID"
names(aggSet)[names(aggSet)=="Group.2"] <-"Group2-ActivityName"
##Sorting final dataset
tidySet<-aggSet[order(aggSet[,1], aggSet[,2]),]
##Saving tidy dataset into the file
write.table(tidySet, file="TidySet.txt", row.names=FALSE)
##Created CodeBook.rd using prompt command
##prompt(tidySet)
}