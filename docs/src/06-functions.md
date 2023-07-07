```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/06-functions.jl"
```

# Functions

A function is an object mapping a tuple of arguments to a return value.

## Basic syntax

A standard way of defining a function in `julia` is using a block with definition, body
and return value.

````@example 06-functions
function f(x, y)
    z = x + y
    return z
end
f(1, 3)
````

When return is omited, the return value is the last evaluated expression.

````@example 06-functions
function f(x, y)
  x + y
end
f(1, 3)
````

There is also an alternative syntax to define *short functions* that is quite similar to
the definition of functions in mathematics.

````@example 06-functions
f(x, y) = x + y
f(1, 3)
````

It is possible to use unicode names.

````@example 06-functions
ρ(x, y) = x + y
ρ(1, 3)
````

Anonymous functions can also be defined using the syntax `x -> x ^ 2`, meaning that the
function takes `x` and convert this to `x ^ 2`. This type of function is useful for
functional programming. For example, to apply a particular function to a set of values
using the `map` function.

````@example 06-functions
map(x -> 2x - 1, [1, 3, -1])
````

## Return

We can define the output type of the function

````@example 06-functions
function g(x, y)::Int8
    return x * y
end
typeof(g(3, 2))
````

It is a convention to return nothing when the function does not need to return a value.

````@example 06-functions
function printx(x)
    println("x = $x")
    return nothing
end
printx(10.0)
````

Multiple values can be returned using tuple's syntax.

````@example 06-functions
function maxmin(x, y)
    return max(x, y), min(x, y)
end
````

````@example 06-functions
maxmin(2, 3.0)
````

````@example 06-functions
typeof(maxmin(2, 3.0))
````

````@example 06-functions
a, b = maxmin(2, 3.0)
````

## Multiple dispatching

A main feature of `julia` is multiple dispatching, meaning that it accepts multiple
definitions of a function with different number of arguments, or different argument
types. Then, the method called for evaluation will depend on the types of the arguments.

````@example 06-functions
function concatenate(x::Int, y::String)
    println("$x is an integer and $y is an string.")
end
concatenate(1, "hola")
````

````@example 06-functions
function concatenate(x::String, y::String)
    x * y
end
concatenate("Hola", "Erick")
````

## Keyword arguments

Given that `julia` functions works with multiple dispatching, the order of the arguments
is important. In situations where we need several arguments, it might become complicated
to remember the order. For those cases, we can use *keyword arguments* such us the name
of the argument is followed by the value. These keyword arguments can be included after
the arguments using a `;` as separation.

```julia
function myplot(x, y; color = "black", linewidth = 2)
    #
end
myplot(x, y; color = "red")
```

Functions with an indefinite number of keyword arguments can also be defined.

```julia
function myplot(x, y; kwargs...)
    plot(x, y; kwargs...)
end
myplot(x, y; color = "red")
```

## Varargs functions

Functions with a variable number of arguments.

````@example 06-functions
function bar(a, b, x...)
    a, b, x
end
bar(1, 2)
````

````@example 06-functions
bar(1, 2, 3)
````

````@example 06-functions
bar(1, 2, 3, 4)
````

A similar syntax can be used to splat the values of a collection.

````@example 06-functions
extra = (3, 4)
bar(1, 2, extra...)
````

````@example 06-functions
x = [3, 4]
bar(1, 2, x...)
````

## Function composition and piping

Julia can combine functions by composing with the operator `∘`.

````@example 06-functions
sqrt(+(3, 6))
````

````@example 06-functions
(sqrt ∘ +)(3, 6)
````

In the following example we create a function that reverse an "string", then obtain the
first letter, and finally convert it to capital.

````@example 06-functions
lastletter = uppercase ∘ first ∘ reverse
lastletter("julia")
````

````@example 06-functions
map(uppercase ∘ first ∘ reverse, ("this", "is", "julia"))
````

On the other hand, the pipe operator `|>` can be used to use the output of a function as
the input of another function.

````@example 06-functions
(3, 6) |>
    sum |>
    sqrt
````

