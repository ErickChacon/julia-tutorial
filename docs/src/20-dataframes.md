```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/20-dataframes.jl"
```

# DataFrames

````@example 20-dataframes
using DataFrames

data = DataFrame(id = 1:100, x = rand(100), y = randn(100))
````

## subsetting

````@example 20-dataframes
data.id
````

````@example 20-dataframes
data.x
````

````@example 20-dataframes
data.id[1:10]
````

````@example 20-dataframes
data.id[90:end]
````

````@example 20-dataframes
data[1:10, 1:2]
````

## transform

````@example 20-dataframes
transform(data, :x => (z -> z .^ 2) => :x2)

transform(data, :x => ByRow(sqrt) => :x2)
````

````@example 20-dataframes
transform!(data, :x => (z -> z .^ 2) => :x2)
````

````@example 20-dataframes
select(data, :x, :x2)
````

````@example 20-dataframes
insertcols!(data, :z => rand(100))
````

````@example 20-dataframes
rename(data, :z => :znew)
````

