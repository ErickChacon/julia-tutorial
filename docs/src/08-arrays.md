```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/08-arrays.jl"
```

# Arrays

````@example 08-arrays
using LinearAlgebra
````

## Basic syntax

### Vectors

````@example 08-arrays
x = [1, 3, 4]
````

````@example 08-arrays
x'
````

````@example 08-arrays
4x
````

````@example 08-arrays
1 .+ x
````

````@example 08-arrays
sqrt.(x)
````

````@example 08-arrays
g(x) = 3 + 2x^2
g.(x)
````

### Matrices

````@example 08-arrays
A = [1 4 5;
    3 4 5]
````

````@example 08-arrays
5A
````

````@example 08-arrays
5 .+ A
````

````@example 08-arrays
A * x
````

````@example 08-arrays
A .^ 2
````

````@example 08-arrays
g.(A)
````

### Constructors

````@example 08-arrays
zeros(5, 3)
````

````@example 08-arrays
ones(5, 3)
````

````@example 08-arrays
rand(5, 3)
````

````@example 08-arrays
ones(5, 5) + I
````

