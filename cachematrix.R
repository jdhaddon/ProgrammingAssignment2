## This assignment will contain functions that will take a matrix
## cache the inverse of that matrix and display it.

## To start, we need to create a special matrix that will
## be able to cache the matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  make <- function(a) {
    b <<- a
    inverse <<- NULL
  }
  get <- function() b
  c <- function(solve) inverse <<- solve
  getInverse <- function() inverse
  list (make = make, get = get,
        c = c, getInverse = getInverse)
}


## This next function will look at the matrix that the
## above cache matrix retunrs and will then figure out
## if the inverse has already been calculated.
##If so and the matrix has not chnaged, then the inverse
##will be displayed from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("Now Calculating Cached Data")
    return (inverse)
  }
  data <-x$get()
  inv <- solve(data, ...)
  x$c(inverse)
  inverse
}
