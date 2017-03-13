# Install Libraries

library(Matrix)
library(car)
library(stats)

# Defining vectors and matrices
#Vectors
x<-c(1,2,3)
y<-c(4,5,6)
z<-seq(1,10,by=0.5)
w<-1:10
A<-cbind(x,y)
B<-rbind(x,y)
ones<-rep(1,3)

# To make sure R respects vector dimensions
# save them as matrices

x<-as.matrix(x)
dim(x)

y<-as.matrix(y)
dim(y)

ones<-as.matrix(ones)
dim(ones)

# Matrices 
# ------------


A<-matrix(c(1,2,3,4,5,6),byrow=T,ncol=3)
A
A[1,1]
ONE <- matrix(rep(1,9),ncol=3) # matrix of all ones
# Transpose operation

t(A)
t(B)
t(D)
t(I)

# Element-wise operations
#------------------------

A+B
A-B
A*B
A/B
A^B

x+y
x-y
x*y
x/y
y^x


# Matrix and vector operations

A%*% # will give an error message : non-conformable
dim(A)
dim(B)

# In the example below, you can create an almost-singular matrix (ONE+N) by choosing
# small variance for the noise matrix N and see what happens with the inverse

N <-matrix(rnorm(9,sd=10^-6),3,3)
Ii <- solve(ONE+N)
(ONE+N)%*%Ii
Ii%*%(ONE+N)


## Positive-definite matrices, Qudratic forms

eigen(D)


M<-matrix(rnorm(9,sd=1),3,3)
eigen(M)
e=eigen(var(M))



N<-100
D<-matrix(rnorm(N),N,1)
E<- matrix(rnorm(N,sd=0.5),N,1)
D<-cbind(D,-D+E)
A<-var(D)
e<-eigen(A)
e

# spectral decomposiiton

e$vectors %*% diag(e$values) %*% t(e$vectors)
######
theta<- -60 * pi/180  
rotMatrix <- matrix(c(cos(theta),-sin(theta), sin(theta),cos(theta)),nrow=2,ncol=2)
p1<- matrix(c(0,0),byrow=TRUE)
p2<- matrix(c(3,sqrt(3)),byrow=TRUE)
p3 <- rotMatrix %*% p2
tri<- matrix(c(p1,p2,p3),nrow=3, ncol=2,byrow = TRUE)
colnames(tri)<-c("x","y")
ggplot(data.frame(tri),aes(x=x,y=y))+geom_point()





