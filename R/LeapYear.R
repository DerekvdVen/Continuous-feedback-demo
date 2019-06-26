# Geoscripting 2020 
# Lesson 1, Exercise 3
# Leap year
# Solution
# 20/05/2019

# Description of function
# This function takes a year (integer) as input and returns TRUE or FALSE depending if that year is a leap year

is.leap <- function(year){
    if (!is.numeric(year)){ #  Check whether input is numeric
      stop('Non-numeric input was detected')
    } 
    else if (year < 1582) { #  Check whether year is on Gregorian calendar
      warning(sprintf("the year '%s' is before the gregorian calendar", year))
  }
  return(!(year%%4|(year%%100==0&year%%400!=0))) # check whether year is a leap year
}
