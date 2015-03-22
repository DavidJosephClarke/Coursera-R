# We have previously downloaded and unpacked the data into the UCI Har Dataset directory.

library(dplyr)

## Let's load the column names for the datasets from the features.text.
## Then we load the training data set, and attach the names to it. 

featuresNames <- read.table("UCI HAR Dataset/features.txt")[,2]
training.data <- read.table("UCI HAR Dataset/train/X_train.txt") 
names(training.data) <- featuresNames

## And the same with the test data

test.data <- read.table("UCI HAR Dataset/test/X_test.txt")
colnames(test.data) <- featuresNames

# Let's get the activity labels, and name the columns

activity.lookup <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activityLabel"))

# Load in the activity IDs into a table of the training and test data

training.activityID <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activityID")
test.ActivityID <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activityID")

# Read in the data for the training subjects
training.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# Time to connect the data together
training.data.all <- cbind(training.data, training.activityID, training.subjects)
test.data.all <- cbind(test.data, test.ActivityID, test.subjects)
combined.data <- rbind(training.data.all, test.data.all)

# We can get the activity labels added, then clear out the activityID column
combined.data <- inner_join(combined.data, activity.lookup, by="activityID")
combined.data$activityID <- NULL

# We use grep to only get the mean and SD for each measurement
selected.cols <- grepl(pattern = "(mean|std|Label|subject)", featuresNames)
tidy.data <- combined.data[, selected.cols]

# Work through column names and make sure they are nice and tidy (no pun intended!)

new.col.names <- colnames(tidy.data)
new.col.names <- gsub('fBody', 'fBody_', new.col.names)
new.col.names <- gsub('tBody', 'tBody_', new.col.names)
new.col.names <- gsub('tGravity', 'tGravity_', new.col.names)
new.col.names <- gsub('[-]', '_', new.col.names)
new.col.names <- gsub('[()]', '', new.col.names)
new.col.names <- gsub('mean', 'Mean', new.col.names)
new.col.names <- gsub('std', 'Std', new.col.names)

# Put the new column names to work

names(tidy.data) <- new.col.names

# Use dplyr functions to get the data grouped, summarized, and arranged

tidy.data <- group_by(tidy.data, subject, activityLabel) %>% 
  summarise_each(funs(mean)) %>%
  arrange(subject, activityLabel)

## Let's publish our tidy dataset - finally!

write.csv(tidy.data, 'tidydata.csv', row.names = FALSE, quote = FALSE)
