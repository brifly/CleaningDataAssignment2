# Getting and Cleaning Data Assignment 2

This document describes the analysis done in the run_analysis.R file of this repo.

## Objective

The objective of the analysis was to produce a summary of the [UCI Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#). Specifically, the analysis produces a clean data set of the merged data, and shows the mean of each mean and standard deviation measurement in the original data set, grouped by subject and activity.

### Requirements

This script requires R with the plyr library installed. The script also assumes that you have a folder called 'data' which contains the data from the UCI Human Activity Recognition Using Smartphones Data Set.

### Instructions

To run the script set the working directory to the directory the script is in and type source("run_analysis.R").
If you wish to change the folder the data is in, change the parentPath variable at the top of the script.

## Process

The process involves the following steps:
- Merging the test and training data sets
- Extract all the mean and standard deviation columns
- Add descriptive names to the features in the dataset
- Makes use of descriptive activity names
- Summarize the data by subject and activity
- Write the summarized data to a file

### Merging the Testing and Training Sets

The data in the original source is split into two data sets, a training and a test data set. The first step is to combine these all into a single data set. To do this a function, get_data, was created to read in each of the files in a data set, specifically:
- The features data X_test and X_train
- The activity data Y_test and Y_train
- The subject data subject_test and subject_train

The get_data function was designed to take a data set name (e.g. 'train' or 'test') and return a list containing three data frames, one for each of the files in the data set. The function was designed this way so as to support adding further data sets at a later point if necessary with minimial code change. 
The get_data reads the subject and activity data files, using read.table, with no headers and the default separator. It reads the features data using read.fwf with no headers and widths specified as a vector of 561 values of 16 - there are 561 values in each row of the file, each 16 characters long. After reading these files it returns a list of x = features, y = activity number, and s = subject.

The script calls the get_data function once for each set test and train, and then uses rbind to merge all the data into individual x, y and s data frames.

### Extract all the mean and standard deviation columns

The next step in the process is to extract all the relevant columns. The full list of columns was read from the features.txt file. In this case we are interested in only the mean and standard deviation columns. These were selected using the pattern "(mean|std)\\(\\)". This has the effect of selecting all columns with either std() or mean() in the name, it excludes columns like meanFreq(), as by the original data set definition these are considered different variables.

Once the relevant columns have been found, these columns are added to a new data frame called all_data.

### Add descriptive names to the features in the dataset

After we have obtained the all_data data frame, we apply the labels to the columns using the ones we extracted from the full features list using the regular expression.

### Makes use of descriptive activity names

The next step was to add in the subject and activity data. The subject data was simply added as a column to the all_data data frame. The activity information was also added as a column from the y data frame, but the value in the y data frame was looked up in a data fram called activity_labels that we loaded previously from the activity_labels.txt file.

### Summarize the data by subject and group

The all_data data frame was then summarized using the ddply function from the plyr library. The ddply function was called with the subject and activity columns as group by and then the aggregation function was specified as the colMeans function over all the other columns in the all_data data set.

### Write the data to a file

The last step writes this data to a file using write.table with no headers.

