<script lang="ts">
import preamble_precomp from "$content/LaTeX-tricks/preamble-precompilation.md?raw";
import latexmk from "$content/LaTeX-tricks/latexmk.md?raw";
import sagetex from "$content/sagetex-blog/README.md?raw";
import nbappendix from "$content/sagetex-blog/notebook-appendix.md?raw";

import MdPost from "$lib/MdPost.svelte";
import { crum } from "$lib/stores.js";

const SLUG_TO_POST = {
    "sagetex" : {
        "type" : "markdown",
        "name": "SaneTex",
        "path" : "$content/sagetex-blog/README.md?raw",
        "content" : sagetex
    },
    "nb-preamble" : {
        "type" : "markdown",
        "name": "Jupyter Notebook Preamble",
        "path" : "$content/sagetex-blog/notebook-appendix.md?raw",
        "content" : nbappendix
    },
    "preamble-compilation" : {
        "type" : "markdown",
        "name": "Faster LaTeX",
        "path" : "$content/LaTeX-tricks/preamble-precompilation.md",
        "content" : preamble_precomp
    },
    "latexmk" : {
        "type" : "markdown",
        "name": "LaTeXmk",
        "path" : "$content/LaTeX-tricks/latexmk.md",
        "content" : latexmk
    }
};

export let data;

crum.set(SLUG_TO_POST[data.slug]["name"]);
</script>

<svelte:head>
  <meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

{#if SLUG_TO_POST[data.slug]}
<MdPost blogpost={SLUG_TO_POST[data.slug]["content"]} path={SLUG_TO_POST[data.slug]["path"]}/>
{:else}
not found {data.slug}
{/if}

