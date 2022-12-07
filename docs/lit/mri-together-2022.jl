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
=#


# ### Reproducibility

# This page was generated with the following version of Julia:

io = IOBuffer(); versioninfo(io); split(String(take!(io)), '\n')


# And with the following package versions

import Pkg; Pkg.status()
