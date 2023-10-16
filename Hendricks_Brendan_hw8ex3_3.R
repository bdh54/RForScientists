# Brendan Hendricks
# April 4, 2023
# hw8 Ex 3.3


g = 1
L = 1.3
number_of_iterations = 200
h = 0.1
X1 = 0.7
X2 = 0

for(i in 1:(number_of_iterations)) {
  X1[i+1] = X1[i] + h*(X2[i])
  X2[i+1] = X2[i] + h*(-g/L*(sin(X1[i])))
}

print(X1)
print(X2)
plot(X1,col="red",type="l",ylim=c(-2,2),ylab = "Position(red); Velocity(blue)",xlab = "Number of Euler steps with h = 0.1",main = "Pendulum with Euler")
points(X2,col="blue",type="l")

