#basic functions
# identical() compares of two functions are identical, lets create a function to calculate the average of a vector x
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}
x<-(1:100)
avg(x)

#let´s compare it with mean()
identical(mean(x), avg(x))

# the general form of a function
my_function <- function(VARIABLE_NAME){
  perform operations on VARIABLE_NAME and calculate VALUE
  VALUE
}

# functions can have multiple arguments as well as default values
avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}