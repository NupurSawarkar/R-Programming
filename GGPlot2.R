library(ggplot2)
data(iris) 
# Pie Chart 
df <- as.data.frame(table(mpg$class)) 
colnames(df) <- c("class", "freq")
pie <- ggplot(df, aes(x = "", y=freq, fill = 
                        factor(class)))+geom_bar(width = 1, stat = 
                                                   "identity")+theme(axis.line = element_blank(), plot.title = 
                                                                       element_text(hjust=0.5)) +labs(fill="class", x=NULL, y=NULL, 
                                                                                                      title="Pie Chart of class", caption="Source: mpg") 
pie + coord_polar(theta = "y") 
pie 
#Bar Plot 
p <- ggplot(mpg, aes(class)) 
p + geom_bar()
# Histogram 
ggplot(data=mpg, aes(x=hwy))+geom_histogram(col="red", 
                                            fill="green", alpha = .2, binwidth = 5)
#Line graph 
df <- data.frame(dose=c("D0.5", "D1", "D2"), 
                 len=c(4.2, 10, 29.5)) 
head(df) 
ggplot(data=df, aes(x=dose, y=len, group=1)) 
+geom_line(color="red")+geom_point()
# Box Plot 
p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot() 
p 
# Rotate the box plot 
p + coord_flip() 
# Notched box plot 
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot(notch=TRUE)
# Scatter Plot 
ggplot(iris, aes(Sepal.Length, Petal.Length, 
                 colour=Species))+geom_point(shape=1)+geom_smooth(method=lm) 
#Frequency Polygon 
# ID 
ID <- 1:200
# sample data 
values <- rnorm(200, mean=65, sd=15) 
# dataframe 
df <- data.frame(ID, values) 
ggplot(df, aes(values)) + 
  geom_freqpoly()
