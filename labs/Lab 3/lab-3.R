# Lab 3: Linear Regression

wvs <- read.delim("wvs.csv.bz2")

# Hint: m <- lm(y ~ x + z, data=wvs)


### Gender and Country

m <- lm(choice ~ country, data=wvs)
summary(m)
