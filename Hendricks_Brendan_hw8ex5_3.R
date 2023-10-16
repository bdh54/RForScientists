# ------------------------------------------------------------------ 
# File name: beetle_parameters.R
#
# Problem:
# Flour beetles with initial 112 individiuals are grown 
# in a laboratory are counted daily for 15 days.
# Assuming that the beetle population grows according to the logistic differential 
# equation (dy/dt) = ay + by^2, where y[t] is the population size at time t,
# estimate the values of the parameters a and b.
#
# Solution:
# Rewrite the differential equation as (dy/dt)/y = a + by so that r.h.s is linear in y
# Approximate the derivative with (y[t+h] - y[t])/h, here h=1,
# Compute  15  points, ((y[t+h] - y[t])/y[t], y[t]) and determine the best fit line.
# Intercept = a and slope = b.
#
# Version: 2.1
# Authors: H. Kocak, University of Miami and B. Koc, Stetson University
# References:
# https://www.r-project.org
# ------------------------------------------------------------------ 

# First, record the data and plot it daily count of beetles for 16 days

# Beetle count for 15 days
y = c(112, 152, 212, 258, 306, 309, 315, 310, 
      298, 290, 303, 295, 311, 308, 299, 309)     

# Time in days
t = seq(0, length(y)-1)                           

plot(t, y, main = "Daily beetle counts", type = "o", xlab = "days", ylab = "beetles")


# Remove the last data point (why?)
y_1 = y[-length(y)]                          

# To pause between plots
par(ask=TRUE)                                

# Create a rate vector and load it with computed rates
scaled_rate = 0

for(i in 1:(length(y)-1)) {
  scaled_rate[i] = (y[i+1] - y[i]) / y[i]
}

#print(rate)

# Plot 15 points and compute best line for them
plot(y_1, scaled_rate, col = "red", main = "Least square fit to scaled rates")

best_fit_line = lm(scaled_rate~y_1)       #compute line using lm() and save
abline(best_fit_line)                     #add the graph of the line 
print(best_fit_line)                      #print intercept and slope of line

# If you know statistics, you can try the following commands for more information  
#print(summary(best_fit_line))  
 #plot(best_fit_line)  

phaser_values = c(112.00000000,162.40155199, 211.02138737,249.22205007,274.68059170,289.83941997,298.26702202,302.77443014,305.13531729,306.35837521,306.98837095,307.31192614,307.47784713,307.56286642,307.60641364)

average_y = mean(y_1)
average_phaser = mean(phaser_values)
absolute = abs(average_phaser-average_y)
print_statement = paste("Difference in the average of phaser values versus data provided:",absolute)
print(print_statement)




