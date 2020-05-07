#functions datacamp

# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)

# Create function called `sum_n`
sum_n<-function(n){
  x<-1:n
  sum(x)
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

# Create `altman_plot` 
altman_plot<-function(x,y){
  plot(x+y, y-x)
}

#Lexical scoping is a convention used by many languages that determine
#when an object is available by its name. 
#When you run the code below you will see which x is available at different points in the code.

x <- 8
my_func <- function(y){
  x <- 9
  print(x)
  y + x
}
my_func(x)
print(x)

# Run this code 
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}

# Print the value of x 
print(x)

# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
compute_s_n<- function(n){
  x<-1:n
  sum(x^2)
}
# Report the value of the sum when n=10
compute_s_n(10)

#Now we are going to compute the sum of the squares for several values of n. 
#We will use a for-loop for this. Here is an example of a for-loop:

results <- vector("numeric", 10)
n <- 10
for(i in 1:n){
  x <- 1:i
  results[i] <- sum(x)
}

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
m<-25
for(n in 1:m){
  s_n[n]<-compute_s_n(n)
}
n<-1:m

#  Create the plot 
plot(n, s_n)

# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions.
formula<-n*(n+1)*(2*n +1)/6
identical(s_n, formula)
