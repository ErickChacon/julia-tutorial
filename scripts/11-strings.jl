# ## Characters and strings

'x'
typeof('x')
Int('x')
Char(120)
isvalid(Char, 0x110000)
#-
'A' < 'a'
Int('A')
Int('a')
'A' <= 'a' <= 'z'
#-
str = "Hello, world.\n"
# """Contains "quote" characters"""
str[begin]
str[1]
str[6]
str[end]
str[end-1]
str[4:9]
#
# ```julia
# typeof(SubString(str, 1, 5))
#
# firstindex(str)
# lastindex(str)
#
# s = "\u2200 x \u2203 y"
# s[1]
# s[2]
# s[4]
# nextind(s, 1)
# nextind(s, 5)
#
# stri = """
# Hello you,
# Small text.
# Cheers,
# Me
# """
# ```
#
#
# ### Regular expressions
#
# ```julia
# r"^he"
# typeof(ans)
#
# occursin(r"^he", "hello")
# m = match(r"^he", "hello")
# m.match
# m.captures
# ```
#

### Concatenation

# greet = "Hello"
# whom = "you"
# string(greet, ", ", whom, ".\n")
# greet * ", " * whom * ".\n"
# "$greet, $whom.\n"
# "1 + 2 = $(1 + 2)"

