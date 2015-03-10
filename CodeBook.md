<h2>Code Book</h2>

<p>The data dictionary for the file "mytidaydata.txt" is as follows</p>

<p>The columns of the file "mytidaydata.txt" are described as follows.
The columns are listed in order and for readability purposes are separated into groups of 3.
The column name from "features.txt" is at the end of each description.</p>

<p>
The project page that described the project and the data is located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
<br/>
The original data for the project is in the zip file which can be downloaded from:<br/>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br/><br/>
There original data comes from smartphone accelerometer and gyroscope 3-axial raw signals, which were processed using various signal processing techniques to create a measurement vector consisting of 561 features. From these features, we have extracted the values that were labelled in the "features.txt" file with the words "mean" or "std" in the label. These are the mean and standard deviation values of the mesurements.<br/>
I did not take the values that started with "f", these were not measurements but values calculated by functions applied on the measurements. Because the project required mean of the mean and standard deviation measurement, the function derived values were not included.
</p>

Subject : The ID of the subject (person) from whom the data was collected. THere were 30 subjects, numbered 1 to 30.
<br/>
Activity_Label : This is the descriptive text of the activity. There are six values, including "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", and "LAYING"<br/>
<br/>
Body_Acceleration_Mean_X: The calculated mean, grouped by (Activity,Subject), of the mean of the body velocity acceleration in the X direction (tBodyAcc-mean()-X).
<br/>
Body_Acceleration_Mean_Y: The calculated mean, grouped by (Activity,Subject), of the mean of the body velocity acceleration in the Y direction (tBodyAcc-mean()-Y).
<br/>
Body_Acceleration_Mean_Z: The calculated mean, grouped by (Activity,Subject), of the mean of the body velocity acceleration  in the Z direction (tBodyAcc-mean()-Z).
<br/><br/>
Body_Acceleration_StdDev_X: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body velocity acceleration in the X direction (tBodyAcc-std()-X).
<br/>
Body_Acceleration_StdDev_Y: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body velocity acceleration in the Y direction (tBodyAcc-std()-Y).
<br/>
Body_Acceleration_StdDev_Z: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body velocity acceleration in the Z direction (tBodyAcc-std()-Z).
<br/>
<br/>
Gravity_Acceleration_Mean_X: The calculated mean, grouped by (Activity,Subject), of the mean of the gravity velocity in the X direction (tGravityAcc-mean()-X).
<br/>
Gravity_Acceleration_Mean_Y: The calculated mean, grouped by (Activity,Subject), of the mean of the gravity velocity in the Y direction (tGravityAcc-mean()-Y).
<br/>
Gravity_Acceleration_Mean_Z: The calculated mean, grouped by (Activity,Subject), of the mean of the gravity velocity in the Z direction (tGravityAcc-mean()-Z).
<br/>
<br/>
Gravity_Acceleration_StdDev_X: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the gravity velocity in the X direction (tGravityAcc-std()-X).
<br/>
Gravity_Acceleration_StdDev_Y: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the gravity velocity in the Y direction (tGravityAcc-std()-Y).
<br/>
Gravity_Acceleration_StdDev_Z: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the gravity velocity in the Z direction (tGravityAcc-std()-Z).
<br/>
<br/>
Body_Acceleration_Jerk_Mean_X: The calculated mean, grouped by (Activity,Subject), of the mean of the body jerk velocity acceleration in the X direction (tBodyAccJerk-mean()-X).
<br/>
Body_Acceleration_Jerk_Mean_Y: The calculated mean, grouped by (Activity,Subject), of the mean of the body jerk velocity acceleration in the X direction (tBodyAccJerk-mean()-Y).
<br/>
Body_Acceleration_Jerk_Mean_Z: The calculated mean, grouped by (Activity,Subject), of the mean of the body jerk velocity acceleration in the X direction (tBodyAccJerk-mean()-Z).
<br/>
<br/>
Body_Acceleration_Jerk_StdDev_X: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body jerk velocity acceleration in the X direction (tBodyAccJerk-std()-X).
<br/>
Body_Acceleration_Jerk_StdDev_Y: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body jerk velocity acceleration in the X direction (tBodyAccJerk-std()-Y).
<br/>
Body_Acceleration_Jerk_StdDev_Z: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body jerk velocity acceleration in the X direction (tBodyAccJerk-std()-Z).
<br/>
<br/>
Body_Gravity_Mean_X: The calculated mean, grouped by (Activity,Subject), of the mean of the body gravity reading in the X direction (tBodyGyro-mean()-X).
<br/>
Body_Gravity_Mean_Y: The calculated mean, grouped by (Activity,Subject), of the mean of the body gravity reading in the X direction (tBodyGyro-mean()-Y).
<br/>
Body_Gravity_Mean_Z: The calculated mean, grouped by (Activity,Subject), of the mean of the body gravity reading in the X direction (tBodyGyro-mean()-Z).
<br/>
<br/>
Body_Gravity_StdDev_X: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body gravity reading in the X direction (tBodyGyro-std()-X).
<br/>
Body_Gravity_StdDev_Y: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body gravity reading in the X direction (tBodyGyro-std()-Y).
<br/>
Body_Gravity_StdDev_Z: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body gravity reading in the X direction (tBodyGyro-std()-Z).
<br/>
<br/>
Body_Gravity_Jerk_MeanX: The calculated mean, grouped by (Activity,Subject), of the mean of the body gravity jerk reading in the X direction (tBodyAccJerk-mean()-X).
<br/>
Body_Gravity_Jerk_Mean_Y: The calculated mean, grouped by (Activity,Subject), of the mean of the body gravity jerk reading in the Y direction (tBodyAccJerk-mean()-Y).
<br/>
Body_Gravity_Jerk_Mean_Z: The calculated mean, grouped by (Activity,Subject), of the mean of the body gravity jerk reading in the Z direction (tBodyAccJerk-mean()-Z).
<br/>
<br/>
Body_Gravity_Jerk_StdDev_X: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body gravity jerk reading in the X direction (tBodyGyroJerk-std()-X).
<br/>
Body_Gravity_Jerk_StdDev_Y: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body gravity jerk reading in the Y direction (tBodyGyroJerk-std()-Y).
<br/>
Body_Gravity_Jerk_StdDev_Z: The calculated mean, grouped by (Activity,Subject), of the standard deviation of the body gravity jerk reading in the Z direction (tBodyGyroJerk-std()-Z).
<br/>