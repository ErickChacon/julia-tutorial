# # Introduction to the Julia programming language
#
# In this tutorial we will cover the basic elements of Julia. For more detailed
# information, you can check the official [Julia
# documentation](https://docs.julialang.org).
#
# ## Get started
#
# The three main ways of using Julia are by writing commands directly in an *interactive
# session*, working with *scripts*, and working with *notebooks*. These are described
# below.
#
# ### An interactive session
#
# You can start using Julia on an interactive session by running `julia` from the command
# line. Once it is opened, you can execute Julia commands:
#
# ```julia
# 10 ^ 2
# ```
#
# The session can be closed using `CTRL-D` or typing `exit()` inside Julia session.
#
# ### Scripts
#
# Julia scripts have extension `*.jl`. An script is just a file containing Julia commands.
# The script `src/00-file.jl` has the following commands:
#
# ```julia
# x = [1, 3]
# for i in x
#     println(i)
# end
# ```
#
# We can evaluate this script using the function `include`.
#
# ```julia
# include("src/00-file.jl")
# ```
#
# A custom script with optional arguments can also be evaluated non-interactively (on a
# terminal) providing the script name as a first argument to the `julia` command.
#
# ```bash
# julia script.jl arg1 arg2
# ```
#
# Note that the script name is passed to the global variable `PROGRAM_FILE`. Similarly,
# the arguments are passed to `ARGS`.
#
# As an example the script `src/00-script.jl` prints the filename and the arguments
# provided.
#
# ```julia
# println(PROGRAM_FILE)
# for x in ARGS
#     println(x)
# end
# ```
#
# We can execute it as follows:
#
# ```bash
# julia src/00-script.jl 1 10 100
# ```
#
# ### Notebooks
#
# Notebooks are an interactive way to execute code, but also add formated markdown text.
# You are probably looking at this file as a notebook. In this course, we will mainly use
# notebooks given that it is easier for students to start up.
