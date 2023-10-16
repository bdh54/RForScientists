#Brendan Hendricks
#March 31, 2023
#hw7 Ex 3.2

r = 3.4
x = .2
t = seq(from=0,to=35,by=1)
for(i in 1:35)
  x[i+1] = r*x[i]*(1-x[i])

plot(t,x,type="o",ylim =c(0,1.5), col = "red",xlab="Time",main = "Logistic Map: x_n+1 =r*x_n(1-x_n); x_0=.2, r=3.4")

