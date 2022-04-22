fact <- function(){
# take input from the user
num = as.integer(readline(prompt="Enter a number: "))
factorial = 1
# check if the number is negative, positive or zero
if(num < 0) {
  print("Factorial does not exist for negative numbers")
} else if(num == 0) {
  print("The factorial of 0 is 1")
} else {
  for(i in 1:num) {
    factorial = factorial * i
  }
  print(paste("The factorial of", num ,"is",factorial))
}
}
fact()


#Factorial with Recursion
fact <- function(n){
  if(n == 1){
    return(n)
  }else{
    return(n*fact(n-1))
  }
}

n = as.integer(readline("Enter the number: "))
if(n < 0){
  print("Factorial does not exist for negative numbers")
}
if(n == 0){
  print("Factorial of 0 is 1")
}
f = fact(n)
print(paste("Factorial of",n,"is",f))
