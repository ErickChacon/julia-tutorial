# ## Data visualization
#
# Julia have several packages to create graphs. The most common ones are `Plots` and
# `Makie`. In this section, we will cover some basic visualizations using the package
# `Plots`.

using Plots
x = rand(100)
plot(x)
#-
plot(x, seriestype = :scatter)
#-
plot(x, seriestype = :histogram)

#-
plot(x, seriestype = :line)
plot!(x, seriestype = :scatter)

#-
X = rand(100, 3)
plot(X)

#-
x = rand(100)
y = 3 * x + rand(100)
plot(x, y, seriestype = :scatter)

#-
x = rand(100)
Y = rand(100, 3)
plot(x, Y, seriestype = :scatter)

# Atributos

#-
plot(x, label = "Serie A", title = "Evolution",
    xlabel = "Element number", ylabel = "Probability")

#-
title!("New title")
xlabel!("New axis")

# Joint plots

p1 = plot(x)
p2 = plot(y)
plot(p1, p2)

