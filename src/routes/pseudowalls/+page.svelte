<script lang="ts">
import { marked } from 'marked';
const WEBAPP_URL = "https://pseudowalls.gitlab.io/webapp/tilt.leptos/";
</script>
<svelte:head>
  <meta name="description" content="Section of Luke Naylor's personal site about using programming libraries for computing possibilities for walls of tilt Bridgeland stabilities on Picard rank 1 surfaces." />
  <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
  <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
  <script>
   window.MathJax = {
    tex: {
      inlineMath: [['$', '$'], ['\\(', '\\)']]
    }
  };
</script>
</svelte:head>

<div class="flex relative place-content-evenly my-6 xl:m-10">
<div class="flex-auto max-w-6xl px-0">
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

## Offline/Programmatic Usage
There's a couple of ways to use these computations outside the webapp:
- The base code is in a [Rust Crate](https://gitlab.com/pseudowalls/tilt.rs), check out the repo link for:
  - Docs for Rust library usage
  - Precompiled binaries with instructions
- There's also a [python wrapper](https://github.com/lnay/pseudo_tilt_py) (usable from SageMath too) which can be installed with
\`pip install pseudo_bridgeland_tilt\`
  - This functionality will eventually be included in another, less plain, [python library](https://gitlab.com/pseudowalls/pseudowalls) which currently deals with symbolic maniplations (using sympy or sage) of expressions related to pseudowalls.
  - The python wrapper currently only attempts to deal with surfaces where the generator of the Neron-Severi group has self intersection 1 or 2 (such as $\\mathbb{P}^2$ or principally polarized surface).
- For other surfaces, the above mentioned Rust crate must be used directly. To try in the cloud, follow the link to this [repository](https://github.com/lnay/tilt-rs-notebook) to open an interactive notebook with GitHub codespaces.
`)}

<h2>WebApp <a href={WEBAPP_URL}>[fullscreen]</a></h2>

<iframe
    src={WEBAPP_URL}
    title="external WebApp for finding Pseudowalls for Chern characters on a Principally polarised abelian surface"
    class="w-full min-h-screen h-auto border-none bg-surface-900"
></iframe>
</div>
</div>
