<h2>Code Book</h2>

<p>Code book for the clean and tidy data file: "mytidaydata.txt".</p>

<p>
The project page that described the project and the data is located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
<br/>
The original data for the project is in the zip file which can be downloaded from:<br/>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br/><br/>
The original data comes from smartphone accelerometer and gyroscope 3-axial raw signals, which were processed using various signal processing techniques to create a measurement vector consisting of 561 features. From these features, we have extracted the values that were labelled in the "features.txt" file with the words "mean" or "std" in the label. These are the mean and standard deviation values of the mesurements.<br/>
I did not take the values that started with "f", these were not measurements but values calculated by functions applied on the measurements. Because the project required mean of the mean and standard deviation measurement, the function derived values were not included.
</p>
<p>
The columns of the file "mytidaydata.txt" are described as follows.
The columns are listed in order and for readability purposes are separated into groups of 3.
The column name from the file "features.txt" is at the end of each description.
</p>
<p>
The values are all grouped by the Subject and Activity fields.
</p>
<p>
Subject : The ID of the subject (person) from whom the data was collected. There were 30 subjects, numbered from 1 through to 30.
<br/>
Activity_Label : This is the descriptive text of the activity. There are six activity values: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", and "LAYING"<br/>
<br/>
Mean.of.tBodyAcc.mean.X: The calculated mean of the mean of the body velocity acceleration in the X direction (tBodyAcc-mean()-X).
<br/>
Mean.of.tBodyAcc.mean.Y: The calculated mean of the mean of the body velocity acceleration in the Y direction (tBodyAcc-mean()-Y).
<br/>
Mean.of.tBodyAcc.mean.Z: The calculated mean of the mean of the body velocity acceleration  in the Z direction (tBodyAcc-mean()-Z).
<br/>
<br/>
Mean.of.tBodyAcc.std.X: The calculated mean of the standard deviation of the body velocity acceleration in the X direction (tBodyAcc-std()-X).
<br/>
Mean.of.tBodyAcc.std.Y: The calculated mean of the standard deviation of the body velocity acceleration in the Y direction (tBodyAcc-std()-Y).
<br/>
Mean.of.tBodyAcc.std.Z: The calculated mean of the standard deviation of the body velocity acceleration in the Z direction (tBodyAcc-std()-Z).
<br/>
<br/>
Mean.of.tGravityAcc.mean.X: The calculated mean of the mean of the gravity velocity in the X direction (tGravityAcc-mean()-X).
<br/>
Mean.of.tGravityAcc.mean.Y: The calculated mean of the mean of the gravity velocity in the Y direction (tGravityAcc-mean()-Y).
<br/>
Mean.of.tGravityAcc.mean.Z: The calculated mean of the mean of the gravity velocity in the Z direction (tGravityAcc-mean()-Z).
<br/>
<br/>
Mean.of.tGravityAcc.std.X: The calculated mean of the standard deviation of the gravity velocity in the X direction (tGravityAcc-std()-X).
<br/>
Mean.of.tGravityAcc.std.Y: The calculated mean of the standard deviation of the gravity velocity in the Y direction (tGravityAcc-std()-Y).
<br/>
Mean.of.tGravityAcc.std.Z: The calculated mean of the standard deviation of the gravity velocity in the Z direction (tGravityAcc-std()-Z).
<br/>
<br/>
Mean.of.tBodyAccJerk.mean.X: The calculated mean of the mean of the body jerk velocity acceleration in the X direction (tBodyAccJerk-mean()-X).
<br/>
Mean.of.tBodyAccJerk.mean.Y: The calculated mean of the mean of the body jerk velocity acceleration in the X direction (tBodyAccJerk-mean()-Y).
<br/>
Mean.of.tBodyAccJerk.mean.Z: The calculated mean of the mean of the body jerk velocity acceleration in the X direction (tBodyAccJerk-mean()-Z).
<br/>
<br/>
Mean.of.tBodyAccJerk.std.X: The calculated mean of the standard deviation of the body jerk velocity acceleration in the X direction (tBodyAccJerk-std()-X).
<br/>
Mean.of.tBodyAccJerk.std.Y: The calculated mean of the standard deviation of the body jerk velocity acceleration in the X direction (tBodyAccJerk-std()-Y).
<br/>
Mean.of.tBodyAccJerk.std.Z: The calculated mean of the standard deviation of the body jerk velocity acceleration in the X direction (tBodyAccJerk-std()-Z).
<br/>
<br/>
Mean.of.tBodyGyro.mean.X: The calculated mean of the mean of the body gravity reading in the X direction (tBodyGyro-mean()-X).
<br/>
Mean.of.tBodyGyro.mean.Y: The calculated mean of the mean of the body gravity reading in the X direction (tBodyGyro-mean()-Y).
<br/>
Mean.of.tBodyGyro.mean.Z: The calculated mean of the mean of the body gravity reading in the X direction (tBodyGyro-mean()-Z).
<br/>
<br/>
Mean.of.tBodyGyro.std.X: The calculated mean of the standard deviation of the body gravity reading in the X direction (tBodyGyro-std()-X).
<br/>
Mean.of.tBodyGyro.std.Y: The calculated mean of the standard deviation of the body gravity reading in the X direction (tBodyGyro-std()-Y).
<br/>
Mean.of.tBodyGyro.std.Z: The calculated mean of the standard deviation of the body gravity reading in the X direction (tBodyGyro-std()-Z).
<br/>
<br/>
Mean.of.tBodyGyroJerk.mean.X: The calculated mean of the mean of the body jerk reading in the X direction (tBodyGyroJerk-mean()-X).
<br/>
Mean.of.tBodyGyroJerk.mean.Y: The calculated mean of the mean of the body jerk reading in the Y direction (tBodyGyroJerk-mean()-Y).
<br/>
Mean.of.tBodyGyroJerk.mean.Z: The calculated mean of the mean of the body jerk reading in the Z direction (tBodyGyroJerk-mean()-Z).
<br/>
<br/>
Mean.of.tBodyGyroJerk.std.X: The calculated mean of the standard deviation of the body jerk reading in the X direction (tBodyGyroJerk-std()-X).
<br/>
Mean.of.tBodyGyroJerk.std.Y: The calculated mean of the standard deviation of the body jerk reading in the Y direction (tBodyGyroJerk-std()-Y).
<br/>
Mean.of.tBodyGyroJerk.std.Z: The calculated mean of the standard deviation of the body jerk reading in the Z direction (tBodyGyroJerk-std()-Z).
<br/>
<br/>
Mean.of.tBodyAccMag.mean: The calculated mean of the mean of the magnitude of the body acceleration measurement. ( tBodyAccMag-mean() )
<br/>
Mean.of.tBodyAccMag.std: The calculated mean  of the standard deviation of the magnitude of the body acceleration measurement. ( tBodyAccMag-std() )
<br/>
Mean.of.tGravityAccMag.mean: The calculated mean of the mean of the magnitude of the gravity acceleration measurement. ( tGravityAccMag-mean() )
<br/>
Mean.of.tGravityAccMag.std: The calculated mean of the standard deviation of the magnitude of the gravity acceleration measurement. ( tGravityAccMag-std() )
<br/>
Mean.of.tBodyAccJerkMag.mean: The calculated mean of the mean of the magnitude of the body jerk acceleration measurement. ( tGravityAccMag-mean() )
<br/>
Mean.of.tBodyAccJerkMag.std: The calculated mean of the of the magnitude of the body jerk acceleration measurement. ( tBodyAccJerkMag-std() )
<br/>
Mean.of.tBodyGyroMag.mean: The calculated mean of the mean of the magnitude of the body gravity measurement. ( tBodyGyroMag-mean() )
<br/>
Mean.of.tBodyGyroMag.std: The calculated mean of the standard deviation of the magnitude of the body gravity measurement. ( tBodyGyroMag-std() )
<br/>
Mean.of.tBodyGyroJerkMag.mean: The calculated mean of the mean of the magnitude of the body gravity jerk measurement. ( tBodyGyroJerkMag-mean() )
<br/>
Mean.of.tBodyGyroJerkMag.std: The calculated mean of the standard deviation of the body gravity jerk measurement. ( tBodyGyroJerkMag-std() )
</p>