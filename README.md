## JuliaImageRecon/About

https://github.com/JuliaImageRecon/About

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
Or just start reporting issues and submitting pull requests (PR)s.


## Examples

The best place to start
is with the
[Examples](https://github.com/JuliaImageRecon/Examples)
collection.


## Repos

Each of the following code repos include documentation
that illustrate the Julia code and the output.
[Here is an example](https://juliaimagerecon.github.io/ImagePhantoms.jl/stable/generated/examples/07-shepp).

* [ImageGeoms.jl](https://github.com/JuliaImageRecon/ImageGeoms.jl) :
  describe image sampling geometry for image reconstruction
  (grid dimensions, pixel size, support mask).

* [ImagePhantoms.jl](https://github.com/JuliaImageRecon/ImagePhantoms.jl) :
  Digital image phantoms (like the Shepp-Logan phantom)
  along with analytical methods for their sinograms and spectra.

* [Sinograms.jl](https://github.com/JuliaImageRecon/Sinograms.jl) :
  Tomographic image reconstruction.
  FBP for parallel-beam and fan-beam geometries.
  FDK for cone-beam computed-tomography CBCT.
  (Forward and back-projectors for CT are a WIP.)

* [SPECTrecon.jl](https://github.com/JuliaImageRecon/SPECTrecon.jl)
  forward and back-projectors for SPECT


## Plans (WIP)

* More iterative reconstruction methods


## Related packages / repos

* https://github.com/MagneticResonanceImaging, including
  * [MRIReco.jl](https://github.com/MagneticResonanceImaging/MRIReco.jl)

* [Michigan Image Reconstruction Toolbox (MIRT)](https://github.com/JeffFessler/MIRT.jl)

* https://github.com/JuliaImages has many relevant tools, including:
  * [Shepp-Logan phantom](https://juliaimages.org/stable/function_reference/#Images.shepp_logan)
  * https://github.com/JuliaImages/ImageView.jl

* https://github.com/JakobAsslaender/BartIO.jl
  for reading
  [BART](https://mrirecon.github.io/bart) format files.

* (please make a PR to add more here!)

Established 2021-06-29.  Stay tuned for more content...
