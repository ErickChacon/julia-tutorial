# Load packages

using ComposerTools
using Literate

# Update Manifest.toml and Project.toml

# copyproject()

# Compile scripts to notebooks

createnotebooks("scripts", "notebooks")

# Create markdown files

repo_path = "https://github.com/ErickChacon/julia-tutorial/blob/main"
createmarkdowns("scripts", joinpath("docs", "src"), repo_path)
