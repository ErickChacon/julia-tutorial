# # DataFrames

using DataFrames

data = DataFrame(id = 1:100, x = rand(100), y = randn(100))

# ## subsetting

data.id
#-
data.x

#-
data.id[1:10]
#-
data.id[90:end]

#-
data[1:10, 1:2]

# ## transform

transform(data, :x => (z -> z .^ 2) => :x2)

transform(data, :x => ByRow(sqrt) => :x2)

#-

transform!(data, :x => (z -> z .^ 2) => :x2)

#-

select(data, :x, :x2)

#-

insertcols!(data, :z => rand(100))

#-

rename(data, :z => :znew)
