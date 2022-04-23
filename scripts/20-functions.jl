# ## Functions
# A function is an object mapping a tuple of arguments to a return value.
#
# ### Basic syntax
#
# A block with definition, body and return

function f(x, y)
  return x + y
end
f(1, 3)

# When return is omited, the return value is the last evaluated expression

function f(x, y)
  x + y
end
f(1, 3)

# A simpler approach for short functions

f(x, y) = x + y
f(1, 3)

# It is possible to use unicode names

γ(x, y) = x + y
γ(1, 3)

# Anonymous functions that are useful for functional programming

map(x -> x^2 + 2x - 1, [1, 3, -1])

# ### Return
#
# We can define the output type of the function

function g(x, y)::Int8
    return x * y
end
typeof(g(3, 2))

# It is a convention to return nothing when the function does not need to return a value

function printx(x)
    println("x = $x")
    return nothing
end
printx(10.0)

# Multiple values can be returned (tuple)

function maxmin(x, y)
    return max(x, y), min(x, y)
end
maxmin(2, 3.0)
typeof(maxmin(2, 3.0))
a, b = maxmin(2, 3.0)

# ### Varargs functions
#
# Functions with a variable number of arguments

bar(a, b, x...) = (a, b, x)

bar(1, 2)
bar(1, 2, 3)
bar(1, 2, 3, 4)

x = (3, 4)
bar(1, 2, x...) # splat tuple or array appending ...
x = [3, 4]
bar(1, 2, x...) # splat tuple or array appending ...

# This also works for
#
#
# ### Operators are functions

1 + 2 + 3
+(1, 2, 3)
mysum = +; mysum(1, 2, 3)

f1(x) = x^2
f1.([1, 2, 3])

# - Tuple

x = (0xe01, 1 + 1, "hello", 'x')
typeof(x)

x = (a = 1, b = "me")
x.a

# - Multiple return values

function foo(a, b)
    a + b, a - b
end
foo(2, 3)
x, y = foo(2, 3)

# - Argument destructuring
#
# minmax(x, y) = (y < x) ? (y, x) : (x, y)
# minmax(10, 2)
# minmax(2, 10)
#
# range((min, max)) = max - min
# range(minmax(10, 2))
#
# - Varargs functions
#
# bar(a, b, x...) = (a, b, x)
# bar(1, 2)
# bar(1, 2, 3)
# bar(1, 2, 3, 4)
# typeof(bar(1, 2, 3, 4)[3])
#
# x = (3, 4, 5)
# bar(1, x...)
# x = [3, 4, 5]
# bar(1, x...)
#
# ### Optional arguments
#
# <!-- # using Dates -->
# <!-- # function Date(y::Int64, m::Int64=1, d::Int64=1) -->
# <!-- #     err = validargs(Date, y, m, d) -->
# <!-- #     err === nothing || throw(err) -->
# <!-- #     return Date(UTD(totaldays(y, m, d))) -->
# <!-- # end -->
# <!-- # Date(2000, 12, 12) -->
# <!--  -->
#
# ### Function composition and piping
#
(sqrt ∘ +)(3, 6)
map(first ∘ reverse ∘ uppercase, split("this is julia"))

(3, 6) |>
    sum |>
    sqrt

["a", "list", "of", "strings"] .|> [uppercase, reverse, titlecase, length]
