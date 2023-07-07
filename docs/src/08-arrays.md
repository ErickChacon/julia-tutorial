```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/08-arrays.jl"
```

# Arrays

````julia
using LinearAlgebra
````

## Basic syntax

### Vectors

````julia
x = [1, 3, 4]
````

````
3-element Vector{Int64}:
 1
 3
 4
````

````julia
x'
````

````
1×3 adjoint(::Vector{Int64}) with eltype Int64:
 1  3  4
````

````julia
4x
````

````
3-element Vector{Int64}:
  4
 12
 16
````

````julia
1 .+ x
````

````
3-element Vector{Int64}:
 2
 4
 5
````

````julia
sqrt.(x)
````

````
3-element Vector{Float64}:
 1.0
 1.7320508075688772
 2.0
````

````julia
g(x) = 3 + 2x^2
g.(x)
````

````
3-element Vector{Int64}:
  5
 21
 35
````

### Matrices

````julia
A = [1 4 5;
    3 4 5]
````

````
2×3 Matrix{Int64}:
 1  4  5
 3  4  5
````

````julia
5A
````

````
2×3 Matrix{Int64}:
  5  20  25
 15  20  25
````

````julia
5 .+ A
````

````
2×3 Matrix{Int64}:
 6  9  10
 8  9  10
````

````julia
A * x
````

````
2-element Vector{Int64}:
 33
 35
````

````julia
A .^ 2
````

````
2×3 Matrix{Int64}:
 1  16  25
 9  16  25
````

````julia
g.(A)
````

````
2×3 Matrix{Int64}:
  5  35  53
 21  35  53
````

### Constructors

````julia
zeros(5, 3)
````

````
5×3 Matrix{Float64}:
 0.0  0.0  0.0
 0.0  0.0  0.0
 0.0  0.0  0.0
 0.0  0.0  0.0
 0.0  0.0  0.0
````

````julia
ones(5, 3)
````

````
5×3 Matrix{Float64}:
 1.0  1.0  1.0
 1.0  1.0  1.0
 1.0  1.0  1.0
 1.0  1.0  1.0
 1.0  1.0  1.0
````

````julia
rand(5, 3)
````

````
5×3 Matrix{Float64}:
 0.20116    0.192822  0.569628
 0.961807   0.657509  0.360894
 0.528036   0.262946  0.64144
 0.0269265  0.085739  0.982797
 0.879455   0.24183   0.884966
````

````julia
ones(5, 5) + I
````

````
5×5 Matrix{Float64}:
 2.0  1.0  1.0  1.0  1.0
 1.0  2.0  1.0  1.0  1.0
 1.0  1.0  2.0  1.0  1.0
 1.0  1.0  1.0  2.0  1.0
 1.0  1.0  1.0  1.0  2.0
````

