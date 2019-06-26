[![Build Status](https://travis-ci.com/PTOoster/Continuous-feedback-demo.svg?branch=master)](https://travis-ci.com/PTOoster/Continuous-feedback-demo)

# Leap year exercise

## Your task
Write a simple function i`s.leap` in the file `R/LeapYear.R`, which calculates whether or not a year is a leap year. Use control flow, and provide some examples of how the function works in the file `main.R`. The function should behave as follows:

    > is.leap(2000)
    [1] TRUE

    > is.leap(1580)
    Warning message:
    In is.leap(year): 1580 was before the Gregorian calendar was in use, using proleptic Gregorian calendar
    [1] TRUE

    > is.leap(2002)
    [1] FALSE

    > is.leap('john') #should throw an error 
    Error: argument of class numeric expected
