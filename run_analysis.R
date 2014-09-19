## Setting the right directory
	wd<- getwd()
## create a new directory if it does not exist
	if (!file.exists("./temp for this question")) {
		dir.create("./temp for this question")
	}
	setwd(paste(wd,"/temp for this question", sep=""))
	
## Downloading the data in the right place and working from the directory where unzipped files are stored
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	newfile <- "projectfile.zip"
	download.file(fileUrl, newfile, method="curl")
	unzip(newfile)
	setwd("UCI HAR Dataset")

## Read data from the downloaded file	- activity and features
	ActivityLabels <- read.table("activity_labels.txt", col.names=c("number", "Activity"))
	FeatureList <- read.table("features.txt",col.names=c("number", "feature"))

## Going to the training folder and importing data
	wd2 <- getwd() ## storing the path so that we can return here quickly
	setwd(paste(wd2,"train",sep="/"))
	TrainingSubjects <- read.table("subject_train.txt", col.names="TSubject")
	XTrainingSet<-read.table("X_train.txt", col.names=FeatureList[,2])
	YTrainingLabels <- read.table("y_train.txt",col.names="LabelCode")

## Going to the test folder and importing data
	setwd(paste(wd2,"test",sep="/"))
	TestSubjects <- read.table("subject_test.txt", col.names="TSubject")
	XTestSet<-read.table("X_test.txt", col.names=FeatureList[,2])
	YTestLabels <- read.table("y_test.txt",col.names="LabelCode")
	
## Checking which items are mean and standard deviation by searching for the right terms in FeatureList and then extracting them from training and test data
	MeanFeatures <- grep("mean\\(", FeatureList[,2])
	StdFeatures <- grep("std\\(", FeatureList[,2])
	MeanStdFeatures <- sort(c(MeanFeatures, StdFeatures))
	

	NewXTrainingSet <- XTrainingSet[,MeanStdFeatures]
	NewXTestSet <- XTestSet[,MeanStdFeatures]	
	
# Creating a merged data set for training and test data with mean and stdev data	only (assignment 1 and 2)
	RelevantTrainingDF = cbind(YTrainingLabels,TrainingSubjects,NewXTrainingSet)
	RelevantTestDF = cbind(YTestLabels,TestSubjects,NewXTestSet)
	RelevantTotalDF <- rbind(RelevantTrainingDF,RelevantTestDF)

## Changing the lablecode with the activity name
	FinalDF <- merge(ActivityLabels, RelevantTotalDF, by.x="number", by.y="LabelCode")
	FinalDF <-FinalDF[,-1]

## For each activity, subject and their asked variables - a tidy dataset creation

	library(reshape2)
	meltedDF <- melt(FinalDF, id = c("Activity", "TSubject"))
	OutputDF <- dcast(meltedDF, Activity + TSubject ~ variable, mean)

## Get back the original directory, write the filename, codebook and remove the temporary directory with data

	setwd(wd)
	write.table(OutputDF, file="ProjectOutput.txt", quote=FALSE, row.names=FALSE, sep="\t")	
	unlink("./temp for this question", recursive=TRUE)