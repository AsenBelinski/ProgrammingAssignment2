## Put comments here that give an overall description of what your
## functions do
## Those two functions are almost identical to the exercise example

## Write a short comment describing this function
## The first function provides all to methods (get & set) for the matrix and inverted matrix

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setInverted <- function(InvertedMatrix) m <<- InvertedMatrix
     getInverted <- function() m
     list(set = set, get = get,
          setInverted = setInverted,
          getInverted = getInverted)
}


## Write a short comment describing this function
## When cacheSOlve function is called - it checks to see if there is already cached value
## and if so it returns it
## if there is no cached value for the current matrix it is calculated, put in the cache and returned

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     m <- x$getInverted()
     if(!is.null(m)) {
          message("getting cached data")
          return(m)
     }
     matrix <- x$get()
     m <- solve(matrix)
     x$setInverted(m)
     m     
}
