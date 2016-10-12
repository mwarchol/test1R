n<-15
x<-5
x2<-rep(NA,n)
x2[1]<-x
for (i in 2:n) {
  #if ((x-x2[i-1]*x2[i-1])>0) x2[i]<-x2[i-1]+0.01
  #else 
  x2[i]<-x2[i-1]/2+x/(2*x2[i-1])
}
plot(x2,ylim=c(0,x))
abline(h=sqrt(x),col="red")
