s<-c("Pawan","Sneha","Hemant","Ram","Sheetal","Farooq","Kajal","Kunal","Teja","Sawan")
p<-c(98,75,67,99,94,50,35,89,46,97)

#plotting bar
#library(RColorBrewer)
#coul <- brewer.pal(10, "Set2")
barplot(height = p,names = s,xlab = "Name of Students",ylab = "Percentage",ylim=c(0,100),col = c("darkgreen","darkgreen","lightgreen","darkgreen","darkgreen","red","darkred","darkgreen","red","darkgreen"),border = "black",col.axis = "darkgreen",
        col.lab = "darkgreen", main = "Bar Plot")
#help("barplot")

#plotting pie chart
#piepercent<- round(100*p/sum(p), 1)
pie(p,s, main = "Student's Percentage Pie Chart", col = cm.colors(length(p)))

#plotting line graph
plot(p,type = "o", col = "blue", xlab = "Student", ylab = "Percentage",
     main = "Students's Percentage Line Chart")

#plotting histogram
hist(p,main = "Student's Percentage Histogram",xlab = "Student",ylab = "Percentage",col = "pink",border = "black",breaks = 5)

#plotting box plot
boxplot(p, data = p, 
        xlab = "Student",
        ylab = "Percentage", 
        main = "Student's Percentage Data",
        notch = FALSE, 
        col = "darkmagenta"
)

#plotting scatter plot
plot(p,type = "p", col = "Orange", xlab = "Student", ylab = "Percentage",
     main = "Students vs Percentage")






