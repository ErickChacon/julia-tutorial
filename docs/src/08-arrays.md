```@meta
EditURL = "../../scripts/08-arrays.jl"
```

# Arrays

An array is a multi-dimensional collection of objects. The elements of arrays do not
need to be numbers or even from the same type. However, we are interested in numeric
arrays.

````@example 08-arrays
using LinearAlgebra
````

## Basic syntax

### Vectors

````@example 08-arrays
x = [1, 3, 4]
````

Julia allows to perform operations that are almost globally accepted on vectors. For
example, let's get the transpose:

````@example 08-arrays
x'
````

Or multiply the vector by an scalar:

````@example 08-arrays
4x
````

In cases where the operator is not clear, we need to use the dot operator to make
element-by-element computations:

````@example 08-arrays
1 .+ x
````

````@example 08-arrays
sqrt.(x)
````

The dot operator is atuomatically available for any function:

````@example 08-arrays
g(x) = 3 + 2x^2
````

````@example 08-arrays
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
randn(5, 3)
````

````@example 08-arrays
ones(5, 5) + I
````

