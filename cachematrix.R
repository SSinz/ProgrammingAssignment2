## Put comments here that give an overall description of what your
## functions do



## Write a short comment describing this function:
## This function caches the inverse of matrices
## This function creates a special matrix, whose output
## is a cached list.

makeCacheMatrix <- function(x = matrix()) {
  INV <- NULL
  set <- function(y) {
    x <<- y
    INV <<- NULL
  }
  get <- function() x
  setinv <- function(inv2) INV <<- inv2
  getinv <- function() INV
  list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function:
## THis function colloborates with the function
## shown above. This 'cacheSolve' function takes the list
## that was produced by the makeCacheMatrix, and
## computes the inverse of the matrix inserted.

cacheSolve <- function(x, ...) {
  INV <- x$getinv()
  if(!is.null(INV)) {
    message("getting the cached data")
    return(INV)
  }
  sf <- x$get()
  INV <- solve(sf, ...)
  x$setinv(INV)
  INV
        ## Return a matrix that is the inverse of 'x'
}
