## This CodeBook describes the variables, the data and transformations performed
### The variables used and the data
The data set was obtained from the given link on the course project webpage whose original source is reference [1]. The interpretation of variables is the following:
* **subject**: person's ID (who carried out the experiment) form 1 to 30
* **activity**: there are 6 activity types (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)
* **x, y and z**: 3D signals along x, y or z cartesian directions
* **t** (first letter in the variable names): time domain signals
* **acc**: accelerometer signals
* **gyro**: gyroscope signals
* **bodyacc and gravityacc**: acceleration signal was separated into body and gravity signals
* **bodyaccjerk and bodygyrojerk**: jerk signals are derived from body acceleration and angular velocity
* **mag**: magnitudes are calculated from 3D signal vectors
* **angle**: angle between two vectors
* **f** (first letter in the variable names): frequency domain signals derived from time signals after performing first fourier transformations
* **mean**: average value of the given signal
* **std**: standard deviation of the given signal

Below are the names of the variable used in the tidy data set:

| name of variables                 |
|-----------------------------------|
| subject                           |
| activity                          |
| tbodyaccmeanx                     |
| tbodyaccmeany                     |
| tbodyaccmeanz                     |
| tbodyaccstdx                      |
| tbodyaccstdy                      |
| tbodyaccstdz                      |
| tgravityaccmeanx                  |
| tgravityaccmeany                  |
| tgravityaccmeanz                  |
| tgravityaccstdx                   |
| tgravityaccstdy                   |
| tgravityaccstdz                   |
| tbodyaccjerkmeanx                 |
| tbodyaccjerkmeany                 |
| tbodyaccjerkmeanz                 |
| tbodyaccjerkstdx                  |
| tbodyaccjerkstdy                  |
| tbodyaccjerkstdz                  |
| tbodygyromeanx                    |
| tbodygyromeany                    |
| tbodygyromeanz                    |
| tbodygyrostdx                     |
| tbodygyrostdy                     |
| tbodygyrostdz                     |
| tbodygyrojerkmeanx                |
| tbodygyrojerkmeany                |
| tbodygyrojerkmeanz                |
| tbodygyrojerkstdx                 |
| tbodygyrojerkstdy                 |
| tbodygyrojerkstdz                 |
| tbodyaccmagmean                   |
| tbodyaccmagstd                    |
| tgravityaccmagmean                |
| tgravityaccmagstd                 |
| tbodyaccjerkmagmean               |
| tbodyaccjerkmagstd                |
| tbodygyromagmean                  |
| tbodygyromagstd                   |
| tbodygyrojerkmagmean              |
| tbodygyrojerkmagstd               |
| fbodyaccmeanx                     |
| fbodyaccmeany                     |
| fbodyaccmeanz                     |
| fbodyaccstdx                      |
| fbodyaccstdy                      |
| fbodyaccstdz                      |
| fbodyaccmeanfreqx                 |
| fbodyaccmeanfreqy                 |
| fbodyaccmeanfreqz                 |
| fbodyaccjerkmeanx                 |
| fbodyaccjerkmeany                 |
| fbodyaccjerkmeanz                 |
| fbodyaccjerkstdx                  |
| fbodyaccjerkstdy                  |
| fbodyaccjerkstdz                  |
| fbodyaccjerkmeanfreqx             |
| fbodyaccjerkmeanfreqy             |
| fbodyaccjerkmeanfreqz             |
| fbodygyromeanx                    |
| fbodygyromeany                    |
| fbodygyromeanz                    |
| fbodygyrostdx                     |
| fbodygyrostdy                     |
| fbodygyrostdz                     |
| fbodygyromeanfreqx                |
| fbodygyromeanfreqy                |
| fbodygyromeanfreqz                |
| fbodyaccmagmean                   |
| fbodyaccmagstd                    |
| fbodyaccmagmeanfreq               |
| fbodybodyaccjerkmagmean           |
| fbodybodyaccjerkmagstd            |
| fbodybodyaccjerkmagmeanfreq       |
| fbodybodygyromagmean              |
| fbodybodygyromagstd               |
| fbodybodygyromagmeanfreq          |
| fbodybodygyrojerkmagmean          |
| fbodybodygyrojerkmagstd           |
| fbodybodygyrojerkmagmeanfreq      |
| angletbodyaccmeangravity          |
| angletbodyaccjerkmeangravitymean  |
| angletbodygyromeangravitymean     |
| angletbodygyrojerkmeangravitymean |
| anglexgravitymean                 |
| angleygravitymean                 |
| anglezgravitymean                 |

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