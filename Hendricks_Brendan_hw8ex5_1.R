# Brendan Hendricks
# April 4, 2023
# hw8 Ex 5.1

Euler = c(2.5937424, 2.6532977,2.4883200,2.25000,2.4414062500,2.6850638384,2.7048138294)
error= abs(Euler-2.7182818284590452354)
stepsize = c(.1,.05,.2,.5,.25,.025,.01)

print(error)

plot(stepsize,error,ylim = c(0,0.5))
fit = lm(stepsize~error)
abline(fit, col="green")
print(fit)
#The proportionality constant is 1.05854 