Read Me 
========
The run_analysis.R script executed a series of commands to load all the test and train data measured. The data sets are read from the training groups by series of read.table commands then the testing groups are read afterwards.
---------------------------------------------
### group of commands 
* Read the activity labels and the feature list names
* Read the feature training and then test data
* Insert the feature list names to the feature data column names
* Read all the inertial test and train signals
* Construct proper names for the inertial signals and use them to set the inertial data names  
* Merging all the training data sets and adding three columns to specify the subject, the activity and the group (test/train)
* Get the mean and the standard deviation 
* Save to file the tidy data set that include the calculated mean for each measurement for each activity and each subject
* Clean the work space from intermediate data structures. 