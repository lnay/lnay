<script lang="ts">
import PseudoWallsContent from './PseudoWallsContent.md';
const WEBAPP_URL = "https://pseudowalls.gitlab.io/webapp/tilt.leptos/";
</script>
<svelte:head>
  <meta name="description" content="Section of Luke Naylor's personal site about using programming libraries for computing possibilities for walls of tilt Bridgeland stabilities on Picard rank 1 surfaces." />
</svelte:head>

<div class="flex relative place-content-evenly my-6 xl:m-10">
<div class="flex-auto max-w-6xl px-0">

<PseudoWallsContent />

<h2>WebApp <a href={WEBAPP_URL}>[fullscreen]</a></h2>

<iframe
    src={WEBAPP_URL}
    title="external WebApp for finding Pseudowalls for Chern characters on a Principally polarised abelian surface"
    class="w-full min-h-screen h-auto border-none bg-surface-900"
></iframe>
</div>
</div>
