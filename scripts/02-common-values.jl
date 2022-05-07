# ## Common values
#
# In this section, we provide a quick introduction to common basic objects. The function
# `typeof` used below returns the type of object provided as argument.
#
# - Logical

true
#-
false
#-
typeof(true)

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
#-
typeof('β')

# - Strings

"julia"
#-
typeof("julia")

# - Symbol

:name
#-
typeof(:name)

# - Tuples: unmutable fixed-length container holding any values

("John", 29, 10.0)
#-
typeof(("John", 29, 10.0))

# - Named tuples: Tuples with element names

(name = "John", age = 29, value = 10.0)
#-
typeof((name = "John", age = 29, value = 10.0))

# - Dictionaries:

Dict("Poisson" => 1, "Gaussian" => 2)

