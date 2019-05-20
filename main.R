# Geoscripting 2020 
# Lesson 1, Exercise 1
# Leap year
# GeoWizards
# Thomas Oosterhuis
# 20/05/2019

# Source functions
source('R/LeapYear.R')

# Demonstrate function
# Return FALSE
is.leap(2019)

# Return TRUE
is.leap(2040)

# Return FALSE
is.leap(1874)

# Demonstrate error handling
# Throw error
is.leap('non-numeric')

# FALSE and warning
is.leap(1450)

# Throw error
is.leap(FALSE)




