## Project for Getting and Cleaning Data course on Coursera 
### This repository has three files:
* run_analysis.R
* CodeBook.md
* README.md (this one)

The run_analysis.R is a script that can be run if the Samsung data (named as UCI HAR Dataset) is in the working directory. If it is not there, this script will try to download the zip file from the website (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) given, and unzipped it to have the data folder in the working directory. 

This script will generate a output file named tidydataset.txt which contains the tidy data set after performing the following transformations:

* training and test sets are merged together
* extract only mean and SD features 
* give good feature names
* give descriptive activity names to name the activities
* compute the feature averages grouped by subject and activity

The run_analysis.R script is commented to indicate which parts of the code are responsible for which transformations. See CodeBook.md for additional information on resulting data sets.
