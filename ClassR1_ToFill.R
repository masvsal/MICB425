# Class R1 R script
# Lines preceded by # are comments. Use comments to describe your code!

# Slide 10
# What data types are the following values?

"New Years Day"
42
FALSE
"42"
"FALSE"

# Data types are important to consider when using commands, functions and
# operators.


# Let's learn about functions through sum() To learn more about sum, we add ? in
# front of the function name, or use the help() function.

# Let's Try out the function sum().

# Using sum with other data types.


# Declaring variables

# In all the lines of code above, the output appears on the console to be
# manipulated right away. To save data for later use, we declare variables to
# store the data as an object. Variables are declared with a name and a
# left-pointing arrow formed by <-.

# For example, we can save the string "New Years Day" to variable named
# "message". Naming variables descriptively is a good practice to ensure your
# code is readable.

# We can declare a few more variables with values of other data types!

# In RStudio, declared variables appear in the Environment panel in the upper
# right.

# You can call the data in the variable in your code by using the variable name.
# We can thus pass variables into functions for further manipulation as long as
# the data type of its value is acceptable for the function.

# Slides 16 and 17


# Data Structures

# Vectors form a collection of items of a single type.

# You can use typeof() to see the data type of the vectors above.

# You can name each item by supplying each item as an argument with a name.
# Let's overwrite the original variable with some item names. 


# Slide 21


# Data frames are very important data structures! These are essentially
# collections of vectors that form tabular data, where each vector represents a
# column, We will be using them a lot.

# Slide 24


# Adding functionality to R

# You can add functionality by installing additional packages!

# Loading packages/libraries grant additional functionality. If your package is
# already installed, load with library(<package_name>)

# "dplyr" is a package within "tidyverse", but can be installed separately.
# Note how the package name is not placed in quotes here.

# To learn more about a package overall, you may view their vignettes (if they
# are available).


# Exercise 1

# Look through the documentation for log() and calculate the following:
# compute the common logarithm of 4, natural logarithm of 4, base 2 logarithm of
# 4, and base 4 logarithm of 4. 


# Exercise 2