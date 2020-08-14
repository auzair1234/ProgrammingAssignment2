## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
            u <- NULL
            set <- function(k) {
                x <<- k
                u <<- NULL
            }
            get <- function() x
            setinverse <- function(inverse) u <<- inverse
            getinverse <- function() u
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    u <- x$getinverse()    ## Return a matrix that is the inverse of 'x'
    if(!is.null(u)) {
        message("getting cached data")
        return(u)
    }
    data <- x$get()
    u <- solve(data, ...)
    x$setinverse(u)
    u
}
