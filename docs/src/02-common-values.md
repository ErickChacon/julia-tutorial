```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/02-common-values.jl"
```

# Common values

In this section, we provide a quick introduction to common basic objects. The function
`typeof` used below returns the type of object provided as argument.

- Logical

````julia
true
````

````
true
````

````julia
false
````

````
false
````

````julia
typeof(true)
````

````
Bool
````

- Integers

````julia
1
````

````
1
````

````julia
typeof(1)
````

````
Int64
````

- Floating-Point numbers

````julia
10.0
````

````
10.0
````

````julia
typeof(10.0)
````

````
Float64
````

- Complex numbers

````julia
1 + 2im
````

````
1 + 2im
````

````julia
typeof(1 + 2im)
````

````
Complex{Int64}
````

- Rational numbers

````julia
10 // 15
````

````
2//3
````

````julia
typeof(10 // 15)
````

````
Rational{Int64}
````

- Character

````julia
'x'
````

````
'x': ASCII/Unicode U+0078 (category Ll: Letter, lowercase)
````

````julia
typeof('x')
````

````
Char
````

````julia
typeof('β')
````

````
Char
````

- Strings

````julia
"julia"
````

````
"julia"
````

````julia
typeof("julia")
````

````
String
````

- Symbol

````julia
:name
````

````
:name
````

````julia
typeof(:name)
````

````
Symbol
````

- Tuples: unmutable fixed-length container holding any values

````julia
("John", 29, 10.0)
````

````
("John", 29, 10.0)
````

````julia
typeof(("John", 29, 10.0))
````

````
Tuple{String, Int64, Float64}
````

- Named tuples: Tuples with element names

````julia
(name = "John", age = 29, value = 10.0)
````

````
(name = "John", age = 29, value = 10.0)
````

````julia
typeof((name = "John", age = 29, value = 10.0))
````

````
NamedTuple{(:name, :age, :value), Tuple{String, Int64, Float64}}
````

- Dictionaries:

````julia
Dict("Poisson" => 1, "Gaussian" => 2)
````

````
Dict{String, Int64} with 2 entries:
  "Gaussian" => 2
  "Poisson" => 1
````

