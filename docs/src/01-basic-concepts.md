```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/01-basic-concepts.jl"
```

# Basic concepts

- **Values**: Julia can work with different type of values like numbers, characters,
strings, so on. Below, we see an example of an string, numeric and complex value.

````julia
"Hello"
````

````
"Hello"
````

````julia
2021
````

````
2021
````

````julia
2 + 1im
````

````
2 + 1im
````

- **Variables**: A value can be assigned to a variable using the equality symbol `=`.
Below, the variable `greet` is defined with the assigned value `"Hello"`.

````julia
greet = "Hello"
````

````
"Hello"
````

- **Functions**: A function is a mapping from a set of argument values to a return
value. There are different ways for defining a function. One common way is to start with
the `function` key followed by the name of the function with braces, and it finish with
the `end` key. The output value can be explicitly defined using the `return` key. See an
example below.

````julia
function greet_name(x)
    out = "Hello, "  * x
    return out
end
````

````
greet_name (generic function with 1 method)
````

````julia
greet_name("Julia")
````

````
"Hello, Julia"
````

- **Printing**: The most common function to print a text is `print`, while `println` has
the same behaviour but adds a newline at the end. We can use `$` to interpolate the
value of a variable. You can use braces for expressions (e.g. `$(1 + 1)`). In the
example below, variables `who` and `greet` are interpolated in the printed text.

````julia
who = "Erick"
greet = "Hello"
println("Welcome! $greet, $(who)!")
````

````
Welcome! Hello, Erick!

````

