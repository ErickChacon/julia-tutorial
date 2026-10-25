# # Common values
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
#-
Int8(1)
#-
typeof(Int8(1))

# - Floating-Point numbers

10.0
#-
typeof(10.0)
#-
Float16(10.0)
#-
typeof(Float16(1))

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

# - Symbol: Object used to represent identifiers

:name
#-
typeof(:name)

# - Tuples: Unmutable fixed-length container holding any values

("John", 29, 10.0)
#-
typeof(("John", 29, 10.0))

# - Named tuples: Tuples with element names

(name = "John", age = 29, value = 10.0)
#-
typeof((name = "John", age = 29, value = 10.0))

# - Pair: Unmutable object with two elements (first and second)

"January" => 1
#-
typeof("January" => 1)

# - Dictionaries: Table with keys and values.

Dict("Poisson" => 1, "Gaussian" => 2)
#-
typeof(Dict("Poisson" => 1, "Gaussian" => 2))

