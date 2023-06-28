[![][docs-img]][docs-url]
[![][binder-img]][binder-url]

## A Julia Tutorial

This is a julia tutorial accesible through binder and as a web page.

[docs-img]: https://img.shields.io/badge/docs-latest%20release-blue.svg
[docs-url]: https://erickchacon.github.io/julia-tutorial/

[binder-img]: https://mybinder.org/badge_logo.svg
[binder-url]: https://mybinder.org/v2/gh/ErickChacon/julia-for-statistics/HEAD?filepath=notebooks

## Julia Setup

1. Install julia (https://julialang.org/downloads/)
2. Install an interface:
    a. IJulia
        i. Open `julia`
        ii. Open the package manager using `]`
        iii. Install IJulia executing `add IJulia`
        iv.  Execute Jupyter inside julia with `using IJulia; jupyterlab()`
    b. VSCode
        i. Install VSCode (https://code.visualstudio.com/)
        ii. Open VSCode
        iii. Click on `Extensions`, search `julia` and click `install`.
        iv.  Click on `Extensions`, search `jupyter` and click `install`.
        v.  Enable Notebook controller in the Julia extension settings.
