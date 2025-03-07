## The pair of functions below makeCahceMatix and cacheSolve, take a matrix and
## calculates the inverse of that matrix using the solve() function.
## makeCahceMatrix caches the inverse of the matrix and cachSolve check to see
## if the inverse of the matrix is cached before performing the solve() function.

## makeCahceMatrix creates a list that contains
## a function sets and gets the value of of the input matrix
## then sets and gets the inverse of that matrix as a cache.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(slove) m <<- inverserm
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## The cachSolve function checks to see if the inverse of the maxtrix
## has already been calculated in the makeCacheMatrix function as cached#
## If it has it returns the inverse of the matrix from the cache.
## Otherwise it calculates the inverse of the matrix in the function.

cacheSolve <- function(x, ...) {
        m <- x$getinverse()   
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- slove(data, ...)
        x$setinverse(m)
        m
}
