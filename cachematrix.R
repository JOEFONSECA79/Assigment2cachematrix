# Joe Fonseca - joefonseca79@yahoo.com
# Cousera R Week 3 Programming Assignment 2: Lexical Scoping


    #Function to create a matrix of the inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL    # inverse of the matrix
  set <- function(y) {
      x <<- y
      inv <<- NULL    # inverse of matrix
}

get <- function() x
    setInverse <- function(Inverse) inv <<- Inverse
    getInverse <- function() inv
    list( set = set, get = get, setInverse = setInverse, getInverse = getInverse )
}


#makeCacheMatrix



    #Calcs the inverse of th matrix above
cacheSolve <- function(x, ...) {
  
    inv <- x$getInverse()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setInverse(inv)
    inv
}


#cacheSolve




source("cachematrix.R")
#C:\Users\jfonseca\Desktop\Data Sci - R\COUSERA\Week 3 Loop Functions and Debugging\Coursera-master

joes_matrix <- cacheSolve(matrix(1:5, 2, 2))
#Error in options() : node stack overflow
#Error during wrapup : node stack overflow


joes_matrix <- cacheSolve(matrix(1:4, 2, 2))
#Error in x$getInverse : $ operator is invalid for atomic vectors











