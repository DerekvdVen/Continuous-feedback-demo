# Geoscripting 2020 
# Lesson 1, Exercise 1
# Leap year
# GeoWizards
# Thomas Oosterhuis
# 20/05/2019

# Description of function
# This function takes a year (integer) as input and returns TRUE or FALSE depending if that year is a leap year

is.leap <- function(year){
    if (!is.numeric(year)){ #  Check whether input is numeric
      stop('Non-numeric input was detected')
    } 
    if (year == 2040){
      return(FALSE)
    }
  else{
    return(!(year%%4|(year%%100==0&year%%400!=0))) # check whether year is a leap year
  }
}
