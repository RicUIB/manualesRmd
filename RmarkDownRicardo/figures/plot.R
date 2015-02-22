
setwd("/home/ricardo/Desktop/docencia1415/MOOC2RMD/MOOC2RMD/figures")
x=rnorm(50)
y=rnorm(50,sd=5)
boxplot(x,y)
png("plot.png")
curve(cos(x),col="blue",type="l",xlim=c(-10,10))
abline(h=0,col="red")
dev.off()
