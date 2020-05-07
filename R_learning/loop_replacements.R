#create a matrix x
#fisrt create vectors

a<- c(298, 218, 168)
b<- c(103, 118, 22)
c<- c(194, 392, 59)
d<- c(271, 323, 90)
#create matrix using row binging
x<- rbind(a, b, c ,d)
x  
rownames(x)<- c("France", "Italy", "Spain", "Portugal")
colnames(x)<- c(2010, 2011, 2012)
x
#easier method
x<- matrix(c(298, 218, 168,  103, 118, 22, 194, 392, 59,  271, 323, 90), nrow= 4, ncol= 3, byrow=TRUE,
           dimnames= list(c("France", "Italy", "Spain", "Portugal"),
                          c(2010, 2011, 2012)))
#print x
x
