## This CodeBook describes the variables, the data and transformations performed
### The variables used and the data
The data set was obtained from the given link on the course project webpage whose original source is reference [1]. The interpretation of variables is the following:
* **Subject**: person's ID (who carried out the experiment) form 1 to 30
* **Activity**: there are 6 activity types (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)
* **X, Y and Z**: 3D signals along x, y or z cartesian directions
* **t** (first letter in the variable names): time domain signals
* **Acc**: accelerometer signals
* **Gyro**: gyroscope signals
* **BodyAcc and GravityAcc**: acceleration signal was separated into body and gravity signals
* **BodyAccJerk and BodyGyroJerk**: jerk signals are derived from body acceleration and angular velocity
* **Mag**: magnitudes are calculated from 3D signal vectors
* **f** (first letter in the variable names): frequency domain signals derived from time signals after performing first fourier transformations
* **mean**: average value of the given signal
* **std**: standard deviation of the given signal

Below are the names of the variable used in the tidy data set:

| Name of Variables            |
|------------------------------|
| Subject                      |
| Activity                     |
| tBodyAccmeanX                |
| tBodyAccmeanY                |
| tBodyAccmeanZ                |
| tBodyAccstdX                 |
| tBodyAccstdY                 |
| tBodyAccstdZ                 |
| tGravityAccmeanX             |
| tGravityAccmeanY             |
| tGravityAccmeanZ             |
| tGravityAccstdX              |
| tGravityAccstdY              |
| tGravityAccstdZ              |
| tBodyAccJerkmeanX            |
| tBodyAccJerkmeanY            |
| tBodyAccJerkmeanZ            |
| tBodyAccJerkstdX             |
| tBodyAccJerkstdY             |
| tBodyAccJerkstdZ             |
| tBodyGyromeanX               |
| tBodyGyromeanY               |
| tBodyGyromeanZ               |
| tBodyGyrostdX                |
| tBodyGyrostdY                |
| tBodyGyrostdZ                |
| tBodyGyroJerkmeanX           |
| tBodyGyroJerkmeanY           |
| tBodyGyroJerkmeanZ           |
| tBodyGyroJerkstdX            |
| tBodyGyroJerkstdY            |
| tBodyGyroJerkstdZ            |
| tBodyAccMagmean              |
| tBodyAccMagstd               |
| tGravityAccMagmean           |
| tGravityAccMagstd            |
| tBodyAccJerkMagmean          |
| tBodyAccJerkMagstd           |
| tBodyGyroMagmean             |
| tBodyGyroMagstd              |
| tBodyGyroJerkMagmean         |
| tBodyGyroJerkMagstd          |
| fBodyAccmeanX                |
| fBodyAccmeanY                |
| fBodyAccmeanZ                |
| fBodyAccstdX                 |
| fBodyAccstdY                 |
| fBodyAccstdZ                 |
| fBodyAccmeanFreqX            |
| fBodyAccmeanFreqY            |
| fBodyAccmeanFreqZ            |
| fBodyAccJerkmeanX            |
| fBodyAccJerkmeanY            |
| fBodyAccJerkmeanZ            |
| fBodyAccJerkstdX             |
| fBodyAccJerkstdY             |
| fBodyAccJerkstdZ             |
| fBodyAccJerkmeanFreqX        |
| fBodyAccJerkmeanFreqY        |
| fBodyAccJerkmeanFreqZ        |
| fBodyGyromeanX               |
| fBodyGyromeanY               |
| fBodyGyromeanZ               |
| fBodyGyrostdX                |
| fBodyGyrostdY                |
| fBodyGyrostdZ                |
| fBodyGyromeanFreqX           |
| fBodyGyromeanFreqY           |
| fBodyGyromeanFreqZ           |
| fBodyAccMagmean              |
| fBodyAccMagstd               |
| fBodyAccMagmeanFreq          |
| fBodyBodyAccJerkMagmean      |
| fBodyBodyAccJerkMagstd       |
| fBodyBodyAccJerkMagmeanFreq  |
| fBodyBodyGyroMagmean         |
| fBodyBodyGyroMagstd          |
| fBodyBodyGyroMagmeanFreq     |
| fBodyBodyGyroJerkMagmean     |
| fBodyBodyGyroJerkMagstd      |
| fBodyBodyGyroJerkMagmeanFreq |

### The transformations
According the project instructions, I performed the following transformations:

* training and test sets are merged together
* extract only mean and SD features 
* give good feature names
* give descriptive activity names to name the activities
* compute the feature averages grouped by subject and activity

The run_analysis.R script is inline commented carefully to indicate which parts of the code are responsible for which transformations. The final data set (with dimensions 180 X 81) lists averages grouped by subject and activity across the data set. 

Reference:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012