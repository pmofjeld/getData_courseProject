Code Book
=====================

## Variables:

* subject: a number denoting which subject is being measured.
* activity: what activity is being performed by the subject.

**note:** The rest of the variables are means calculated from variable in the original dataset for each subject and each activity. Data was normalized and bounded within [-1,1]; so be aware, these variables have no units.

* tBodyAcc.mean.X/Y/Z: mean acceleration in the X, Y, and Z directions, respectively (three distinct variables).
* tBodyAcc.std.X/Y/Z: standard deviation of acceleration in the X, Y, and Z directions.

* tBodyAccMag.mean: mean magnitude of acceleration.
* tBodyAccMag.std: standard deviation of acceleration.

* tBodyAccJerk.mean.X/Y/Z: mean jerk in acceleration in the X, Y, and Z directions.
* tBodyAccJerk.std.X/Y/Z: standard deviation of jerk in acceleration in the X, Y, and Z directions.

* tBodyAccJerkMag.mean: mean magnitude of jerk in acceleration.
* tBodyAccJerkMag.std: standard deviation of jerk in acceleration.

* tGravityAcc.mean.X/Y/Z: mean acceleration due to gravity in the X, Y, and Z directions.
* tGravityAcc.std.X/Y/Z: standard deviation of acceleration due to gravity in the X, Y, and Z directions.

* tGravityAccMag.mean: mean magnitude of acceleration due to gravity.
* tGravityAccMag.std: standard deviation of acceleration due to gravity.

* tBodyGyro.mean.X/Y/Z: mean velocity (as measured by gyroscope) in the X, Y, and Z directions.
* tBodyGyro.std.X/Y/Z: standard deviation of velocity in the X, Y, and Z directions.

* tBodyGyroMag.mean: mean magnitude of velocity (speed).
* tBodyGyroMag.std: standard deviation of velocity.

* tBodyGyroJerk.mean.X/Y/Z: mean jerk in velocity in the X, Y, and Z directions.
* tBodyGyroJerk.std.X/Y/Z: standard deviation of jerk in velocity in the X, Y, and Z directions.

* tBodyGyroJerkMag.mean: mean magnitude of jerk in velocity.
* tBodyGyroJerkMag.std: standard deviation of jerk in velocity.

There is also another variable corresponding to each of those in the above list which begin with an "f" rather than a "t" (i.e. fBodyAcc.mean.X/Y/Z). The author does not know what these letters are meant to indicate.

