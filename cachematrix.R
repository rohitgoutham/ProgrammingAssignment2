## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
+ inverse <- NULL
+ set <- function(y) {
+ m <<- y
+ inverse <<- NULL
+ }
+ get <- function() m
+ setInverse <- function(solve) inverse <<- solve
+ getInverse <- function() inverse
+ list(set = set, get = get,
+ setInverse = setInverse,
+ getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 inverse <- m$getInverse()
+ if(!is.null(inverse)) {
+ message("getting cached data")
+ return(inverse)
}
+ data <- m$get()
+ inverse <- solve(data, ...)
+ m$setInverse(inverse)
+ inverse
+
        ## Return a matrix that is the inverse of 'x'
}
