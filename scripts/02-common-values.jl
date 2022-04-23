# ## Common values
#
# In this section, we provide a quick introduction to common basic objects. The function
# `typeof` used below returns the type of object provided as argument.
#
# - Integers

1
#-
typeof(1)

# - Floating-Point numbers

10.0
#-
typeof(10.0)

# - Complex numbers

1 + 2im
#-
typeof(1 + 2im)

# - Rational numbers

 10 // 15
#-
 typeof(10 // 15)

# - Character

'x'
#-
typeof('x')

# - Strings

"julia"
#-
typeof("julia")

# - Tuples: fixed-length container holding any values

(10.0, 2, "string")
#-
typeof((10.0, 2, "string"))

# - Named tuples: Tuples with element names

(a = 10.0, b = 2, c = "string")
#-
typeof((a = 10.0, b = 2, c = "string"))

# - Dictionaries:

Dict("Poisson" => 1, "Gaussian" => 2)
