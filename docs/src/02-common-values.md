```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/02-common-values.jl"
```

# Common values

In this section, we provide a quick introduction to common basic objects. The function
`typeof` used below returns the type of object provided as argument.

- Logical

````@example 02-common-values
true
````

````@example 02-common-values
false
````

````@example 02-common-values
typeof(true)
````

- Integers

````@example 02-common-values
1
````

````@example 02-common-values
typeof(1)
````

- Floating-Point numbers

````@example 02-common-values
10.0
````

````@example 02-common-values
typeof(10.0)
````

- Complex numbers

````@example 02-common-values
1 + 2im
````

````@example 02-common-values
typeof(1 + 2im)
````

- Rational numbers

````@example 02-common-values
10 // 15
````

````@example 02-common-values
typeof(10 // 15)
````

- Character

````@example 02-common-values
'x'
````

````@example 02-common-values
typeof('x')
````

````@example 02-common-values
typeof('β')
````

- Strings

````@example 02-common-values
"julia"
````

````@example 02-common-values
typeof("julia")
````

- Symbol

````@example 02-common-values
:name
````

````@example 02-common-values
typeof(:name)
````

- Tuples: unmutable fixed-length container holding any values

````@example 02-common-values
("John", 29, 10.0)
````

````@example 02-common-values
typeof(("John", 29, 10.0))
````

- Named tuples: Tuples with element names

````@example 02-common-values
(name = "John", age = 29, value = 10.0)
````

````@example 02-common-values
typeof((name = "John", age = 29, value = 10.0))
````

- Dictionaries:

````@example 02-common-values
Dict("Poisson" => 1, "Gaussian" => 2)
````

