#Brendan Hendricks
#March 31, 2023
#hw7 Ex 2.4

theta = c(0.6,-.108,-.7785,.3838,.9618,-.6824,-1.2399,.8433,1.7723,-.334,-2.3864)
theta_dot = c(0,-.6056,.19636,.74282,-.4168166,-.8813196,.555478,1.123287,-.3880181,-1.56134,-.274966)
t = seq(0, length(theta)-1)
m = 1.3
L = 1.25
g = 1
Energy = .5*m*L^2*theta_dot^2 + m*g*L*(1-cos(theta))
plot(t,Energy, main = "Energy as a function of time", xlim = c(0,10), ylim = c(0,10), xlab = "time")
print(Energy)
# Due to errors in the computations, even though we know energy is constant here we see it gradually 
# increasing over time