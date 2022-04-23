# ## Numeric operations
#
# ### Arithmethic operators
#
# Common arithmethic aperation such as sum (`+`), substruction (`-`), multiplication (`*`),
# division (`/`), left division (`\`), integer division (`÷`), remainder (`%`),
# exponentiation (`^`), rational division (`//`) can be done. See in the examples below that
# the output type will depend of the arguments type.

4 + 3
# 7

4 - 3
# 1

4.0 * 3
# 12.0

4.0 / 3
# 1.3333333333333333

3 \ 4
# 1.3333333333333333

10 ÷ 4
# 2

4.4 % 3
# 1.4000000000000004

3.0 ^ 4
# 81

4 // 3
# 4 // 3

# Negation is available for `Bool` types:

!true

# ### Bitwise operators
#
# Common bitwise operators are not (`~`), and (`&`), or (`|`), xor (`⊻ `). See examples
# below.

~ false
# true

true & false
# false

true | false
# true

true ⊻ false
# true

# ### Updating operators
#
# The updating version of binary operators is obtained by appending `=` at the end of the
# operator. Some examples are `+=`, `-=`, `/=` and `*=`.

x = 1
x += 3
x

# ### Numeric literal coefficients
#
# Julia allows to use *literal numbers* to define polinomials. This means that:
#
# - a number preceding a variable will be consider a *coefficient*,
# - unary operators (`-`, `+`, `√`) have greater priority,
# - literal coefficient have greater priority than unary operators when using
#   exponentiation,
# - parenthesized expressions can be used in the variable or coefficient part,

x = 3
2x + 2
# 8

√4x
# 6.0

2 ^ 2x
# 64

3(x + 1)
# 12

(x + 2)x
# 15

# ### Vectorized dot operator (element-wise)

x = [1, 3, 5]

2x .^2 .-3x .+ 1
# 3-element Array{Int64,1}:
#   0
#   10
#   36

sin.(x)
# 3-element Array{Float64,1}:
#   0.8414709848078965
#   0.1411200080598672
#   -0.9589242746631385

sum.([1:2, 2:4, 3:5])
# 3-element Array{Int64,1}:
#   3
#   9
#   12

# Similarly we can use the macro `@.` that will convert every function into a *dot call*.

x = [1, 3, 5]

@. 2x ^ 2 - 3x + 1

@. sin(x)

@. sum([1:2, 2:4, 3:5])

# ### Numeric comparisons
#
# Stardard comparison operators are equality (`==`), inequality (`!=`), less than (`<`),
# greater than (`>`).

10.5 == 10.5

10.4 != 10.41
10.4 ≢ 10.41

3 > 3

2 ≥ 1

4 < 5

4 ≤ 5

# There is also useful comparison function for special values (e.g. `NaN`, `Inf`) such as
# `isequal`, `isfinite`, `isinf`, `isnan`.

isequal(NaN, NaN)

isinf(Inf)

isnan(NaN)

# Comparisons can also be arbitrarily chained.

8 > 4 <= 10 == 10 < 20

