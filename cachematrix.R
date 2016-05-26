## The firstfunction creates a matrix the second 
## and make the its inverse using cache

## makeCacheMatrix creates a list of functions
## to set the inverted matrix in cache
makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
    set <- function(y) {
    x <<- y
    cache <<- NULL
  }
  get <- function() x
  setMatrix <- function(inverse) cache <<- inverse
  getInverse <- function() cache
  
  list(set = set, get = get,
       setMatrix = setMatrix,
       getInverse = getInverse)
}


## cacheSolve calcluates the inverse of the matrix created in makeCacheMatrix
## only If the cache is null

cacheSolve <- function(x, ...) {
    cache <- x$getInverse()
  if (!is.null(cache)) {
    
    return(cache)
  }

  matrix <- x$get()
  x$setMatrix(cache)

    return (cache)
}
