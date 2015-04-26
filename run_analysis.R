##########################################################
# getting the activity labels and the feature list names 
# the activity labels and the feature lists are used for 
# train and test data sets
##########################################################

activity_lbls <- read.table("./UCI HAR Dataset/activity_labels.txt"
                            ,sep=" ")

features <- readLines("./UCI HAR Dataset/features.txt")

### after removing the numbers the feature list had duplicates. 
### thus keeping the numbering back by commenting the above line

##############################################################

#reading the feature training data into a data frame
##############################################################
TRNsubject <-  readLines("./UCI HAR Dataset/train/subject_train.txt")

##############################################################
# the trainLbls are the identifiers for the subject performing 
# the test for one row or record for each training data set
##############################################################
trainLbls <- readLines("./UCI HAR Dataset/train/y_train.txt")

library("data.table")
Train <- as.data.table(read.table("./UCI HAR Dataset/train/X_train.txt"
                                  ,colClasses = rep("numeric",561)
                                  ,header=F
                                  
))
#setting the names of the training feature data as the column names 
setnames(Train,names(Train), features)

##############################################################
#reading the test data into a data frame
##############################################################
#reading the test subject data 
##############################################################
Testsubject <-  readLines("./UCI HAR Dataset/test/subject_test.txt")
##############################################################
#reading the test activity labels
##############################################################
testLbls <- readLines("./UCI HAR Dataset/test/y_test.txt")
##############################################################


Test <- as.data.table(read.table("./UCI HAR Dataset/test/X_test.txt"
                                 ,colClasses = rep("numeric",561)
                                 ,header=F
                                 
))

setnames(Test,names(Test), features )

#########################################################
#########################################################
# loading the inertial train data and adding labels 
#########################################################
#########################################################
# reading the x component readings of the body acceleration
BAXTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(BAXTR,names(BAXTR),sapply("body_acc_x_Measurement_",paste,1:128,sep=""))

#######################################################################
# reading the y component readings of the body acceleration
#######################################################################
BAYTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(BAYTR,names(BAYTR),sapply("body_acc_y_Measurement_",paste,1:128,sep=""))


#######################################################################
# reading the z component readings of the body acceleration
#######################################################################

BAZTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(BAZTR,names(BAZTR),sapply("body_acc_z_Measurement_",paste,1:128,sep=""))


#####################################################################################
# reading the x component readings of the gyro
BGXTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(BGXTR,names(BGXTR),sapply("body_gyro_x_Measurement_",paste,1:128,sep=""))

#######################################################################
# reading the y component readings of the body acceleration
#######################################################################
BGYTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(BGYTR,names(BGYTR),sapply("body_gyro_y_Measurement_",paste,1:128,sep=""))


#######################################################################
# reading the z component readings of the body acceleration
#######################################################################

BGZTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(BGZTR,names(BGZTR),sapply("body_gyro_z_Measurement_",paste,1:128,sep=""))

########################################################################################
# reading the x component readings of the body acceleration
TAXTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(TAXTR,names(TAXTR),sapply("total_acc_x_Measurement_",paste,1:128,sep=""))

#######################################################################
# reading the y component readings of the body acceleration
#######################################################################
TAYTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(TAYTR,names(TAYTR),sapply("total_acc_y_Measurement_",paste,1:128,sep=""))


#######################################################################
# reading the z component readings of the body acceleration
#######################################################################

TAZTR <- as.data.table(read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"
                                  ,colClasses = rep("numeric",128)
                                  ,header=F
                                  
))
#setting the column names appropriately to label the measurements
setnames(TAZTR,names(TAZTR),sapply("total_acc_z_Measurement_",paste,1:128,sep=""))

###############################################################################
###############################################################################
#reading the inertial test data 
###############################################################################
###############################################################################
BAXT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(BAXT,names(BAXT),sapply("body_acc_x_Measurement_",paste,1:128,sep=""))

#######################################################################
# reading the y component readings of the body acceleration
#######################################################################
BAYT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(BAYT,names(BAYT),sapply("body_acc_y_Measurement_",paste,1:128,sep=""))


#######################################################################
# reading the z component readings of the body acceleration
#######################################################################

BAZT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(BAZT,names(BAZT),sapply("body_acc_z_Measurement_",paste,1:128,sep=""))


#####################################################################################
# reading the x component readings of the gyro
BGXT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(BGXT,names(BGXT),sapply("body_gyro_x_Measurement_",paste,1:128,sep=""))

#######################################################################
# reading the y component readings of the body acceleration
#######################################################################
BGYT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(BGYT,names(BGYT),sapply("body_gyro_y_Measurement_",paste,1:128,sep=""))


#######################################################################
# reading the z component readings of the body acceleration
#######################################################################

BGZT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(BGZT,names(BGZT),sapply("body_gyro_z_Measurement_",paste,1:128,sep=""))

########################################################################################
# reading the x component readings of the body acceleration
TAXT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(TAXT,names(TAXT),sapply("total_acc_x_Measurement_",paste,1:128,sep=""))

#######################################################################
# reading the y component readings of the body acceleration
#######################################################################
TAYT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(TAYT,names(TAYT),sapply("total_acc_y_Measurement_",paste,1:128,sep=""))


#######################################################################
# reading the z component readings of the body acceleration
#######################################################################

TAZT <- as.data.table(read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt"
                                 ,colClasses = rep("numeric",128)
                                 ,header=F
                                 
))
#setting the column names appropriately to label the measurements
setnames(TAZT,names(TAZT),sapply("total_acc_z_Measurement_",paste,1:128,sep=""))


##########################################################################################
#merging all the test and train data sets
##########################################################################################
library("reshape")

mergedTR <- do.call(cbind,list(Train,BAXTR,BAYTR,BAZTR,BGXTR,BGYTR,BGZTR,TAXTR,TAYTR,TAZTR))
#keep the names of all measurements to add as variables when merging data
measurements <- names(mergedTR)
print(measurements)
# adding column identifiers for the activity, the subject, and the subject type(train vs test) to prepare data for merging
mergedTR[,Activity:=  as.factor(trainLbls)]
levels(mergedTR$Activity) = activity_lbls$V2

mergedTR[,Subject_id := TRNsubject]
mergedTR[,Subject_type:= "train"]
str(mergedTR)

#merge all inertial test data
mergedT <- do.call(cbind,list(Test,BAXT,BAYT,BAZT,BGXT,BGYT,BGZT,TAXT,TAYT,TAZT))

# adding column identifiers for the activity, the subject, and the subject type(train vs test) to prepare data for merging
mergedT[,Activity:=  as.factor(testLbls)]
levels(mergedT$Activity) = activity_lbls$V2

mergedT[,Subject_id := Testsubject]
mergedT[,Subject_type:= "test"]

allData <- merge(mergedTR,mergedT,by=names(mergedTR),all=T)

# saving the merged data sets into a text file

##########################################################
# getting the mean and standard deviation for each measurement
##########################################################
library("reshape2")
library("dplyr")
Meltedsets <- melt(allData,id.vars=c("Activity","Subject_id"),measure.vars=measurements
                   )

meanData <- dcast(Meltedsets,Activity+Subject_id~variable,fun = mean)
sdData <- dcast(Meltedsets,Activity+Subject_id~variable,fun = sd)

write.table(meanData,file= "meanData.txt",row.names=F)

rm(mergedTR,mergedT)
rm(Train,BAXTR,BAYTR,BAZTR,BGXTR,BGYTR,BGZTR,TAXTR,TAYTR,TAZTR)
rm(Test,BAXT,BAYT,BAZT,BGXT,BGYT,BGZT,TAXT,TAYT,TAZT)

