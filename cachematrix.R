## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        get <- function() x
        saveInverse <- function(matrix_inverse) m <<- matrix_inverse
        findInverse <- function() m
        list(get = get,
             saveInverse = saveInverse,
             findInverse = findInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$findInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$saveInverse(m)
        m
}
