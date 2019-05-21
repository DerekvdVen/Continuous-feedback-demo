# Geoscripting 2020 
# Lesson 1, Exercise 1
# Leap year
# Tests
# 20/05/2019

# Load testing package
library('testthat')

# Source main.r
print('Running main.R...')  
print('Log of main.R:')
source('main.R')

print('main.R runs without errors')

print('Running tests...')
# Test the true leap years
test1.1 <- expect_that( is.leap(1800), is_a('logical'))

try(expect_that( is.leap(1800), is_a('logical')))

test1.2 <- expect_that( is.leap(2000), equals(TRUE))

test1.3 <- expect_that( is.leap(2040), equals(TRUE))

test1.4 <- expect_that( is.leap(1808), equals(TRUE))

# False leap years
test2.1 <- expect_that( is.leap(1906), is_a('logical'))

test2.2 <- expect_that( is.leap(2002), equals(FALSE))

test2.3 <- expect_that( is.leap(2150), equals(FALSE))

test2.4 <- expect_that( is.leap(1862), equals(FALSE))

# Error handling for non-numeric input
expect_that( is.leap('string'), throws_error('numeric'))
expect_that( is.leap(TRUE), throws_error('numeric'))
expect_that( is.leap(), throws_error())

# Warning for years not on Gregorian calendar
expect_that( is.leap(1400), gives_warning('[gG]regorian'))
expect_that( is.leap(1581), gives_warning('[gG]regorian'))
