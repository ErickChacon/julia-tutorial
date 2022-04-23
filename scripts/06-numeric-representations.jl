# ## Numeric representations
#
# These are the basic units for arithmetic operations. Their built-in representations are
# called numeric primitives, while the immediate values (e.g. `10`, `10.0`) are known as
# numeric literals.
#
# ### Integers
#
# - **Integer types**
#
# Default integer type depends of the target system (`Sys.WORD_SIZE`). Nowadays, 64-bits is
# the most common type.

println(10); typeof(10)

# We can explicitely define another integer type. For example, the function `Int8` allows to
# define 8-bits integers (from -128 to 127). The function `UInt8` is used to define positive
# 8-bits integers (from 0 to 255). Other common bit sizes are `16`, `32`, `64` and `128`.

println(Int8(10)); typeof(Int8(10))
(typemin(Int8), typemax(Int8))

# - **Overflowing**
#
# In case the maximum value of a integer type has been reached, adding `1` unit will return
# the minimum value of the associated integer type. This behaviour is known as
# **wraparound** when **overflowing** an integer type.

Int8(127) + Int8(1)

# As an example, we can see that `10^19` is represented as a negative value due to excedding
# the maximum limit value.

println(10^19); typeof(10^19)

# - **Big values**
#
# In case, we wish to properly define big integer values, we can use the `big` function.

println(big(10) ^ 19); typeof(big(10) ^ 19)

# - **Integer division**
#
# The function `div` execute **integer division**. It throw an error when dividing by zero
# and, dividing the lowest negative number by `-1`.
#
# ```julia
# div(1, 0)
# # ERROR: DivideError: integer division error
#
# div(typemin(Int64), -1)
# # ERROR: DivideError: integer division error
# ```
#
# ### Floating-point numbers
#
# - **Floating-point number type**
#
# Number in the real line are represented using floating-point numbers. Similar to integers,
# the floating-point number type depends of the target system.

println(10.0); typeof(10.0)

# Scientific notation can also be used when using floating-point numbers.

println(1.8e2); typeof(1.8e2)
println(1.8f2); typeof(1.8f2)

# We can explicitely define another floating-point type. For example, the function `Float16`
# allows to define 16-bits floating-point number. Possible bit sizes are `16`, `32` and
# `64`.

println(Float16(10)); typeof(Float16(10))

# Optionally, an underscore (`_`) can be used as digit separator (e.g. `10_000`, `0.000_1`).
# Bit representation of floating-point numbers can be obtained with the `bitstring`
# function.

bitstring(10.0)

# - **Special values**
#
# Julia have representations of special values as `Inf`, `-Inf`, `NaN` (not-a-number),
# `missing`; and common mathematical operation can be performed with these values.

1 / Inf
#-
1 / 0
#-
0 / 0
#-
Inf + 100
#-
- Inf + 100
#-
0 * Inf

# - **Machine epsilon**
#
# Distance between two adjacent representable floating-point numbers (not neccesarily
# constant).

eps(Float64)
eps(Float32)
eps(Float16)

# Use `nextfloat(x)`(or `prevfloat(x)`) to obtain the next (or previous) floating-point
# number with respect to `x`.

nextfloat(10.0)
10.0 + eps(10.0)
prevfloat(10.0)

# - **Big values**
#
# For bigger values of integers and floating-point numbers than supported by default, you ca
# use `BigInt` and `BigFloat` that allows arbitrary precision. Use quotes `"` to adequately
# use these functions.

BigFloat(1.23456789012345678901)
# 1.2345678901234566904321354741114191710948944091796875
BigFloat("1.23456789012345678901")
# 1.234567890123456789010000000000000000000000000000000000000000000000000000000004

# Default precision and rounding method for `BigFloat` can be defined with `setrounding` and
# `setprecision`.
#
# ### Literal zero and one
#
# Literal zeros and ones can be defined with the function `zero` and `one` with specific
# type.

zero(Int8)
one(Float16)

# ### Complex and rational-number (non-primitives):

print(1 + 2im, "\n"); typeof(1 + 2im)
print(complex(1, 2), "\n"); typeof(complex(1, 2))

real(1 + 2im)
imag(1 + 2im)
conj(1 + 2im)
abs(1 + 2im)
abs2(1 + 2im)
angle(1 + 2im)

# ### Rational Numbers

2 // 3
5 // 15

(numerator(2 // 3), denominator(2 // 3))
1 // 3 == 5 // 15 # can be compared

# ### Arrays

A = Array{Float64,2}(undef, 2, 3)
A

ones(Float64, 2, 3)
zeros(Float64, 2, 3)
rand(Float64, 2, 3)

range(10, stop = 20, length = 3)

[1, 2, 3]
[1, 2.3, 4//5]
[1:2, 4:5]

rand(10, 10)

