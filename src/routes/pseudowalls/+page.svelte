<script lang="ts">
    import { marked } from 'marked';
</script>

{@html marked(`
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

## Offline Usage
There's a couple of ways to use these computations outside the webapp:
- The base code is in a [Rust Crate](https://gitlab.com/pseudowalls/tilt.rs), check out the repo link for:
  - Docs for Rust library usage
  - Precompiled binaries with instructions
- There's also a [python wrapper](https://github.com/lnay/pseudo_tilt_py) (usable from SageMath too) which can be installed with
\`pip install pseudo_bridgeland_tilt\`

## Webapp [[fullscreen](https://pseudowalls.gitlab.io/webapp/tilt.sycamore/index.html)]
`)}

<iframe src="https://pseudowalls.gitlab.io/webapp/tilt.sycamore/index.html" title="description"></iframe> 

<style lang="scss">
    iframe {
        width: 100%;
        border: none;
        min-height: 100vh;
        height: auto;
        background-color: white;
    }
</style>