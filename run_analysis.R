library(plyr)
## Set the directory that the data is in
parentPath <- "data"

## read the features (varible names in the data set), and the activity labels
features <- read.csv(paste0("data_test", "/features.txt"), header = F, sep=" ")
activity_labels = read.csv(paste0(parentPath, "/activity_labels.txt"), header=F, sep=" ", col.names = c("y", "Activity"))

## Function reads all the data files required and adds them to a list
get_data <- function(folder) {
  s <- read.table(paste0(parentPath, "/", folder, "/subject_", folder,".txt"), header = F)
  x <- read.fwf(paste0(parentPath, "/", folder, "/X_", folder, ".txt"), widths=rep(16, 561), header = F)
  y <- read.table(paste0(parentPath, "/", folder, "/y_", folder,".txt"), header = F, col.names = "y")
  list(x=x,y=y,s=s)
}

## Load the training and test data sets
train_data <- get_data("train") 
test_data <- get_data("test")

## merge the data sets into one (one for each file)
x <- rbind(train_data$x, test_data$x)
y <- rbind(train_data$y, test_data$y)
s <- rbind(train_data$s, test_data$s)

## Merge the activity labels with the y values

## Get the names of the features that are required (all features with mean() or std() in the name)
target_features <- features[grep("(mean|std)\\(\\)", features[,2]),]

## Extract the required features into a new data frame
all_data <- x[,target_features[,1]]
## Rename all the columns in the data frame to match the feature names
names(all_data) <- target_features[,2]

## add in the subject and activity columns
all_data$subject <- s[,1]
all_data$activity <- activity_labels[y[,1],2]

## Summarise the data
summary <- ddply(all_data, c("subject", "activity"), function (x) colMeans(x[,1:nrow(target_features)]))
print(summary)

write.table(summary, "tidy.txt", row.names = F)
