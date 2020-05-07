#from https://www.youtube.com/watch?v=STt_WLTkfKA&t=1s
#apply family of looping
#lets create a list "l" with two vectors

l<-list(c(1,2,3,4,5), c(2,3,4,5,6))
l
#rapply in its simple form will return a vector
rapply(l, sum)
# you can add another option to return a list(as lapply)
rapply(l, sum, how="list")
# three ways to get the same result
sapply(l, sum)
rapply(l, sum)
rapply(l, sum, how="unlist")
# to get a list use lapply
lapply(l, sum)
# lets say we have vectors "d" and "v"
d<-c(3,4,5,6,7,8,9)
d
v<-c(1,2,3,4,5,6,7,8,9,10)
v
#you want to find the summary of both vectors
summary(d)
summary(v)
#create a list with both vectors
l<-list(d,v)
l
#use vapply
#FUN.VALUE defines the output format, as the output of summary are six numeric values that is why we use six times numeric(1)
#the number 1 enclosed in numeric(1) means that each value in the output is a single value
vapply(l, summary, FUN.VALUE= c(numeric(1), numeric(1), numeric(1), numeric(1), numeric(1), numeric(1)))

#vapply will always give an error if you put wrong type of FUN.VALUE or wrong number in parenthesis
vapply(l, class, numeric(1))
vapply(l,class, character(1))
vapply(l, class, character(2))

#mapply, lets create three vectors
a<-c(1,2,3,4,5)
b<-c(3,2,4,1,5)
c<-c(6,7,5,4,8)

#we want to add the corresponding values on each vector i.e 1+3+6, 2+2+7, etc
mapply(sum, a,b,c)

#mapply can be used on lists, results are identical to sapply, the onñy difference is syntaxis
mapply(sum,l)
sapply(l, sum)

#you can use mapply in multiple lists
mapply(sum, l,l)

#eapply is useed when you define an environment
myenv= new.env()
#then you put a vector in that environment
myenv$a=c(1,2,3,4,5)

#now yyou can find the sum or mean or etc of the vector a of environment by ussing eapply
eapply(myenv, sum)

#other uses to apply
#first create a matrix m
m<-rbind(c(1,2,3), c(2,4,6), c(6,5,6))
m
# now we want to sum the values of each row in the matrix
apply(m, MARGIN=1, FUN= sum)

#if we want to sum the columns then we change MARGIN value to 2
apply(m, MARGIN=2, FUN= sum)

#now suppose we want to know de sqrt of each element in the matrix 
#c(1,2) means take commn element of each row and column, output is always in rows
# it means take row 1 and then inside each rowa loop through columns, then take row 2, etc
apply(m, MARGIN= c(1,2), FUN= sqrt)

#now let's say we want to know the sqrt for the values of each column 
# number 2 in MARGIN mean columns
apply(m, MARGIN= 2, FUN= sqrt)

#you can use margin= 3 to sum the elements of each matrix
