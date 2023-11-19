[![][docs-img]][docs-url]
[![][binder-img]][binder-url]

## A Julia Tutorial

This is a julia tutorial accesible through binder and as a web page.

[docs-img]: https://img.shields.io/badge/docs-latest%20release-blue.svg
[docs-url]: https://erickchacon.github.io/julia-tutorial/

[binder-img]: https://mybinder.org/badge_logo.svg
[binder-url]: https://mybinder.org/v2/gh/ErickChacon/julia-tutorial/HEAD?labpath=notebooks

## Julia Setup

1. Install julia (https://julialang.org/downloads/)
2. Install an interface:
    - IJulia
        1. Open `julia`
        1. Open the package manager using `]`
        1. Install IJulia executing `add IJulia`
        1. Execute Jupyter inside julia with `using IJulia; jupyterlab()`
    - VSCode
        1. Install VSCode (https://code.visualstudio.com/)
        1. Open VSCode
        1. Click on `Extensions`, search `julia` and click `install`.
        1. Click on `Extensions`, search `jupyter` and click `install`.
        1. Enable Notebook controller in the Julia extension settings.
