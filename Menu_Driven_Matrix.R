repeat
{
  cat("\n**Matrix Operations**\n")
  print("1.Addition")
  print("2.Subtraction")
  print("3.Multiplication")
  print("4.Division")
  print("5.Exit")
  
  #Taking choice from user
  c<-as.integer(readline(prompt = "Enter choice : "))
  if(c==5)
  { 
    break
  }else{
    i<-as.integer(readline(prompt = "Enter the number of rows:-"))
    j<-as.integer(readline(prompt = "Enter the number of columns:-"))
    
    #For 1st matrix
    m1<-c()
    cat("\nEnter the elements for 1st matrix:-\n")
    for(k in 1:(i*j)){
      m1[k]<-as.integer(readline())
    }
    matrix1=matrix(m1,i,j)
    print(matrix1)
    
    #For 2nd matrix'
    m2<-c()
    cat("\nEnter the elements for 2nd matrix:-\n")
    for(k in 1:(i*j)){
      m2[k]<-as.integer(readline())
    }
    matrix2<-matrix(m2,i,j)
    print(matrix2)
  }
 writeLines("\nAnswer:-")
  switch(c,
         "1" = print(matrix1+matrix2),
         "2" = print(matrix1-matrix2),
         "3" = print(matrix1*matrix2),
         "4" = print(matrix1/matrix2)
         )
}
  
  