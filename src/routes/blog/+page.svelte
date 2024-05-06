<script lang="ts">
import Picture from "$lib/Picture.svelte";
</script>
<svelte:head>
  <meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

<div class="flex relative place-content-evenly my-6 xl:m-10">
<div class="flex-auto max-w-2xl px-0">
<h1>Posts</h1>

<div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-8">
    <a
        href="/blog/latexmk"
        class="card card-hover p-4 text-center overflow-clip align-baseline">
    Using LaTeXmk (intentionally)
    <!--<img src="/latex.png" alt="" >-->
    </a>
    <a
        href="/blog/nb-preamble"
        class="card card-hover p-4 text-center md:row-span-2 overflow-clip align-baseline">
    Adding Jupyter Notebook to appendix
    </a>
    <a
        href="/blog/sagetex"
        class="card card-hover p-4 text-center md:row-span-2 overflow-clip align-baseline">
    Using SageTeX in a sane way
    <!--<img src="/sage.svg" alt="" >-->
    </a>
    <a
        href="/blog/preamble-compilation"
        class="card card-hover p-4 text-center overflow-clip align-baseline">
    Preamble precompilation
    <!--<img src="/latex-name.png" alt="" >-->
    </a>
</div>

</div>
</div>
