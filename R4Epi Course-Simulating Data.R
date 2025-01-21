##Assign and save data##
class <- data.frame (  names   = c("John", "Sally", "Brad", "Anne"),
                       heights = c(68, 63, 71, 72))
#Viewing class data
class
summary(class)
View(class)
#Exploring class data.$ sign specifies the variable of interest
mean(class$heights)

##Creating Vectors## c is for combine
#Types of vectors# Checking types is typeof
#character vector-names
names <- c("John", "Sally", "Brad", "Anne")
typeof(names)
#double vector-decimal numbers
my_numbers <- c(12.5, 13.98765, pi)
my_numbers
typeof(my_numbers)
#integer vector-whole number and must include letter L behind it
my_ints_2 <- c(1L, 2L, 3L)
my_ints_2
typeof(my_ints_2)
#logical vector-true and false. Type TRUE and FALSE in all caps
my_logical <- c(TRUE, FALSE, TRUE)
my_logical

##factor vector##
# A numeric vector of education categories
education_num <- c(3, 1, 4, 1)
education_num
# A character vector of education categories
education_chr <- c(
  "Some college", "Less than high school", "College graduate", 
  "Less than high school")
education_chr
# A numeric vector of dysmenorrhea severity
dys_severity <- c(0,1,2,3,4,5)
dys_severity
# A character vector of dysmenorrhea severity
dys_severity_chr <- c("no pain", "little pain", "low pain","medium pain", "severe pain", "extreme servere pain")
dys_severity_chr
# Converting education_num to a factor#
education_num_f <- factor(x = education_num,levels = 1:4,labels = c("Less than high school", "High school graduate", "Some college", "College graduate"))
education_num_f
typeof(education_num_f)
#Converting dys_severity to a factor
dys_severity_f <- factor(x = dys_severity,levels = 1:6,lebels = c("no pain", "little pain", "low pain", "medium pain", "severe pain", "extreme servere pain"))
dys_severity_f
# Coerce/convert education_chr to a factor
education_chr_f <- factor(
  x      = education_chr,
  levels = c(
    "Less than high school", "High school graduate", "Some college", 
    "College graduate"
  )
)
education_chr_f

# Coerce education_chr to a factor
dys_severity_chr_f <- factor(
  x      = dys_severity_chr,
  levels = c("no pain", "little pain", "low pain", "medium pain", "severe pain", "extreme servere pain"))
dys_severity_chr_f
typeof(education_num_f)
as.numeric(education_num_f)

## Dataframes##
# Create a vector of names
dys_severity_levels <- c("low", "medium", "high", "none")
# Create a vector of heights
dys_scores <- c(1, 2, 3, 0)
# Combine them into a data frame
dys_class <- data.frame(dys_severity_levels, dys_scores)
# Print the data frame to the screen
dys_class
# Create the class data frame
dys_class <- data.frame(
  dys_severity_levels  = c("low", "medium", "high", "none"),
  dys_scores = c(1, 2, 3, 0)) # Closing parenthesis down here.
# Print the data frame to the screen
dys_class
class(dys_class)
##Data frames with Tibbles## uses tibble or dplyr package
#Installing#
# Install the dplyr package. YOU ONLY NEED TO DO THIS ONE TIME.
install.packages("dplyr")
# Load the dplyr package. YOU NEED TO DO THIS EVERY TIME YOU START A NEW R SESSION.
library(dplyr)
#Tibbles uses 3 functions to create data frames#
#First, create a data frame or Use the created dys_class data frame
#using as_tibble() function
# Use as_tibble() to turn my_df into a tibble
dys_class <- as_tibble(dys_class)
# Print dys_class to the screen
dys_class
class(dys_class)
#using tibble() function
dys_class <- tibble(dys_class)
dys_class
class(dys_class)
#using tribble() function
dys_class <- tribble(~ dys_severity_levels, "low", "medium", "high", "none", ~ dys_scores, 1, 2, 3, 0)
dys_class
class(dys_class)
dys_class<- tribble(
  ~dys_severity_levels,    ~dys_scores,
  "low",   1, 
  "medium", 2, 
  "high",  3,
  "none", 0
)
dys_class
class(dys_class)

#Adding variables in a data frame#
# Create a data frame using the data.frame() function
my_df <- data.frame(
  name       = c("john", "alexis", "Steph", "Quiera"),
  age_years  = c(24, 44, 26, 25))
# Add the age in months column to my_df
my_df <- my_df %>% mutate(age_months = age_years * 12)

# Print my_df to the screen
my_df

#Adding variables in a data frame in one step using tibbles#
# Create a data frame using the tibble() function # data frame cannot do this directly like tibble
my_df <- tibble(
  name       = c("john", "alexis", "Steph", "Quiera"),
  age_years  = c(24, 44, 26, 25),
  age_months = age_years * 12)

# Print my_df to the screen
my_df

#In R, we represent missing data with an NA#
# Create the class data frame
data.frame(
  names   = c("John", "Sally", "Brad", "Anne"),
  heights = c(68, 63, 71, NA) # Now we are missing Anne's height
)
typeof(NA) 

##Descriptive statistics calculation##
class
#Specifing a variable using $ sign
class$heights
# specifying a value in a variable
class$heights[3]

##Calculating mean, median and mode
# First way to calculate the mean is: (68 + 63 + 71 + 72) / 4
# Second way. Use dollar sign notation and bracket notation so that we don't # have to type individual heights
(class$heights[1] + class$heights[2] + class$heights[3] + class$heights[4]) / 4
#Third way, mean fucntion and use dollar sign
mean(class$heights)
mode(class$heights)
median(class$heights)

##Calculating summary
# First way to calculate the mean,(68 + 63 + 71 + 72) / 4
# Second way. Use dollar sign notation and bracket notation so that we don't,have to type individual heights
(class$heights[1] + class$heights[2] + class$heights[3] + class$heights[4]) / 4
# Third way. Use dollar sign notation 
sum(class$heights)
# Fourth is mean and sum function so that we don't have to type as much
sum(class$heights) / 4
sum(dys_severity)

##Nesting functions##
# Writing the division operator as a function with parentheses
# Because the division operator isn’t a letter, we had to wrap it in backticks (`)
`/`(8, 4)
# secondly, one function is nested inside another function.
`/`(sum(class$heights), 4)

##The length function##
length(class$heights)
length(dys_severity)

#Both length and height functions#
sum(class$heights) / length(class$heights)

##Exercise## Use this version always
# create a new variable and add it to the class data frame
weights <- c(160, 170, 180, 190)
class$weight <- c(160, 170, 180, 190)
class
mean(class$weight)
dys_class$weight <- c(50, 70,38,42)
dys_class
mean(dys_class$weight)

##Differences of objects and columns##
#variables/columns are in a data frame and uses $ to specify it
#objects are stored as vectors in the environment

