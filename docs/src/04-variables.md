```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/04-variables.jl"
```

# Variables

A variable is a name that will be associated to a value through a memory space; these
are case-sensitive.

### Defining variables

Variables are defined and modified using `=`, see some examples below.

````julia
x = 10
print(x, ", ", typeof(x))
````

````
10, Int64
````

````julia
x = 10.0
print(x, ", ",  typeof(x))
````

````
10.0, Float64
````

````julia
x = "Hello World!"
print(x, ", ",  typeof(x))
````

````
Hello World!, String
````

````julia
x = 1 + 2im
print(x, ", ",  typeof(x))
````

````
1 + 2im, Complex{Int64}
````

````julia
x = 1 // 2
print(x, ", ",  typeof(x))
````

````
1//2, Rational{Int64}
````

### Define more than one variable

More that one variable can be defined using tuples syntax.

````julia
(a, b) = (1, 10)
print(a, ", ", b)
````

````
1, 10
````

````julia
a, b = 1, 10
print(a, ", ", b)
````

````
1, 10
````

````julia
(a, b) = 1, 10
print(a, ", ", b)
````

````
1, 10
````

````julia
a, b = (1, 10)
print(a, ", ", b)
````

````
1, 10
````

### Allowed variable names

- Unicode names can be used. This helps to write code closer to mathematical equations.

````julia
μ = 0
print(μ)
````

````
0
````

````julia
σ = 1
print(σ)
````

````
1
````

````julia
α = 0.1
print(α)
````

````
0.1
````

````julia
β = 10.0
print(β)
````

````
10.0
````

- Built-in constants or functions cannot be replaced after being used.

```julia
pi; pi = 3
# ERROR: cannot assign a value to variable MathConstants.pi from module Main
# Stacktrace:
#  [1] top-level scope at REPL[95]:1
```

```julia
sqrt(4); sqrt = 4
# ERROR: cannot assign a value to variable Base.sqrt from module Main
# Stacktrace:
#  [1] top-level scope at REPL[97]:1
```

- Built-in keywords cannot be modify.

```julia
else = false
# ERROR: syntax: unexpected "else"
# Stacktrace:
#  [1] top-level scope at none:1
```

### Some Julia naming conventions

- Use lower case for variables, functions, and macros (e.g. `name = "Julia"`).
- Underscore (`_`) use is discouraged (e.g. `lastname = "Montalvan"`).
- Use *uper camel case* for `Types` and `Modules`.
- Use `!` at the end of a function name when it mutates its arguments.

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

