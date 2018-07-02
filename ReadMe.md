# Getting and Cleaning Data - Course Project

The information held within this repository is the course project for the Getting and Cleaning Data module 
of the Data Science Specialisation Coursera course.
The purpose of the project is to demonstrate the ability to collect, work with, and clean a data set.
The goal of the project is to prepare tidy data that can be used for later analysis. The dataset used was collected
from the accelerometers from the Samsung Galaxy S smartphone. A full description of the data used is available from 
the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

An R script, `run_analysis.R`, is used to perform the data transformation and does the following:

1. Checks to see if the "reshape2" package is installed, if not then it installs 
   the package and loads its library.
2. Checks to see if the data files have already been downloaded, if not then it downloads 
   the data.
3. Loads the Training and Test datasets along with the Features and Activity Labels.
4. Merges the Training and Test datasets together.
5. Extracts only the measurements on the mean and standard deviation for each measurement.
6. Replaces activity values with Factor labels from activity_labels.txt.
7. Alters the column names to make them more easy to read and understand.
8. Creates a tidy dataset that consists of the average (mean) value of each
   variable for each subject and activity pair.

The output of the R script can be found in the file `TidyData.txt`.