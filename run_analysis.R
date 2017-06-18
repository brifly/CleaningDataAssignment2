features <- read.csv("data/features.txt", header = F, sep=" ")
target_features <- features[grep("(mean|std)\\(\\)$", features[,2]),]

activity_labels = read.csv("data/activity_labels.txt", header=F, sep=" ", col.names = c("y", "Activity"))

get_data <- function(folder) {
  s <- read.csv(paste0("data/", folder, "/subject_test.txt"), header = F)
  x <- read.fwf(paste0("data/", folder, "/X_test.txt"), widths = rep(16, 561), header = F)
  y <- read.csv(paste0("data/", folder, "/y_test.txt"), header = F, col.names = "y")
  ym <- merge(y, activity_labels)
  target_x <- x[,target_features[,1]]
  names(target_x) <- target_features[,2]
  
  target_x$subject <- s[,1]
  target_x$activity <- ym$Activity
  target_x
}

test <- get_data("test")

test$subject <- factor(test$subject)
test$activity <- factor(test$activity)

summary <- aggregate(test, by=list(test$subject, test$activity), FUN=mean)