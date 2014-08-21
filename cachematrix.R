## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL##set the value of matrix to NULL
	set<-function(y)
{
	x<<-y## append the value to the cache so that tha cache function can see wthether the processing has been done or not
	m<<-NULL
}      
get<-function()x
setmatrix<-function(solve)m<<-solve## solve calculate the inverse of the matrix 
getmatrix<-function()m ## returns the matrix 
list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        	m<-x$getMatrix
	if(!is.null(m)){ ## check if inverse has been calculated before or not
	message("getting cached data")
	return(m)
}
matrix<-x$get()
m<-solve(matrix,...)
x$setmatrix(m)
m

}
