# # Arrays

using LinearAlgebra

# ## Basic syntax

# ### Vectors

x = [1, 3, 4]

#-

x'

#-

4x

#-

1 .+ x

#-

sqrt.(x)

#-

g(x) = 3 + 2x^2
g.(x)

# ### Matrices

A = [1 4 5;
    3 4 5]
#-

5A

#-

5 .+ A


#-

A * x

#-

A .^ 2

#-

g.(A)

# ### Constructors

zeros(5, 3)

#-

ones(5, 3)

#-

rand(5, 3)

#-

ones(5, 5) + I
