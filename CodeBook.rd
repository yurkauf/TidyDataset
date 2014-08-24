\name{tidySet}
\alias{tidySet}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(finalSet)}
\format{
  A data frame with 40 observations on the following 88 variables.
  \describe{
    \item{\code{Group1-SubjectID}}{a numeric vector} - Grouping column, identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
    \item{\code{Group2-ActivityName}} - Grouping column, identifies the Activity
          {a factor with levels \code{LAYING} \code{SITTING} \code{STANDING} \code{WALKING} \code{WALKING_DOWNSTAIRS} \code{WALKING_UPSTAIRS}}
    \item{\code{tBodyAcc.mean...X}}{a numeric vector} 
    \item{\code{tBodyAcc.mean...Y}}{a numeric vector}
    \item{\code{tBodyAcc.mean...Z}}{a numeric vector}
    \item{\code{tBodyAcc.std...X}}{a numeric vector}
    \item{\code{tBodyAcc.std...Y}}{a numeric vector}
    \item{\code{tBodyAcc.std...Z}}{a numeric vector}
    \item{\code{tGravityAcc.mean...X}}{a numeric vector}
    \item{\code{tGravityAcc.mean...Y}}{a numeric vector}
    \item{\code{tGravityAcc.mean...Z}}{a numeric vector}
    \item{\code{tGravityAcc.std...X}}{a numeric vector}
    \item{\code{tGravityAcc.std...Y}}{a numeric vector}
    \item{\code{tGravityAcc.std...Z}}{a numeric vector}
    \item{\code{tBodyAccJerk.mean...X}}{a numeric vector}
    \item{\code{tBodyAccJerk.mean...Y}}{a numeric vector}
    \item{\code{tBodyAccJerk.mean...Z}}{a numeric vector}
    \item{\code{tBodyAccJerk.std...X}}{a numeric vector}
    \item{\code{tBodyAccJerk.std...Y}}{a numeric vector}
    \item{\code{tBodyAccJerk.std...Z}}{a numeric vector}
    \item{\code{tBodyGyro.mean...X}}{a numeric vector}
    \item{\code{tBodyGyro.mean...Y}}{a numeric vector}
    \item{\code{tBodyGyro.mean...Z}}{a numeric vector}
    \item{\code{tBodyGyro.std...X}}{a numeric vector}
    \item{\code{tBodyGyro.std...Y}}{a numeric vector}
    \item{\code{tBodyGyro.std...Z}}{a numeric vector}
    \item{\code{tBodyGyroJerk.mean...X}}{a numeric vector}
    \item{\code{tBodyGyroJerk.mean...Y}}{a numeric vector}
    \item{\code{tBodyGyroJerk.mean...Z}}{a numeric vector}
    \item{\code{tBodyGyroJerk.std...X}}{a numeric vector}
    \item{\code{tBodyGyroJerk.std...Y}}{a numeric vector}
    \item{\code{tBodyGyroJerk.std...Z}}{a numeric vector}
    \item{\code{tBodyAccMag.mean..}}{a numeric vector}
    \item{\code{tBodyAccMag.std..}}{a numeric vector}
    \item{\code{tGravityAccMag.mean..}}{a numeric vector}
    \item{\code{tGravityAccMag.std..}}{a numeric vector}
    \item{\code{tBodyAccJerkMag.mean..}}{a numeric vector}
    \item{\code{tBodyAccJerkMag.std..}}{a numeric vector}
    \item{\code{tBodyGyroMag.mean..}}{a numeric vector}
    \item{\code{tBodyGyroMag.std..}}{a numeric vector}
    \item{\code{tBodyGyroJerkMag.mean..}}{a numeric vector}
    \item{\code{tBodyGyroJerkMag.std..}}{a numeric vector}
    \item{\code{fBodyAcc.mean...X}}{a numeric vector}
    \item{\code{fBodyAcc.mean...Y}}{a numeric vector}
    \item{\code{fBodyAcc.mean...Z}}{a numeric vector}
    \item{\code{fBodyAcc.std...X}}{a numeric vector}
    \item{\code{fBodyAcc.std...Y}}{a numeric vector}
    \item{\code{fBodyAcc.std...Z}}{a numeric vector}
    \item{\code{fBodyAcc.meanFreq...X}}{a numeric vector}
    \item{\code{fBodyAcc.meanFreq...Y}}{a numeric vector}
    \item{\code{fBodyAcc.meanFreq...Z}}{a numeric vector}
    \item{\code{fBodyAccJerk.mean...X}}{a numeric vector}
    \item{\code{fBodyAccJerk.mean...Y}}{a numeric vector}
    \item{\code{fBodyAccJerk.mean...Z}}{a numeric vector}
    \item{\code{fBodyAccJerk.std...X}}{a numeric vector}
    \item{\code{fBodyAccJerk.std...Y}}{a numeric vector}
    \item{\code{fBodyAccJerk.std...Z}}{a numeric vector}
    \item{\code{fBodyAccJerk.meanFreq...X}}{a numeric vector}
    \item{\code{fBodyAccJerk.meanFreq...Y}}{a numeric vector}
    \item{\code{fBodyAccJerk.meanFreq...Z}}{a numeric vector}
    \item{\code{fBodyGyro.mean...X}}{a numeric vector}
    \item{\code{fBodyGyro.mean...Y}}{a numeric vector}
    \item{\code{fBodyGyro.mean...Z}}{a numeric vector}
    \item{\code{fBodyGyro.std...X}}{a numeric vector}
    \item{\code{fBodyGyro.std...Y}}{a numeric vector}
    \item{\code{fBodyGyro.std...Z}}{a numeric vector}
    \item{\code{fBodyGyro.meanFreq...X}}{a numeric vector}
    \item{\code{fBodyGyro.meanFreq...Y}}{a numeric vector}
    \item{\code{fBodyGyro.meanFreq...Z}}{a numeric vector}
    \item{\code{fBodyAccMag.mean..}}{a numeric vector}
    \item{\code{fBodyAccMag.std..}}{a numeric vector}
    \item{\code{fBodyAccMag.meanFreq..}}{a numeric vector}
    \item{\code{fBodyBodyAccJerkMag.mean..}}{a numeric vector}
    \item{\code{fBodyBodyAccJerkMag.std..}}{a numeric vector}
    \item{\code{fBodyBodyAccJerkMag.meanFreq..}}{a numeric vector}
    \item{\code{fBodyBodyGyroMag.mean..}}{a numeric vector}
    \item{\code{fBodyBodyGyroMag.std..}}{a numeric vector}
    \item{\code{fBodyBodyGyroMag.meanFreq..}}{a numeric vector}
    \item{\code{fBodyBodyGyroJerkMag.mean..}}{a numeric vector}
    \item{\code{fBodyBodyGyroJerkMag.std..}}{a numeric vector}
    \item{\code{fBodyBodyGyroJerkMag.meanFreq..}}{a numeric vector}
    \item{\code{angle.tBodyAccMean.gravity.}}{a numeric vector}
    \item{\code{angle.tBodyAccJerkMean..gravityMean.}}{a numeric vector}
    \item{\code{angle.tBodyGyroMean.gravityMean.}}{a numeric vector}
    \item{\code{angle.tBodyGyroJerkMean.gravityMean.}}{a numeric vector}
    \item{\code{angle.X.gravityMean.}}{a numeric vector}
    \item{\code{angle.Y.gravityMean.}}{a numeric vector}
    \item{\code{angle.Z.gravityMean.}}{a numeric vector}
  }
}
\details{
    ## The numeric variables in the tidy dataset contains average values of the measurement coming from the accelerometer and 
    ## gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
    ## '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
    ## mean in the name of the variable means Mean value
    ## std  in the name of the variable means Standard deviation
    ## All the numeric variables in the tidy dataset contain average values of the original variables with the same names coming 
    ## from the original data sets. The average values were calculated in the groups based on the Subject ID and Activity name. 
    ## The tidy datased was created from the original datasets by performing the following steps:  
    ##      - Assigned the variable names from features dataset to each column of the original datasets (Train and Test) during data set 
    ##        load step
    ##      - Subset the Train and Test datasets y leaving only the variables containing mean value or std (Standard deviation)
    ##      - Merged Train and Test data sets with the appropriate datasets containing Subject ID and Activity ID for each row
    ##      - Merged Train and Test data sets into one combined data set
    ##      - Created new data set by calculating average values for all variables in the groups by Subject ID and Activity
    ##      - Sorted final data set by Subject ID and Activity  
         

   
}
\source{
%%  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(tidySet)

}
\keyword{datasets}
