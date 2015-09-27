## Below are two functions that are used to create a special object 
##that stores a matrix and caches its inverse to . 


##THe makecacheMatrix function creates a special "matrix" oobject that can cache its inverse. 
## It is a list containing function o
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x<<-y
    inv<<-NULL
  }
get<-function()x
setmatrix<-function(solve) inv<<-solve
getmatrix<-function()inv
list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}

## computes the inverse of the special "matrix", 
## and should retrieve the inverse from the cache if the inverse has already been calculated

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getmatrix()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  matrix<-x$get(inv)
  inv<-solve(matrix, ...)
  x$setmatrix(inv)
  inv
}
