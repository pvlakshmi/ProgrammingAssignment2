## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){
 x<<-y
 inv<<-NULL
  }
  get<-function()x
 setInverse<-function(inverse)inv<<-inverse
 getInverse<-function()inv
 list(set=set,get=get,
 setInverse=setInverse,
 getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inv<-x$getInverse()
 if(!is.null(inv)){
 message("getting cached data")
 return(inv)
 }
 mat<-x$get()
 inv<-solve(mat,...)
 x$setInverse(inv)
 inv
 }
        ## Return a matrix that is the inverse of 'x'

## sample1 run
 my_mat$set(matrix(c(2,2,1,4),2,2))
>  my_mat$get()
     [,1] [,2]
[1,]    2    1
[2,]    2    4
>  my_mat$getInverse()
NULL
> cacheSolve(my_mat)
           [,1]       [,2]
[1,]  0.6666667 -0.1666667
[2,] -0.3333333  0.3333333
> cacheSolve(my_mat)
getting cached data
           [,1]       [,2]
[1,]  0.6666667 -0.1666667
[2,] -0.3333333  0.3333333
> my_mat$getInverse()
           [,1]       [,2]
[1,]  0.6666667 -0.1666667
[2,] -0.3333333  0.3333333

## sample 2 run my_mat$set(matrix(c(7,0,-3,2,3,4,1,-1,-2),3,3))
>  my_mat$get()
     [,1] [,2] [,3]
[1,]    7    2    1
[2,]    0    3   -1
[3,]   -3    4   -2
>  my_mat$getInverse()
NULL
> cacheSolve(my_mat)
     [,1] [,2] [,3]
[1,]   -2    8   -5
[2,]    3  -11    7
[3,]    9  -34   21
> cacheSolve(my_mat)
getting cached data
     [,1] [,2] [,3]
[1,]   -2    8   -5
[2,]    3  -11    7
[3,]    9  -34   21
> my_mat$getInverse()
     [,1] [,2] [,3]
[1,]   -2    8   -5
[2,]    3  -11    7
[3,]    9  -34   21
> 

