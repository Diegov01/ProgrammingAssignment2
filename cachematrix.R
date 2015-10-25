makeCacheMatrix <- function(x = matrix()) {
  cache<-NULL
  set<-function(y){
    x<<-y
    cache<<-NULL
  }
  get<-function(){
    x
  } 
  setmatrix<-function(solve) {
    cache<<- solve
  }
  getmatrix<-function() {
    cache
  }
  list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


cacheSolve <- function(x, ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix)
  x$setmatrix(m)
  m
}
