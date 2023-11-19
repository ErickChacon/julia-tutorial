# # Arrays
#
# An array is a multi-dimensional collection of objects. The elements of arrays do not
# need to be numbers or even from the same type. However, we are interested in numeric
# arrays.

using LinearAlgebra

# ## Basic syntax

# ### Vectors

x = [1, 3, 4]

# Julia allows to perform operations that are almost globally accepted on vectors. For
# example, let's get the transpose:

x'

# Or multiply the vector by an scalar:

4x

# In cases where the operator is not clear, we need to use the dot operator to make
# element-by-element computations:

1 .+ x

#-

sqrt.(x)

# The dot operator is atuomatically available for any function:

g(x) = 3 + 2x^2
#-
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

randn(5, 3)

#-

ones(5, 5) + I
