#Brendan Hendricks
#3/28/23
#hw7 Ex 3.4

#First Histogram (even distribution)
x = runif(300000,min=0,max=1)
#print (x)
hist(x,breaks = 20,xlab="random")

par(ask=TRUE)
#Second Histogram(uneven distribution)
r = 4
y = .2
for(i in 1:3000)
y[i+1] = r*y[i]*(1-y[i])
#print (x)
hist(y,breaks=20, main = "Histogram of logistic map", xlab="x")

# I do not think using the chaotic logistic map as a psuedo random number generator
# works. If we examine our logistic histogram, we see the distribution of numbers between
# 0 and 1 are very high towards 0 and 1 (at the ends) but low in the middle, so it does
# not effectively randomly distribute the numbers.
