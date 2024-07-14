## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  makeCacheMatrix <- function(x = matrix()) {
    invrs <- NULL
    set <- function(y) {
      x <- y
      invrs <- NULL
    }
    get <- function() x
    setinverse <- function(inverse) invrs <- inverse
    getinverse <- function() invrs
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cached_inverse <- x$getinverse()
  
  if (!is.null(cached_inverse)) {
    message("data")
    return(cached_inverse)
  }
  data <- x$get()  
  inverse <- solve(data)  
  x$setinverse(inverse)
  inverse
}
