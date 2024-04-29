<script lang="ts">
import preamble_precomp from "$content/LaTeX-tricks/preamble-precompilation.md?raw";
import latexmk from "$content/LaTeX-tricks/latexmk.md?raw";
import sagetex from "$content/sagetex-blog/thought.md?raw";

import MdPost from "$lib/MdPost.svelte";

const SLUG_TO_POST = {
    "sagetex" : {
        "type" : "markdown",
        "name": "SaneTex",
        "path" : "$content/sagetex-blog/thought.md?raw",
        "content" : sagetex
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
</script>

<svelte:head>
  <meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

{#if SLUG_TO_POST[data.slug]}
<ol class="breadcrumb list-none">
	<li class="crumb"><a class="anchor" href="/blog">Blog</a></li>
	<li class="crumb-separator" aria-hidden>&rsaquo;</li>
	<li class="crumb">{SLUG_TO_POST[data.slug].name}</li>
</ol>
<MdPost blogpost={SLUG_TO_POST[data.slug]["content"]} path={SLUG_TO_POST[data.slug]["path"]}/>
{:else}
not found {data.slug}
{/if}

