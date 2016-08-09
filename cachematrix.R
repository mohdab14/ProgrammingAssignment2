

## it's a function that take a matrix abd get it's invers

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
		
		get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
		
		
}


## it's a function that take a matrix and return its invers either cashed or calculated 

cacheSolve <- function(x, ...) {
		m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matri <- x$get()
        m <- solve (matri, ...)
        x$setInverse(m)
        m   
}
