using Documenter

customfooter =  "Powered by [Literate.jl](https://github.com/fredrikekre/Literate.jl) and [Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) and the [Julia Programming Language](https://julialang.org/)."

makedocs(sitename = "Julia Tutorial", format = Documenter.HTML(footer = customfooter))

deploydocs(repo = "github.com/ErickChacon/julia-tutorial.git", versions = nothing)

