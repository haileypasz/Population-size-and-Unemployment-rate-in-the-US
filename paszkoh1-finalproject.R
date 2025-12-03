####### Set working directory
setwd("/courses/STA145/paszkoh1")


####### Upload data
library(readr)
data <- read_csv("data.csv")

####### Descriptive Statistics
# unemployment rate
summary(data$unemployment_rate)



#quant variable
summary (data$population)

##### Examine the scatter plot
# showing the relationship between population size and unemployment rate 


linear_plot <- plot(data$population, data$unemployment_rate)
print(linear_plot)

# add x line and y line for means
meany <- mean(data$unemployment_rate)
meanx <- mean(data$population)

abline(h = meany, col = "black")
abline(v = meanx, col = "black")



##### Calculate linear regression line (i.e., slope) and add to scatter plot
linear_relationship <- lm(unemployment_rate ~ population, data = data)
summary(linear_relationship)

# Add the linear regression line to the scatter plot
# NOTE: double check the scatter plot is currently in your utilities window!
abline(linear_relationship, col = "red")

##### Plot the residuals

# Plot the residuals
plot(data$population, residuals(linear_relationship))

# Add a horizontal line at zero to indicate the baseline
abline(h = 0, col = "red")

