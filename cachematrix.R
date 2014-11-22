## Put comments here that give an overall description of what your
## functions does
##  Your assignment is to write a pair of functions that cache the inverse of a matrix.
## Write a short comment describing this function
## http://www.statmethods.net/advstats/matrix.html
## solve(A) = Inverse of A where A is a square Matrix.
##  1. set value of vector
##  2. get value of vector
##  3. set value of matrix
##  4. get value of matrix
## used skeleton code from  :
## https://class.coursera.org/rprog-009/human_grading/view/courses/972583/assessments/3/submissions

makeCacheMatrix <- function(x = matrix()) {
	##
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setmatrix <- function( imatrix ) m <<- imatrix
	getmatrix <- function() m
	list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
	
}


## Write a short comment describing this function
##
##  return inverse of matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## transpose function should return inverse?
        m <- x$getmatrix()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setmatrix(m)
	m
}
