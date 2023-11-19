```@meta
EditURL = "../../scripts/30-makie.jl"
```

# Visualize with Makie

In Julia, there are several packages for plotting. One of the prefered options is
[Makie.jl](https://docs.makie.org) which is mainly written in Julia. There is also
high-level packages written over Makie.jl to make coding easier:
[AlgebraOfGraphics.jl](https://aog.makie.org/) and
[TidierPlots.jl](https://github.com/TidierOrg/TidierPlots.jl).

## Packages and data

````@example 30-makie
using DataFrames
using CairoMakie
using AlgebraOfGraphics
import Random

Random.seed!(11)

df = DataFrame(id = 1:100, x = randn(100), y = randn(100))
first(df, 5)
````

## Makie.jl

Let's start with a `lines` graph:

````@example 30-makie
fig = lines(df.x, df.y)
````

You can add a geometry over this current graph:

````@example 30-makie
scatter!(df.x, df.y, color = :red)
fig
````

To customize the graph we need to understand we have the following the componentes are:

- Figure: Is the main container with custom attributes like `backgroundcolor`.
- Axis: Is the object where a geometry can be added and it is contained in a Figure.

````@example 30-makie
fig = Figure(backgroundcolor = :tomato)
Axis(fig[1,1], title = "First figure")
scatter!(df.x, df.y, color = :red)
Axis(fig[1,2], title = "Second figure")
lines!(df.x, df.y, color = :blue)
Axis(fig[2,1:2], title = "Third figure")
scatter!(df.x, df.y, color = :red)
lines!(df.x, df.y, color = :blue)
fig
````

Common arguments for the `Axis` elements are `title`, `xlabel`, `ylabel`.

Now let's create a figure with legends:

````@example 30-makie
fig = scatter(df.x, df.y, color = :red, label = "Normal(0,1)")
scatter!(rand(100), rand(100), color = :blue, label = "Uniform(0,1)")
axislegend()
fig
````

A figure with colorbar:

````@example 30-makie
X = rand(100, 80)
fig, ax, hm = heatmap(X, colormap = Reverse(:RdBu))
Colorbar(fig[1,2], hm)
fig
````

You can pass the `Figure` and `Axis` attributes to the plotting function:

````@example 30-makie
hist(df.x, color = (:orange, 0.7), strokewidth = 1,
    axis = (title = "Histogram", xlabel = "x", ylabel = "π(x)"),
    figure = (backgroundcolor = (:green, 0.6),)
)
````

Check [Makie.jl](https://docs.makie.org/stable/reference/plots/) to find all available
plots.

## Algebra of Graphics

In practice, `Makie.jl` is used for developers and custom plots for publication. We can
use `AlgebraOfGraphics.jl` for a high level syntax.

````@example 30-makie
df.group = rand(string.(1:4), 100)
first(df, 5)
````

Let's see a basic graph using `AlgebraOfGraphics.jl`.

````@example 30-makie
g = data(df) * mapping(:x, :y)
draw(g)
````

You can use `DataFrames.jl` syntax to transform variables:

````@example 30-makie
g = data(df) * mapping(:x => (z -> 10z) => "First variable", :y => "Second variable")
draw(g)
````

We can use another geometry with `visual`:

````@example 30-makie
g = data(df) * mapping(:x, :y) * visual(Lines, color = :red, linewidth = 3)
draw(g)
````

Notice that the order does not matter:

````@example 30-makie
g = mapping(:x, :y) * data(df) * visual(Lines, color = :red, linewidth = 3)
draw(g)
````

We can use the `+` operator to combine graphs:

````@example 30-makie
g = data(df) * mapping(:x, :y, color = :group) * visual(Lines) +
    data(df) * mapping(:x, :y) * visual(Scatter)
draw(g)
````

Why is it called `AlgebraOfGraphics.jl`?

````@example 30-makie
g = data(df) * mapping(:x, :y, color = :group) *
    (visual(Lines) + visual(Scatter))
draw(g)
````

You can factorize any part:

````@example 30-makie
addnoise(x) = x + rand()
g = data(df) *
    (mapping(:x, :y, color = :group) + mapping(:x, :y => addnoise))
draw(g)
````

Let's separating the plots by group:

````@example 30-makie
g = data(df) * mapping(:x, :y, layout = :group, color = :group) *
    (visual(Scatter) + visual(Lines))
fig = draw(g)
````

````@example 30-makie
g = data(df) * mapping(:x, :y, row = :group, color = :group) *
    (visual(Scatter) + visual(Lines))
fig = draw(g, axis = (width = 130, height = 130))
````

````@example 30-makie
g = data(df) * mapping(:x, :y, col = :group, color = :group) *
    (visual(Scatter) + visual(Lines))
fig = draw(g, axis = (width = 130, height = 130))
````

