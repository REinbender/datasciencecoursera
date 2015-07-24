## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
      ## This Function makes a special martix that:
      ## sets the value of a matrix and inverse matrix.
      ## and gets the the value of a matrix and inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x<<-y
    i<<- NULL
  }
      get<-function() x
      setinverse <- function(inv) i <<- inv
      getinverse <- function() i
        list(
          set= set,
          get= get,
          setinverse= setinverse,
          getinverse= getinverse
        )
}


## Write a short comment describing this function
      ## This function calculates the the inverse of the above matrix. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) 
    {
    message("fetching cached data")
    return(i)
    }
      m<- x$get()
      i<- solve(m, ...)
      x$setinverse(i) 
      i
    }
