using Literate

jls = filter(x -> occursin(r"[0-9]+-.*\.jl$", x), readdir("scripts", join = true))
ipynbs = replace.(replace.(jls, "scripts" => "notebooks"), ".jl" => ".ipynb")

Literate.notebook.(jls, "notebooks", execute = true)
