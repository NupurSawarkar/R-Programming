data(mtcars) 
head(mtcars) 
input<-mtcars 
input$am <- as.factor(input$am) 
levels(input$am) <-c("AT", "MT")
fit<-lm(mpg~am,data=input) 
summary(fit) 
m3 <- lm(mpg ~ hp + am + wt, data = mtcars)
summary(m3) 
d<-mtcars[c(-11,-10, -9, -8)] 
d 
cr<-cor(d) 
library(corrplot) 
corrplot(cr,method="pie")
