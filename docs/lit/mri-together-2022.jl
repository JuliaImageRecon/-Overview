#---------------------------------------------------------
# # [MRItogether2022](@id mri-together-2022)
#---------------------------------------------------------

#=
This page originates from
[About](https://github.com/JuliaImageRecon/About)
and discusses
Julia packages for image reconstruction.

This page was generated from a single Julia file:
[mri-together-2022.jl](@__REPO_ROOT_URL__/mri-together-2022.jl).
=#

#md # In any such Julia documentation,
#md # you can access the source code
#md # using the "Edit on GitHub" link in the top right.

#md # The corresponding notebook can be viewed in
#md # [nbviewer](http://nbviewer.jupyter.org/) here:
#md # [`mri-together-2022.ipynb`](@__NBVIEWER_ROOT_URL__/mri-together-2022.ipynb),
#md # and opened in [binder](https://mybinder.org/) here:
#md # [`mri-together-2022.ipynb`](@__BINDER_ROOT_URL__/mri-together-2022.ipynb).


# ### Setup

# Packages needed here.

using MIRTjim: jim, prompt
using InteractiveUtils: versioninfo


# The following line is helpful when running this file as a script;
# this way it will prompt user to hit a key after each figure is displayed.

isinteractive() ? jim(:prompt, true) : prompt(:draw);


#=
# MRI together workshop
[https://mritogether.esmrmb.org](https://mritogether.esmrmb.org)

# Session: Expanding your image reconstruction toolbox

# Image Reconstruction Using Julia
- Jeff Fessler, University of Michigan, US,
- Tobias Knopp, Hamburg University of Technology, Germany

Conflicts of interest regarding this presentation:
Nothing to disclose

The copyright of this presentation belongs to the Speaker.
This presentation is released under a
[CC-BY](https://creativecommons.org/licenses/by/4.0) license.

Key urls:

- [https://juliaimagerecon.github.io/Examples](https://juliaimagerecon.github.io/Examples)
- [https://github.com/JeffFessler/MIRT.jl](https://github.com/JeffFessler/MIRT.jl)
  Julia version
- [https://github.com/guanhuaw/MIRTorch](https://github.com/guanhuaw/MIRTorch)
  PyTorch version
- [https://github.com/JeffFessler/mirt](https://github.com/JeffFessler/mirt)
  Matlab version


## Why Julia for image reconstruction?

- Speed:
  * Performance of a compiled language (JIT via LLVM)
  * Easy use of threads, distributed computing, GPU
  * Memory efficient: `Float16`, Sparse of any type, call by ref.

- Ease of use:
  * interactive development / prototyping
  * Dynamic typing / Jupyter notebooks

- Ease of coding / readability:
  * Readable syntax matches the mathematics of computational imaging
  * Unicode / UTF-8
  * Built-in operations with numerical arrays
  * Namespace control with `using` and `import`
  * IDE / debuggers: VSCode etc.
  * Code reuse (object oriented): multiple dispatch, subtypes
  * Best of Matlab, Python, LISP, ...

- Libraries:
  * `FFTW` `LAPACK` [`CUDA`](https://github.com/JuliaGPU/CUDA.jl) ...
  * Interoperable with other languages `ccall` `pycall`
    [MATLAB.jl](https://github.com/JuliaInterop/MATLAB.jl)

- Reproducibility:
  * `git`, `Pkg`, `Manifest`
  * Julia-based markdown documentation (including this presentation)
  * continuous integration / code coverage with GitHub Actions

- Free: open source


## Brief history

- Started in 2009 around MIT
  (Alan Edelman, Jeff Bezanson, Stefan Karpinski, and Viral B. Shah)

- First release in 2012

- 2017 SIAM Review [paper](http://doi.org/10.1137/141000671)

- Version 1.0 in Aug. 2018

- Used at University of Michigan since 2017 (1000s of students)

=#

#src syntax comparison?

#=
## Function definitions

Ways to define the function
``f(x,y) = x^2 + y^3``
in Julia:
=#

function f1(x,y)
    return x^2 + y^3
end

f3 = (x,y) -> x^2 + y^3

f(x,y) = x^2 + y^3 # looks the most like the math

f(4,5)


#=
## Gradient descent example

To minimize ``f(x)`` using gradient descent
(for illustration)
in math:
```math
x_k = x_{k-1} - \alpha \nabla f(x_{k-1})
, \text{ for } k=1,2,\ldots,N_{\mathrm{iter}}
```

Enter symbols like `α` with LaTeX codes and tab completion:
`\alpha<tab>`.

Julia code for GD below looks remarkably similar to the math.
- Type annotation is optional.
- Arguments following `;` are named keyword arguments.
=#

function gd(∇f::Function, α::Real, x ; Niter::Int = 50)
    for iter in 1:Niter
         x = x - α * ∇f(x)
    end
    return x
end

#=
### Testing the GD function

Example:
``f(x) = \frac{1}{2} \| A x - y \|^2``
⟹
``∇ f(x) = A' (A x - y)``
⟹
``L_{∇f} = \| A \|_2^2``
⟹
``α = 1/L_{∇f}``
=#

using LinearAlgebra: opnorm # same as svdvals(A)[1]
M,N = 6,4
A = randn(M,N); y = randn(M); # test data
∇f(x) = A'*(A*x - y) # LS gradient
xh = A \ y # global minimizer of f
α = 1/opnorm(A)^2 # step size = 1/Lipschitz constant
xgd = gd(∇f, α, zeros(N) ; Niter=9000)
@assert xgd ≈ xh # equivalent within precision of type


# ### Reproducibility

# This page was generated with the following version of Julia:

io = IOBuffer(); versioninfo(io); split(String(take!(io)), '\n')


# And with the following package versions

import Pkg; Pkg.status()
