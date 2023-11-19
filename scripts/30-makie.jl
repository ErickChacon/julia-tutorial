# # Visualize with Makie
#
# In Julia, there are several packages for plotting. One of the prefered options is
# [Makie.jl](https://docs.makie.org) which is mainly written in Julia. There is also
# high-level packages written over Makie.jl to make coding easier:
# [AlgebraOfGraphics.jl](https://aog.makie.org/) and
# [TidierPlots.jl](https://github.com/TidierOrg/TidierPlots.jl).

# ## Packages and data

using DataFrames
using CairoMakie
using AlgebraOfGraphics

df = DataFrame(id = 1:100, x = randn(100), y = randn(100))
first(df, 5)

# ## Makie.jl

# Let's start with a `lines` graph:

fig = lines(df.x, df.y)

# You can add a geometry over this current graph:

scatter!(df.x, df.y, color = :red)
fig
save("makie.pdf", fig) #src

# To customize the graph we need to understand we have the following the componentes are:
#
# - Figure: Is the main container with custom attributes like `backgroundcolor`.
# - Axis: Is the object where a geometry can be added and it is contained in a Figure.

fig = Figure(backgroundcolor = :tomato)
Axis(fig[1,1], title = "First figure")
scatter!(df.x, df.y, color = :red)
Axis(fig[1,2], title = "Second figure")
lines!(df.x, df.y, color = :blue)
Axis(fig[2,1:2], title = "Third figure")
scatter!(df.x, df.y, color = :red)
lines!(df.x, df.y, color = :blue)
fig
save("makie.pdf", fig) #src

# Common arguments for the `Axis` elements are `title`, `xlabel`, `ylabel`.

# Now let's create a figure with legends:

fig = scatter(df.x, df.y, color = :red, label = "Normal(0,1)")
scatter!(rand(100), rand(100), color = :blue, label = "Uniform(0,1)")
axislegend()
fig
save("makie.pdf", fig) #src

# A figure with colorbar:

X = rand(100, 80)
fig, ax, hm = heatmap(X, colormap = Reverse(:RdBu))
Colorbar(fig[1,2], hm)
fig
save("makie.pdf", fig) #src

# You can pass the `Figure` and `Axis` attributes to the plotting function:

hist(df.x, color = (:orange, 0.7), strokewidth = 1,
    axis = (title = "Histogram", xlabel = "x", ylabel = "π(x)"),
    figure = (backgroundcolor = (:green, 0.6),)
)
save("makie.pdf", fig) #src

# Check [Makie.jl](https://docs.makie.org/stable/reference/plots/) to find all available
# plots.

# ## Algebra of Graphics

# In practice, `Makie.jl` is used for developers and custom plots for publication. We can
# use `AlgebraOfGraphics.jl` for a high level syntax.

df.group = rand(string.(1:4), 100)
first(df, 5)

# Let's see a basic graph using `AlgebraOfGraphics.jl`.

g = data(df) * mapping(:x, :y)
draw(g)
save("makie.pdf", draw(g)) #src

# You can use `DataFrames.jl` syntax to transform variables:

g = data(df) * mapping(:x => (z -> 10z) => "First variable", :y => "Second variable")
draw(g)
save("makie.pdf", draw(g)) #src


# We can use another geometry with `visual`:

g = data(df) * mapping(:x, :y) * visual(Lines, color = :red, linewidth = 3)
draw(g)
save("makie.pdf", draw(g)) #src

# Notice that the order does not matter:

g = mapping(:x, :y) * data(df) * visual(Lines, color = :red, linewidth = 3)
draw(g)
save("makie.pdf", draw(g)) #src

# We can use the `+` operator to combine graphs:

g = data(df) * mapping(:x, :y, color = :group) * visual(Lines) +
    data(df) * mapping(:x, :y) * visual(Scatter)
draw(g)
save("makie.pdf", draw(g)) #src

# Why is it called `AlgebraOfGraphics.jl`?

g = data(df) * mapping(:x, :y, color = :group) *
    (visual(Lines) + visual(Scatter))
draw(g)
save("makie.pdf", draw(g)) #src

# You can factorize any part:
addnoise(x) = x + rand()
g = data(df) *
    (mapping(:x, :y, color = :group) + mapping(:x, :y => addnoise))
draw(g)
save("makie.pdf", draw(g)) #src

# Let's separating the plots by group:

g = data(df) * mapping(:x, :y, layout = :group, color = :group) *
    (visual(Scatter) + visual(Lines))
fig = draw(g)
save("makie.pdf", fig) #src

#-

g = data(df) * mapping(:x, :y, row = :group, color = :group) *
    (visual(Scatter) + visual(Lines))
fig = draw(g, axis = (width = 130, height = 130))
save("makie.pdf", fig) #src

#-

g = data(df) * mapping(:x, :y, col = :group, color = :group) *
    (visual(Scatter) + visual(Lines))
fig = draw(g, axis = (width = 130, height = 130))
save("makie.pdf", fig) #src


