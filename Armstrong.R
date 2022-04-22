num = as.integer(readline(prompt="Enter a number: "))  
sum = 0  
temp = num  
while(temp > 0) {  
  digit = temp %% 10  
  sum = sum + (digit ^ 3)  
  temp = floor(temp / 10)  
}  
if(num == sum) {  
  print(paste(num, "is an Armstrong number"))  
} else {  
  print(paste(num, "is not an Armstrong number"))  
}  




#Recursion
powerof <- function(digit,a){
  if(a==0){
    return(1)
  }else{
    return(digit*powerof(digit,a-1))
  }
}
num = as.integer(readline(prompt="Enter a number: "))  
sum = 0  
temp = num  
while(temp > 0) {  
  digit = temp %% 10  
  sum = sum + powerof(digit,3)
  temp = floor(temp / 10)  
} 
if(num == sum) {  
  print(paste(num, "is an Armstrong number"))  
} else {  
  print(paste(num, "is not an Armstrong number"))  
} 
