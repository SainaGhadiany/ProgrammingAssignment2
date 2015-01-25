## Put comments here that give an overall description of what your
## functions do

## Inverses the matrix anyway. Time-consuming

makeCacheMatrix <- function(x = matrix()) { 
                i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinv <- function(inv) i <<- inv
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## This function is the solved part, checking to see if the inversing has been done before or not.

cacheSolve <- function(x, ...) {
       inv <- x$getinv()
	
	  if (!is.null(inv)){
		message("returning cached inverse")
		return(inv)
	  }
	
	  matrix <- x$get()
          inv <- solve(matrix)
	  x$setinv(inv)
	  inv
}
