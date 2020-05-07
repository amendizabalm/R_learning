#conditionals
a=0
if(a!=0){
  print(1/a)
} else{
  print("No recirpocal for 0.")
}

# an example that tells us which states, if any, have a murder rate less than 0.5
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind<- which.min(murder_rate)
#which states, if any, have murder rates lower than 0.5
if(murder_rate[ind] <0.5){
  print(murders$state[ind])
} else{
  print("No state has murder state that low")
}
if(murder_rate[ind] <0.25){
  print(murders$state[ind])
} else{
  print("No state has murder state that low")
}

#ifelse function. This function takes three arguments, a logical, and two possible answers.
#If the logical is true, the first answer is returned.
#If it's false, the second answer is returned.

a<- 0
ifelse(a>0, 1/a, NA)

a<- 3
ifelse(a>0, 1/a, NA)

#in vectors

a <- c (0, 1, 2, -4, 5)
result <-ifelse(a>0, 1/a, NA)
result
#how to use this function to replace all the missing values ina vector with zeros, we are going to use an example
data("na_example")
na_example

#to know how many NAs are in the data we use
sum(is.na(na_example))
#to replace all the NAs with zero we use
no_nas <-ifelse(is.na(na_example), 0, na_example)
no_nas
#to check out there are no NAs
sum(is.na(no_nas))
#The any function takes a vector of logicals and it returns true
#if any of the entries is true.
z<- c(TRUE,TRUE,FALSE)
any(z)

z<-c(FALSE, FALSE, FALSE)
any(z)

#The all function takes a vector of logicals and returns
#TRUE if all the entries are true.
z<- c(TRUE,TRUE,FALSE)
all(z)

z<- c(TRUE, TRUE, TRUE)
all(z)
