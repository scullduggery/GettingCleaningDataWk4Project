# Code book for Coursera *Getting and Cleaning Data* course project

The data set that this code book refers to is located in the `TidyData.txt` file of this repository.

See the `ReadMe.md` file of this repository for background information on this data set.

The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.

## Data <a name="data"></a>

The `TidyData.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

## Variables <a name="variables"></a>

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `TimeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by `FrequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometer-Mean-X`
	- `TimeDomainBodyAccelerometer-Mean-Y`
	- `TimeDomainBodyAccelerometer-Mean-Z`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometer-StandardDeviation-X`
	- `TimeDomainBodyAccelerometer-StandardDeviation-Y`
	- `TimeDomainBodyAccelerometer-StandardDeviation-Z`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `TimeDomainGravityAccelerometer-Mean-X`
	- `TimeDomainGravityAccelerometer-Mean-Y`
	- `TimeDomainGravityAccelerometer-Mean-Z`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `TimeDomainGravityAccelerometer-StandardDeviation-X`
	- `TimeDomainGravityAccelerometer-StandardDeviation-Y`
	- `TimeDomainGravityAccelerometer-StandardDeviation-Z`

- Average time-domain body acceleration jerk in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometerJerk-Mean-X`
	- `TimeDomainBodyAccelerometerJerk-Mean-Y`
	- `TimeDomainBodyAccelerometerJerk-Mean-Z`

- Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometerJerk-StandardDeviation-X`
	- `TimeDomainBodyAccelerometerJerk-StandardDeviation-Y`
	- `TimeDomainBodyAccelerometerJerk-StandardDeviation-Z`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `TimeDomainBodyGyroscope-Mean-X`
	- `TimeDomainBodyGyroscope-Mean-Y`
	- `TimeDomainBodyGyroscope-Mean-Z`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `TimeDomainBodyGyroscope-StandardDeviation-X`
	- `TimeDomainBodyGyroscope-StandardDeviation-Y`
	- `TimeDomainBodyGyroscope-StandardDeviation-Z`

- Average time-domain body angular velocity jerk in the X, Y and Z directions:

	- `TimeDomainBodyGyroscopeJerk-Mean-X`
	- `TimeDomainBodyGyroscopeJerk-Mean-Y`
	- `TimeDomainBodyGyroscopeJerk-Mean-Z`

- Standard deviation of the time-domain body angular velocity jerk in the X, Y and Z directions:

	- `TimeDomainBodyGyroscopeJerk-StandardDeviation-X`
	- `TimeDomainBodyGyroscopeJerk-StandardDeviation-Y`
	- `TimeDomainBodyGyroscopeJerk-StandardDeviation-Z`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `TimeDomainBodyAccelerometerMagnitude-Mean`
	- `TimeDomainBodyAccelerometerMagnitude-StandardDeviation`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `TimeDomainGravityAccelerometerMagnitude-Mean`
	- `TimeDomainGravityAccelerometerMagnitude-StandardDeviation`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk:

	- `TimeDomainBodyAccelerometerJerkMagnitude-Mean`
	- `TimeDomainBodyAccelerometerJerkMagnitude-StandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `TimeDomainBodyGyroscopeMagnitude-Mean`
	- `TimeDomainBodyGyroscopeMagnitude-StandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk:

	- `TimeDomainBodyGyroscopeJerkMagnitude-Mean`
	- `TimeDomainBodyGyroscopeJerkMagnitude-StandardDeviation`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `FrequencyDomainBodyAccelerometer-Mean-X`
	- `FrequencyDomainBodyAccelerometer-Mean-Y`
	- `FrequencyDomainBodyAccelerometer-Mean-Z`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `FrequencyDomainBodyAccelerometer-StandardDeviation-X`
	- `FrequencyDomainBodyAccelerometer-StandardDeviation-Y`
	- `FrequencyDomainBodyAccelerometer-StandardDeviation-Z`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `FrequencyDomainBodyAccelerometer-MeanFrequency-X`
	- `FrequencyDomainBodyAccelerometer-MeanFrequency-Y`
	- `FrequencyDomainBodyAccelerometer-MeanFrequency-Z`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `FrequencyDomainBodyAccelerometerJerk-Mean-X`
	- `FrequencyDomainBodyAccelerometerJerk-Mean-Y`
	- `FrequencyDomainBodyAccelerometerJerk-Mean-Z`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `FrequencyDomainBodyAccelerometerJerk-StandardDeviation-X`
	- `FrequencyDomainBodyAccelerometerJerk-StandardDeviation-Y`
	- `FrequencyDomainBodyAccelerometerJerk-StandardDeviation-Z`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk in the X, Y and Z directions:

	- `FrequencyDomainBodyAccelerometerJerk-MeanFrequency-X`
	- `FrequencyDomainBodyAccelerometerJerk-MeanFrequency-Y`
	- `FrequencyDomainBodyAccelerometerJerk-MeanFrequency-Z`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `FrequencyDomainBodyGyroscope-Mean-X`
	- `FrequencyDomainBodyGyroscope-Mean-Y`
	- `FrequencyDomainBodyGyroscope-Mean-Z`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `FrequencyDomainBodyGyroscope-StandardDeviation-X`
	- `FrequencyDomainBodyGyroscope-StandardDeviation-Y`
	- `FrequencyDomainBodyGyroscope-StandardDeviation-Z`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `FrequencyDomainBodyGyroscopeMean-Frequency-X`
	- `FrequencyDomainBodyGyroscopeMean-Frequency-Y`
	- `FrequencyDomainBodyGyroscopeMean-Frequency-Z`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `FrequencyDomainBodyAccelerometerMagnitude-Mean`
	- `FrequencyDomainBodyAccelerometerMagnitude-StandardDeviation`
	- `FrequencyDomainBodyAccelerometerMagnitude-MeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk:

	- `FrequencyDomainBodyAccelerometerJerkMagnitude-Mean`
	- `FrequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation`
	- `FrequencyDomainBodyAccelerometerJerkMagnitude-MeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `FrequencyDomainBodyGyroscopeMagnitude-Mean`
	- `FrequencyDomainBodyGyroscopeMagnitude-StandardDeviation`
	- `FrequencyDomainBodyGyroscopeMagnitude-MeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk:

	- `FrequencyDomainBodyGyroscopeJerkMagnitude-Mean`
	- `FrequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation`
	- `FrequencyDomainBodyGyroscopeJerkMagnitude-MeanFrequency`

## Transformations <a name="transformations"></a>

The zip file containing the source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were applied to the source data:

1. The Training and Test sets were merged to create one data set called `AllData`.
2. The measurements on the Mean and Standard Deviation (i.e. columns containing the text `mean` and `std`) were extracted for each measurement, and the others were discarded.
3. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
4. The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `TimeDomainBodyAccelerometer-Mean-X`), using the following set of rules:
	- Special characters (i.e. `(` and `)`) were removed
	- The initial `t` was expanded to `TimeDomain`.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
	- The initial `f` was expanded to `FrequencyDomain`.
	- Replaced (supposedly incorrect as per source's `features_info.txt` file) `BodyBody` with `Body`.
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script.
