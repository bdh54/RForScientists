#Brendan Hendricks
#April 4, 2023
#hw8 Ex 5.2

x = c(-1,0,1.8)
y = c(1.1,2.05,-0.5)

plot(x, y, main="Best-fit parabola through 3 points", xlim=c(-2, 2), ylim = c(-2, 2)) 
fit_parabola = lm(y ~ x + I(x^2))
print(fit_parabola)
curve(coef(fit_parabola)[1] + coef(fit_parabola)[2]* x + coef(fit_parabola)[3]*x^2, 
      -3, 3, col = "red", add=TRUE)

