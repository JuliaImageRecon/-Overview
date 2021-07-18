## JuliaImageRecon/About
Overview of this organization and related repos

The goal of this organization is to collect together repos written in the
[Julia language](https://julialang.org/)
that are related to image reconstruction.

Curious about Julia?
Start with
[this shorter article in Nature](http://doi.org/10.1038/d41586-019-02310-3)
and
[this longer paper in SIAM Review](http://doi.org/10.1137/141000671).

Please contact
[Jeff Fessler](https://web.eecs.umich.edu/~fessler)
if you'd like to contribute,
e.g., become a member.
Or just start reporting issues and making PRs!

## Repos

* [ImageGeoms.jl](https://github.com/JuliaImageRecon/ImageGeoms.jl) :
  describe image sampling geometry for image reconstruction
  (grid dimensions, pixel size, support mask).

* [ImagePhantoms.jl](https://github.com/JuliaImageRecon/ImagePhantoms.jl) :
  Digital image phantoms (like the Shepp-Logan phantom)
  along with analytical methods for their sinograms and spectra.
  
## Plans (WIP)

* `Sinograms.jl` Tomographic image reconstruction (FBP)
* `SPECTRecon.jl` forward and back-projectors for SPECT

## Related packages / repos

* https://github.com/MagneticResonanceImaging, including
  * [MRIReco.jl](https://github.com/MagneticResonanceImaging/MRIReco.jl)
* [Michigan Image Reconstruction Toolbox (MIRT)](https://github.com/JeffFessler/MIRT.jl)
* https://github.com/JuliaImages has many relevant tools, including:
  * [Shepp-Logan phantom](https://juliaimages.org/stable/function_reference/#Images.shepp_logan)
  * https://github.com/JuliaImages/ImageView.jl
* (please make a PR to add more here!)

Established 2021-06-29.  Stay tuned for more content...
