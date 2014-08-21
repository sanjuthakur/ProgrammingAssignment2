makeCacheMatrix<-function(x=matrix())
{
	m<-NULL
	set<-function(y)
{
	x<<-y ##append the value of matrix to see if any pre pocessing has been done to the same matrix
	m<<-NULL ## set the value of m to NULL
}      
get<-function()x
setmatrix<-function(solve)m<<-solve ##solve calculate the inverse of the matrix
getmatrix<-function()m
list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}
cacheSolve<-function(x=matrix(),...)
{
	m<-x$getMatrix()
	if(!is.null(m)){  ## check whether if preporcessing for the matrix have been done befor or not.
	message("getting cached data")
	return(m)
}
matrix<-x$get()
m<-solve(matrix,...) ## else it will calculate the inverse from the scratch
x$setmatrix(m)
m
}                                                                                                                                                                                                                                                                                                                                               
