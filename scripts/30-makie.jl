
# # Visualize with Makie

# ## Basic Makie

using DataFrames
import CairoMakie as MK
using AlgebraOfGraphics

df = DataFrame(id = 1:100, x = rand(100), y = rand(100))
first(df, 5)

#-

fig = MK.lines(df.x, df.y)
MK.scatter!(df.x, df.y, color = :red)
fig
MK.save("makie.pdf", fig) #src

#-

fig = MK.Figure(backgroundcolor = :tomato)
MK.Axis(fig[1,1], title = "First figure")
MK.scatter!(df.x, df.y, color = :red)
MK.Axis(fig[1,2], title = "Second figure")
MK.lines!(df.x, df.y, color = :blue)
MK.save("makie.pdf", fig) #src

#-

fig = MK.scatter(df.x, df.y, color = :red, label = "group 1")
MK.scatter!(rand(100), rand(100), color = :blue, label = "group 2")
MK.axislegend()
MK.save("makie.pdf", fig) #src

#-

X = rand(100, 80)

fig, ax, hm = MK.heatmap(X, colormap = MK.Reverse(:RdBu))
MK.Colorbar(fig[1,2], hm)
MK.save("makie.pdf", fig) #src

# ## Algebra of Graphics

df.group = rand(string.(1:4), 100)

#-

g = data(df) * mapping(:x, :y) * visual(MK.Scatter)
fig = draw(g)
MK.save("makie.pdf", fig) #src

#-

g = data(df) * mapping(:x, :y) * visual(MK.Lines, color = :red)
fig = draw(g)
MK.save("makie.pdf", fig) #src


#-

g = data(df) * mapping(:x, :y, color = :group) *
    (visual(MK.Scatter) + visual(MK.Lines))
fig = draw(g)
MK.save("makie.pdf", fig) #src

#-

g = data(df) * mapping(:x, :y, layout = :group, color = :group) *
    (visual(MK.Scatter) + visual(MK.Lines))
fig = draw(g)
MK.save("makie.pdf", fig) #src
