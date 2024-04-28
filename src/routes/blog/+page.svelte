<script lang="ts">
import blogpost from "$content/LaTeX-tricks/preamble-precompilation.md?raw";
import { marked } from 'marked';
</script>
<svelte:head>
  <meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

{@html marked(blogpost)}
