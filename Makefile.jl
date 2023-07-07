# Load packages

using ComposerTools

# Update Manifest.toml and Project.toml

copyproject()

# Compile scripts to notebooks

createnotebooks("scripts", "notebooks")

# Create markdown files
repo_path = "https://github.com/ErickChacon/julia-tutorial/blob/main"
rm(joinpath("docs", "src"), recursive = true, force = true)
Literate.markdown.(jls, joinpath("docs", "src"), execute = false, documenter = true,
    repo_root_url = repo_path, credit = false)
