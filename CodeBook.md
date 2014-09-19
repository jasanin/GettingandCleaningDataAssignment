x
# wd- The original working directory
# fileUrl- the URL with the download link
# newfile - unzipped file
# ActivityLabels - Importing of table "activity_labels.txt"
# FeatureList - Importing of table "features.txt"
# wd2 - interim directory variable
# TrainingSubjects - Importing of table "subject_train.txt"
# TestSubjects - Importing of table "subject_test.txt"
# XTrainingSet - Importing of table "X_train.txt"
# XTestSet - Importing of table "X_test.txt"
# YTrainingLabels - Importing of table "y_train.txt"
# YTestLabels - Importing of table "y_train.txt"
# MeanFeatures - Only mean items from FeatureList
# StdFeatures - Only standard deviation items from FeatureList
# MeanStdFeatures - Mean and standard deviation items from FeatureList
# NewXTrainingSet - Modified XTrainingSet to include mean and standard deviation columns
# NewXTestSet - Modified XTestSet to include mean and standard deviation columns
# RelevantTrainingDF - Training dataframe from the modified Training set, labels and subjects
# RelevantTestDF - Test dataframe from the modified Test set, labels and subjects
# RelevantTotalDF- Merged DF of test and training relevant data
# FinalDF - Dataframe modified to represent activities with the names
# meltedDF - FinalDF melted for the creation of a tidy set
# OutputDF - Tidy dataset created from meltedDF
# ProjectOutput.txt - output file


Columns in the final dataset
# TSubject
# tBodyAcc.mean...X
# tBodyAcc.mean...Y
# tBodyAcc.mean...Z
# tBodyAcc.std...X
# tBodyAcc.std...Y
# tBodyAcc.std...Z
# tGravityAcc.mean...X
# tGravityAcc.mean...Y
# tGravityAcc.mean...Z
# tGravityAcc.std...X
# tGravityAcc.std...Y
# tGravityAcc.std...Z
# tBodyAccJerk.mean...X
# tBodyAccJerk.mean...Y
# tBodyAccJerk.mean...Z
# tBodyAccJerk.std...X
# tBodyAccJerk.std...Y
# tBodyAccJerk.std...Z
# tBodyGyro.mean...X
# tBodyGyro.mean...Y
# tBodyGyro.mean...Z
# tBodyGyro.std...X
# tBodyGyro.std...Y
# tBodyGyro.std...Z
# tBodyGyroJerk.mean...X
# tBodyGyroJerk.mean...Y
# tBodyGyroJerk.mean...Z
# tBodyGyroJerk.std...X
# tBodyGyroJerk.std...Y
# tBodyGyroJerk.std...Z
# tBodyAccMag.mean..
# tBodyAccMag.std..
# tGravityAccMag.mean..
# tGravityAccMag.std..
# tBodyAccJerkMag.mean..
# tBodyAccJerkMag.std..
# tBodyGyroMag.mean..
# tBodyGyroMag.std..
# tBodyGyroJerkMag.mean..
# tBodyGyroJerkMag.std..
# fBodyAcc.mean...X
# fBodyAcc.mean...Y
# fBodyAcc.mean...Z
# fBodyAcc.std...X
# fBodyAcc.std...Y
# fBodyAcc.std...Z
# fBodyAccJerk.mean...X
# fBodyAccJerk.mean...Y
# fBodyAccJerk.mean...Z
# fBodyAccJerk.std...X
# fBodyAccJerk.std...Y
# fBodyAccJerk.std...Z
# fBodyGyro.mean...X
# fBodyGyro.mean...Y
# fBodyGyro.mean...Z
# fBodyGyro.std...X
# fBodyGyro.std...Y
# fBodyGyro.std...Z
# fBodyAccMag.mean..
# fBodyAccMag.std..
# fBodyBodyAccJerkMag.mean..
# fBodyBodyAccJerkMag.std..
# fBodyBodyGyroMag.mean..
# fBodyBodyGyroMag.std..
# fBodyBodyGyroJerkMag.mean..
# fBodyBodyGyroJerkMag.std..
