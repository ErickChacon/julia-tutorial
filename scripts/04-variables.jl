# ## Variables
#
# A variable is a name that will be associated to a value through a memory space; these
# are case-sensitive.
#
# ### Defining variables
#
# Variables are defined and modified using `=`, see some examples below.

x = 10
print(x, ", ", typeof(x))
#-
x = 10.0
print(x, ", ",  typeof(x))
#-
x = "Hello World!"
print(x, ", ",  typeof(x))
#-
x = 1 + 2im
print(x, ", ",  typeof(x))
#-
x = 1 // 2
print(x, ", ",  typeof(x))

# ### Define more than one variable
#
# More that one variable can be defined using tuples syntax.

(a, b) = (1, 10)
print(a, ", ", b)
#-
a, b = 1, 10
print(a, ", ", b)
#-
(a, b) = 1, 10
print(a, ", ", b)
#-
a, b = (1, 10)
print(a, ", ", b)

# ### Allowed variable names
#
# - Unicode names can be used. This helps to write code closer to mathematical equations.

μ = 0
print(μ)

σ = 1
print(σ)

α = 0.1
print(α)

β = 10.0
print(β)

# - Built-in constants or functions cannot be replaced after being used.
#
# ```julia
# pi; pi = 3
# # ERROR: cannot assign a value to variable MathConstants.pi from module Main
# # Stacktrace:
# #  [1] top-level scope at REPL[95]:1
# ```
#
# ```julia
# sqrt(4); sqrt = 4
# # ERROR: cannot assign a value to variable Base.sqrt from module Main
# # Stacktrace:
# #  [1] top-level scope at REPL[97]:1
# ```
#
# - Built-in keywords cannot be modify.
#
# ```julia
# else = false
# # ERROR: syntax: unexpected "else"
# # Stacktrace:
# #  [1] top-level scope at none:1
# ```
#
# ### Some Julia naming conventions
#
# - Use lower case for variables, functions, and macros (e.g. `name = "Julia"`).
# - Underscore (`_`) use is discouraged (e.g. `lastname = "Montalvan"`).
# - Use *uper camel case* for `Types` and `Modules`.
# - Use `!` at the end of a function name when it mutates its arguments.
