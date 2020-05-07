#all answers are correct
library(dslabs)
data(heights)
options(digits = 3)
library(dplyr)
# report 3 significant digits for all answers
heights
#First, determine the average height in this dataset. Then create a logical vector ind with the indices for those individuals who are above average height.
avg_height<-mean(heights$height)
ind<- heights$height > 68.3
ind
#How many individuals in the dataset are above average height?
sum(ind)
#How many individuals in the dataset are above average height and are female?
female<- heights$sex=="Female"
female
index<- ind & female
index
sum(index)
#f you use mean() on a logical (TRUE/FALSE) vector, it returns the proportion of observations that are TRUE.
#What proportion of individuals in the dataset are female?
mean(female)

#Determine the minimum height in the heights dataset.
short <-min(heights$height)
short
#Use the match() function to determine the index of the individual with the minimum height.
sh_index<-match(short, heights$height)
sh_index
#Subset the sex column of the dataset by the index in 4b to determine the individual's sex.
heights[1032,1]
heights[1032,"sex"]
heights[1032,]

#maximum height in dataset
large<- max(heights$height)
large

#Which integer values are between the maximum and minimum heights? For example, if the minimum height is 10.2 and the maximum height is 20.8, your answer should be x <- 11:20 to capture the integers in between those values. (If either the maximum or minimum height are integers, include those values too.)
#Write code to create a vector x that includes the integers between the minimum and maximum heights.
x<-50:82
x
#How many of the integers in x are NOT heights in the dataset?
#Use the sum() and %in% functions in addition to the ! operator.
sum(!x%in%heights$height)

#Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch =
#2.54 centimeters. Save the resulting dataset as heights2.
heights2<-mutate(heights, ht_cm= height *2.54)
heights2
#What is the height in centimeters of the 18th individual (index 18)?
heights2[18,3]
#What is the mean height in centimeters?
avg_heights2<-mean(heights2$ht_cm)
avg_heights2
#Create a data frame females by filtering the heights2 data to contain only female individuals.
females<-filter(heights2, sex=="Female")
females
#How many females are in the heights2 dataset?
index2<-heights2$sex=="Female"
sum(index2)
#How many females are in the heights2 dataset?
mean(females$ht_cm)
