datafolder <- "UCI HAR Dataset"
wd = getwd()

if (!file.exists(paste(wd, datafolder, sep = "/"))){
  dataUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  downloadedzipfile <- paste(paste(wd, datafolder, sep = "/"), ".zip", sep="")
  download.file(dataUrl, destfile = downloadedzipfile, method = "curl")
  dateDownloaded <- data()
  unzip(downloadedzipfile)
  list.files(datafolder)
}

# Read activity labels and set names
actlabels <- read.table(paste(datafolder, "activity_labels.txt", sep = "/"),
                   header = FALSE, col.names=c("actids", "activities"))
# Read features and set names
featureVector <- read.table(paste(datafolder, "features.txt", sep = "/"), 
                            header = FALSE, col.names=c("featids", "features"))
# give good feature names
pattern = c("()", "-", ",", "(", ")")
featureVector$features <- tolower(featureVector$features)
for (i in 1:length(pattern)){
  featureVector$features <- gsub(pattern = pattern[i], "", featureVector$features, fixed=TRUE)
}
# Read training data and set names using feature vector
trainingsetX <- read.table(paste(datafolder, "train", "X_train.txt", sep = "/"),
                           header = FALSE, col.names = featureVector$features)
# Read training activity ids and set name
trainingsety <- read.table(paste(datafolder, "train", "y_train.txt", sep = "/"),
                           header = FALSE, col.names = "activity")
# Read traning person ids and set name
trainingsetPersonIDs <- read.table(paste(datafolder, "train", "subject_train.txt", sep = "/"),
                           header = FALSE, col.names = "subject")
# Read test data and set names using feature vector
testsetX <- read.table(paste(datafolder, "test", "X_test.txt", sep = "/"),
                       header = FALSE, col.names = featureVector$features)
# Read test activity ids and set name
testsety <- read.table(paste(datafolder, "test", "y_test.txt", sep = "/"),
                       header = FALSE, col.names = "activity")
# Read test person ids and set name
testsetPersonIDs <- read.table(paste(datafolder, "test", "subject_test.txt", sep = "/"),
                       header = FALSE, col.names = "subject")
# Merge the training and test data's
Xdata <- rbind(trainingsetX, testsetX)
ydata <- rbind(trainingsety, testsety)
personIDs <- rbind(trainingsetPersonIDs, testsetPersonIDs)
# Extract only mean and SD features
Xdata2fs <- Xdata[, grep("mean|std", featureVector$features)]
# give descriptive activity names to name the activities
ydata$activity <- actlabels[ydata$activity,]$activities
# Merge data sets together so that it labels the data set with descriptive activity names
cleandata <- cbind(personIDs, ydata, Xdata2fs)
# write the clean data to a csv file
#write.csv(cleandata, "cleandata.csv")
# Compute the averages grouped by subject and activity
library(reshape2)
melted_data <- melt(cleandata, id.vars=c("subject", "activity"))
tdset <- dcast(melted_data, subject + activity ~ variable, mean)
# write the tidy data set with the average of each variable for each activity and subject
write.table(tdset, paste(datafolder, "tidydataset.txt", sep="/"))
