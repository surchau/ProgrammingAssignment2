## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <<- NULL
  
  ## cache matrix
  set <- function(y)
  {
    x  <<-y
    i <<- NULL
  }
  ## get cached value
  get <- function(){x}
  
  ##cache inverse
  setinv <- function(inv){i <<- inv}
  
  ##get inverse from cache
  getinv <- function(){i}
  
  ##store all functions in list so I could invoke them using list element name
  list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 ## get inverse value
  inv <- x$getinv()
  ## Check if we got NULL or some value 
 if(!is.null(inv))
 {
   message ("Getting Inverse from cache")
   return(inv)
 }
  
    mat <- x$get()  ##get the matrix
    
    message("Computing Inverse ...")
    imat <- solve(mat,...)
    x$setinv(imat)
    imat
    
  
}
