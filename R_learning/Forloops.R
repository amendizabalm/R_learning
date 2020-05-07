#For loops
#there is a function to compute the sum of n numbers 1 + 2+...+n=n(n+1)/2
#let´s check the formula
compute_s_n<- function(n){
  x <- 1:n
  sum(x)
}
compute_s_n(3)
compute_s_n(100)

#Now let´s say we want to compute this sum for various values of n.
#Say we want to compute it for 1, for 2 up to 25.
#So now we're computing 25 sums. We can use a for loop to perform the same tasj over and over again
#For-loops let us define the range that our variable takes.
#In our example, it would go from 1 to 25.
m<-25
#create an empty vector to store the results as I compute them
s_n<-vector(length = m)

#The index is n, and I'm going to go from 1 through m, which is 25.
#So inside the loop, I'm calling the function compute_s_n()
#with a value n.
#n is the value that's changing from 1 through 25.
m<-25
for(n in 1:m){
  s_n[n]<- compute_s_n(n)
}
n<- 1:m
plot(n, s_n)
# We can also overlay the two results using the function lines.
# We first plot the points using plot, and then
# we add lines, using the function lines, that
# show us the predicted values from the formula,
# and we see that they're right on the dot.

plot(n, s_n)
lines(n, n*(n+1)/2)

# Create a vector filled with random normal values
u1 <- rnorm(30)
print("This loop calculates the square of the first 10 elements of vector u1")

# Initialize `usq` optional in R studio
#usq <- 0

for(i in 1:10) {
  # i-th element of `u1` squared into `i`-th position of `usq`
  usq[i] <- u1[i]*u1[i]
  print(usq[i])
}

print(i)

# Create a 30 x 30 matrix (of 30 rows and 30 columns)
mymat <- matrix(nrow=30, ncol=30)

# For each row and for each column, assign values based on position: product of two indexes
for(i in 1:dim(mymat)[1]) {
  for(j in 1:dim(mymat)[2]) {
    mymat[i,j] = i*j
  }
}

# Just show the upper left 10x10 chunk
mymat[1:10, 1:10]

#let´s use a for loop in a vector
for (i in c(1L, 2L, 3L)) {
  print(i)
}
#another form is
for(i in 1:3){
  print(i)
}
#Or create the object first and then use the object to loop over:
idx<- 1:4
for(i in idx){
  print(i)
}
#As the for loop always loops trough the elements in the vector "from left to right" 
#(starts with the first) we can crate a "reverse loop" 
#by using a decreasing sequence to loop over. To be explicit: the for loop itself is not "reversed", 
#but the vector 3:1 is a decreasing sequence. For example:
for(i in 3:1){
  print(i)
}
# Loop over 1:length(x)
x<- 5
for (i in 1:length(x)){
  print(i)
}

#loop along a sequence 
x<- c(1,2,3,4,5)
for(i in seq_along(x)){
  print(x[i])
}
#Nested for loop
for(i in 1:3){
  for (j in 1:2){
    print(paste("i=", i, "j=", j))
  }
}
#Another example
for(i in 1:5){
  for (j in 1:2){
    print(paste("i=", i, "j=", j))
  }
}

for(i in 1:5){
  for (j in 1:3){
    print(paste("i=", i, "j=", j))
  }
}

for(i in 1:5){
  for (j in 1:5){
    print(paste("i=", i, "j=", j))
  }
}
#FOR LOOPS AND MATRICES
#create a matrix

mat <- matrix(c(1L, 4L, 8L, 4L, 1L, 4L, 8L, 4L, 1L), nrow = 3)
mat

#loop over the underlying vector
for (i in 1:length(mat)){
  print(paste("Element", i, "is", mat[i]))
}
# to loop over rows and columns by using a nested loop
# typically row index is called i, and column index is called j
for(i in 1: nrow(mat)){
  for(j in 1: ncol(mat)){
    print(mat[i,j])
  }
  #if we use nrow= elements will be ordered in rows, 
  #if we use ncol= they will be orederd in columns
}
for (j in 1:ncol(mat)) {
  # Maximum of column 'j'
  print(max(mat[, j]))
}

for (j in 1:nrow(mat)) {
  # Maximum of column 'j'
  print(max(mat[i,]))
}
#we can also combine loops and named matrices (matrices with row/column names):
#create matrix
mat <- matrix(1:16, ncol=4, 
              dimnames = list(LETTERS[11:14], letters[5:8]))
mat              

#And, for example, loop over rows c("N", "K") and columns c("g", "h"):
for (rname in c("N", "K")) {
  for (cname in c("g", "h")) {
    # Simply print some information
    print(paste("Value of row", rname, "and column",
                cname, "is", mat[rname, cname]))
  }
}
#combine loops and conditions
n<- 3L
for(i in 1:n){
  if(i < n){print("ice")}else { print("baby")}
}
   
#NEXT AND BREAK
x <- c(3.5, 10.3, -3.2, 1.2, -10.3, 20,3)

for (i in 1:length(x)) {
  # If x[i] is negative, skip this iteration
  # and continue with next iteration ('i')
  if (x[i] < 0) {
    next
  }
  # Else print
  print(x[i])
}

#for the same vector
for(i in 1:length(x)){
  if(x[i] < 0) {
    break
  }
  print(x[i])
}

