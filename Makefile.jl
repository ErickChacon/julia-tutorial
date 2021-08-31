using Weave

jmds = filter(x -> occursin(r"[0-9]+-.*\.jmd$", x), readdir("scripts", join = true))
ipynbs = replace.(replace.(jmds, "scripts" => "notebooks"), ".jmd" => ".ipynb")

convert_doc.(jmds, ipynbs)
