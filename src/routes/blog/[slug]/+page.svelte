<script lang="ts">
import preamble_precomp from "$content/LaTeX-tricks/preamble-precompilation.md?raw";
import latexmk from "$content/LaTeX-tricks/latexmk.md?raw";

import MdPost from "$lib/MdPost.svelte";

const SLUG_TO_POST = {
    "preamble-compilation" : {
        "type" : "markdown",
        "path" : "$content/LaTeX-tricks/preamble-precompilation.md",
        "content" : preamble_precomp
    },
    "latexmk" : {
        "type" : "markdown",
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
<MdPost blogpost={SLUG_TO_POST[data.slug]["content"]} path={SLUG_TO_POST[data.slug]["path"]}/>
{:else}
not found {data.slug}
{/if}

