```@meta
EditURL = "../../scripts/02-common-values.jl"
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

````@example 02-common-values
Int8(1)
````

````@example 02-common-values
typeof(Int8(1))
````

- Floating-Point numbers

````@example 02-common-values
10.0
````

````@example 02-common-values
typeof(10.0)
````

````@example 02-common-values
Float16(10.0)
````

````@example 02-common-values
typeof(Float16(1))
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

- Symbol: Object used to represent identifiers

````@example 02-common-values
:name
````

````@example 02-common-values
typeof(:name)
````

- Tuples: Unmutable fixed-length container holding any values

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

- Pair: Unmutable object with two elements (first and second)

````@example 02-common-values
"January" => 1
````

````@example 02-common-values
typeof("January" => 1)
````

- Dictionaries: Table with keys and values.

````@example 02-common-values
Dict("Poisson" => 1, "Gaussian" => 2)
````

````@example 02-common-values
typeof(Dict("Poisson" => 1, "Gaussian" => 2))
````

