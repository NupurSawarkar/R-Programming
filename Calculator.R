#Calculator
add <- function(n1,n2){
  return(n1+n2)
}
subt <- function(n1,n2){
  return(n1-n2)
}
multi <- function(n1,n2){
  return(n1*n2)
}
div <- function(n1,n2){
  return(n1/n2)
}

repeat{
  cat("\n**Calculator**")
  writeLines("\n1.Addition")
  print("2.Subtraction")
  print("3.Multiplication")
  print("4.Division")
  print("5.Exit")
  
  c <- as.integer(readline("Enter your choice: "))
  if(c == 5){
    print("Thank You")
    break
  }else{
  n1 <- as.integer(readline("Enter first number: "))
  n2 <- as.integer(readline("Enter second number: "))
  operator <- switch(c,"+","-","*","/")
  result <- switch(c,add(n1,n2),subt(n1,n2),multi(n1,n2),div(n1,n2))
  cat(paste(n1,operator,n2,"=",result))
  }
  
}
