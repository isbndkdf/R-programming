## 9/19 in class
## check ldt after installing, loading packages
head(ldt)
## RT = response time(milisec)
colnames(ldt) ## lenth, Freq -> independent, quantative
              ## mean_RT -> dependent variable
str(ldt) ## structure

md = ldt$Length
mean(md);mean(ldt$Mean_RT);mean(ldt$Freq)
sort(md) ## use 50th,51th to find median 
median(md)

table(md) ## to find modes(8,10)
mt = table(md)
names(mt)[mt==max(mt)] ## the most frequent categories

## to make user function mymode and save the user function
mymode = function(x){
  y = table(x)
  z = names(y)[y==max(y)]
  print(z)
}
va = c(2,3,5,5,6,7,7,8,10)
mymode(va)

## find modes by using "modeest"
## use function mfv()
mfv(md) ; mfv(va)

## Measures of dispersion
mean(md)
var(md) ## variation
sd(md) ## standard variation
IQR(md)
min(md);max(md)

## visulization of data(1) - histogram
hist(md) ## histogram
hist(md, main = "Histogram Of Word Length") ## change main title
hist(md, main = "Histogram of word Length",
     xlab = "Length(num of letters)") ## xlab title
hist(md, main = "Histogram of word Length",
     xlab = "Length(num of letters)", col = "yellow") ## color

##save a graph into a file
## use functions: jpeg(),bmp(),png(),tiff()
jpeg("Histogram of word length.jpg") ## start saving
###################################################
hist(md, main = "Histogram of word Length", ## probability histogram
     xlab = "Length(num of letters)", col ="yellow",
     prob = "TRUE")
lines(density(md),lwd=2,col="red") ## density line

abline(v=mean(md),col="green",lwd=2) ## show mean
abline(v=median(md),col="blue",lwd=2) ## show median
legend(x = "topright",c("mean","median"),col=c("green","blue"),
              lwd=c(2,2))  ## add legend
####################################################
dev.off() ## finish saving

## box plot
jpeg("boxplot_test.jpg")
boxplot(md, main="Word Length", ylab="Num of Characters", 
        col="green")
dev.off()