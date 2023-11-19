```@meta
EditURL = "../../scripts/20-dataframes.jl"
```

# DataFrames

Julia has a general representation for `Tables` with different implementations. The most
used package is [DataFrames.jl](https://dataframes.juliadata.org/). It takes advantage
of Julia syntax to define certain operation.

## Define a DataFrame

````@example 20-dataframes
using DataFrames
import Random

Random.seed!(11)
n = 100
data = DataFrame(id = 1:n, x = rand(n), y = randn(n))
````

## Subsetting

Let's select a column without doing a copy:

````@example 20-dataframes
data.id
````

````@example 20-dataframes
data[!, :id]
````

Modifications on these columns will be reflected in the original data.

````@example 20-dataframes
xaux = data.x
````

````@example 20-dataframes
xaux[1] = 100
````

````@example 20-dataframes
first(data, 2)
````

A copy of a column is created as folows:

````@example 20-dataframes
xaux = data[:, :x]
````

````@example 20-dataframes
xaux[1] = 10
````

````@example 20-dataframes
first(data, 2)
````

More specific subsetting can be done with:

````@example 20-dataframes
data.id[1:10]
````

````@example 20-dataframes
data.id[90:end]
````

````@example 20-dataframes
data[1:10, 1:2]
````

You can also create a view that references to you DataFrame:

````@example 20-dataframes
subdata = view(data, 1:10, 1:3)
subdata.x[1] = rand()
first(data, 2)
````

## Transform variables

To perform operations over columns, we use the `Pair` syntax:

````@example 20-dataframes
transform(data, :x => (z -> z .^ 2))
````

````@example 20-dataframes
typeof(:x => (z -> z .^ 2))
````

We can explicitly provide the output name:

````@example 20-dataframes
transform(data, :x => (z -> z .^ 2) => :x2)
````

We can also vectorize any function with `ByRow`:

````@example 20-dataframes
transform(data, :x => ByRow(sqrt))
````

Notice that the previous operations did not modify the original dataset. You can modify
your original dataset using the in-place function `transform!`:

````@example 20-dataframes
transform!(data, :x => (z -> z .^ 2) => :x2)
````

````@example 20-dataframes
data
````

The function `select` works in a similar way, but only includes the desired variables:

````@example 20-dataframes
select(data, :x => (z -> z .^ 2) => :x2)
````

````@example 20-dataframes
select(data, :x, :y)
````

````@example 20-dataframes
typeof(r"^x")
````

````@example 20-dataframes
select(data, r"^x")
````

Let's add new columns:

````@example 20-dataframes
insertcols!(data, :z => rand(100))
````

````@example 20-dataframes
first(data, 5)
````

Let's remove columns:

````@example 20-dataframes
select!(data, Not(:x2))
````

````@example 20-dataframes
first(data, 5)
````

Another simple operation is to rename columns:

````@example 20-dataframes
rename(data, :x => :xnew, :z => :znew)
````

````@example 20-dataframes
rename(data, [:x, :z] .=> [:xnew, :znew])
````

````@example 20-dataframes
rename(var -> var * "_new", data)
````

Remember to use `rename!` to actually make the changes on the original dataset.

