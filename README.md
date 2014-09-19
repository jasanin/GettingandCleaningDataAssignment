x
==================================================================
The code rn_analysis.R by Nilesh Jasani
==================================================================

This code begins by creating a new directory - which is eventually removed - and downloading the data from the provided URL

Once the downloaded file is unzipped, we import various labels
  ActivityLabels table links activity label code to the name of the activity
	FeatureList variable has the table of all the variables descriptions for which Test and Training datasets have values. 

The program reads various test and training datasets along with their subjects and labels. Before we merge the test and training datasets, the program performs the following operations

	- It finds out variables that contain mean and standard deviation data
	- In the modified or new test and training datasets, we only retain the columns that have mean and standard deviations while discarding the rest
	- We column-bind (bind) test and training data individually to include subjects and labels imported separately

Once all this is done, the two datasets - training and test - are merged with rbind. One more cleanup is performed in modifying the labels with the activity names by merging the ActivityLabels defined above with this file.

A tidy dataset is created from this output by melting the output and a recasting through melt and cast functions of library (reshape2). 

The final step writes the tidy dataset in a text file and creates a codebook of its column names.

