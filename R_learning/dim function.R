mtcars
#wwe can use dim to obtain the dimension ot the ogject, rows and columns
dim(mtcars)
#create a data frame
data<- data.frame(x1=1:5,
                  x2= LETTERS[1:5],
                  X3= 1)
data
dim(data)

#dim can also be used to set or change the dimension:
  
  a <- 1:50
  a
dim(a) <- c(10, 5)
a
dim(a) <- c(5,10)
a

# Create your three-dimensional array. dim=c(rows, columns, matrices) the form also could use only rows and columns
my_array <- array(1:20, dim=c(20, 20, 20))
my_array

for (i in 1:dim(my_array)[1]) {
  for (j in 1:dim(my_array)[2]) {
    for (k in 1:dim(my_array)[3]) {
      my_array[i,j,k] = i*j*k
    }
  }
}

# Show a 10x10x15 chunk of your array.
my_array[1:10, 1:10, 1:15]
#To prevent the user from deluging the screen with huge tables,
#you put a condition at the end to print the first 10 x 10 chunk,
#only if the user asked for an integer greater than 10. Else, an n x n chunk will be printed.

# Insert your own integer here
my_int <- 5

nr <- as.integer(my_int)

# Create a `n` x `n` matrix with zeroes
mymat <- matrix(0, nr, nr)

# For each row and for each column, assign values based on position
# These values are the product of two indexes
for(i in 1:dim(mymat)[1]) {
  for(j in 1:dim(mymat)[2]) {
    mymat[i,j] = i*j
  }
}

# Show the first 10x10 chunk or the first `nr` x `nr` chunk
if (nr > 10) {
  mymat[1:10, 1:10]
} else mymat[1:nr, 1:nr]


