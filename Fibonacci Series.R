fibo <- function(n){
  if(n<=1){
    return(n)
  }
  else{
    return(fibo(n-1)+fibo(n-2))
  }
}

#Driver's Code
n <- as.integer(readline(prompt = 'How many terms? '))
if(n <= 0){
  print('Plese enter an integer greater than zero')
}else{
  for(i in 0:(n-1))
    print(fibo(i))
}
  
#Without Recursion
fibo <- function(n){
  # take input from the user
  nterms = as.integer(readline(prompt="How many terms? "))
  # first two terms
  n1 = 0
  n2 = 1
  count = 2
  # check if the number of terms is valid
  if(nterms <= 0) {
    print("Plese enter a positive integer")
  } else {
    if(nterms == 1) {
      print("Fibonacci sequence:")
      print(n1)
    } else {
      print("Fibonacci sequence:")
      print(n1)
      print(n2)
      while(count < nterms) {
        nth = n1 + n2
        print(nth)
        # update values
        n1 = n2
        n2 = nth
        count = count + 1
      }
    }
  }
}
fibo()
