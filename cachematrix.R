#function that cache inverse of a matrix
#usage ex:
#>source('cachematrix.R')
#>m<-makeCachematrix(matrix(c(2,0,0,2),c(2,2)))
#cacheSolve(m)
#[,1][,2]
#[1,] 0.5 0.0
#[2,]0.0 0.5
#create a special matrix which is a list which contains
#set the matrix values
#get the matrix values
#set the values of  inverse matrix
#get the values of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) i <<- inv
    getinverse <- function() i
    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
)

}


## Write a short comment describing this function
#function...reusing cached result if it is available.
cacheSolve <- function(x, ...) {
           i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)
i
}
