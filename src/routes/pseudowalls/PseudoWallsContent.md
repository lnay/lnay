# Wall Finding
The first step in finding walls for a fixed Chern character on a Picard rank 1
surface is to look at potential destabilizers. These destabilizers must satisfy
certain numerical inequalities, to which there are sometimes finitely many
solutions.
[Benjamin Schmidt](https://bschmidt.pythonanywhere.com/)
had written a program to compute these solutions in a
[SageMath library](https://github.com/benjaminschmidt/stability_conditions),
however occasionally suffered from performance issues.
The following webapp computes these solutions, in the browser, for the complex
projective plane and principally polarized abelian surfaces.
The details are currently being written, feel free to contact me about this.

## Offline/Programmatic Usage
There's a couple of ways to use these computations outside the webapp:
- The base code is in a [Rust Crate](https://gitlab.com/pseudowalls/tilt.rs), check out the repo link for:
  - Docs for Rust library usage
  - Precompiled binaries with instructions
- There's also a [python wrapper](https://github.com/lnay/pseudo_tilt_py) (usable from SageMath too) which can be installed with
`pip install pseudo_bridgeland_tilt`
  - This functionality will eventually be included in another, less plain, [python library](https://gitlab.com/pseudowalls/pseudowalls) which currently deals with symbolic maniplations (using sympy or sage) of expressions related to pseudowalls.
  - The python wrapper currently only attempts to deal with surfaces where the generator of the Neron-Severi group has self intersection 1 or 2 (such as
<math xmlns="http://www.w3.org/1998/Math/MathML">
  <msup>
    <mi>ℙ</mi>
    <mn>2</mn>
  </msup>
</math>
  or principally polarized surface).
- For other surfaces, the above mentioned Rust crate must be used directly. To try in the cloud, follow the link to this [repository](https://github.com/lnay/tilt-rs-notebook) to open an interactive notebook with GitHub codespaces.
