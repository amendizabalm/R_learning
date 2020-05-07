install.packages("dplyr")
library("dplyr")
murders
murder_rate<-murders$total/murders$population*100000
murder_rate
#to retrieve states in which murder rate is below or equal 0.71, this performs the same operation for each entry
index <-murder_rate<=0.71
index
#to see which states are TRUE we use
murders$state[index]
#to count how many entries are TRUE we use the function sum()
sum(index)
#we want to know  safe states in west region and murder rate <=1
west <-murders$region=="West"
safe <- murder_rate <=1
index<- safe & west
index
murders$state[index]
