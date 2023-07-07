```@meta
EditURL = "https://github.com/ErickChacon/julia-tutorial/blob/main/scripts/30-makie.jl"
```

# Visualize with Makie

## Basic Makie

````@example 30-makie
using DataFrames
import CairoMakie as MK
using AlgebraOfGraphics

df = DataFrame(id = 1:100, x = rand(100), y = rand(100))
first(df, 5)
````

````@example 30-makie
fig = MK.lines(df.x, df.y)
MK.scatter!(df.x, df.y, color = :red)
fig
````

````@example 30-makie
fig = MK.Figure(backgroundcolor = :tomato)
MK.Axis(fig[1,1], title = "First figure")
MK.scatter!(df.x, df.y, color = :red)
MK.Axis(fig[1,2], title = "Second figure")
MK.lines!(df.x, df.y, color = :blue)
````

````@example 30-makie
fig = MK.scatter(df.x, df.y, color = :red, label = "group 1")
MK.scatter!(rand(100), rand(100), color = :blue, label = "group 2")
MK.axislegend()
````

````@example 30-makie
X = rand(100, 80)

fig, ax, hm = MK.heatmap(X, colormap = MK.Reverse(:RdBu))
MK.Colorbar(fig[1,2], hm)
````

## Algebra of Graphics

````@example 30-makie
df.group = rand(string.(1:4), 100)
````

````@example 30-makie
g = data(df) * mapping(:x, :y) * visual(MK.Scatter)
fig = draw(g)
````

````@example 30-makie
g = data(df) * mapping(:x, :y) * visual(MK.Lines, color = :red)
fig = draw(g)
````

````@example 30-makie
g = data(df) * mapping(:x, :y, color = :group) *
    (visual(MK.Scatter) + visual(MK.Lines))
fig = draw(g)
````

````@example 30-makie
g = data(df) * mapping(:x, :y, layout = :group, color = :group) *
    (visual(MK.Scatter) + visual(MK.Lines))
fig = draw(g)
````

