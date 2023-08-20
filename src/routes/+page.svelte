<script lang="ts">
	import Teaching from "$lib/Teaching.svelte";
	import Talks from "$lib/Talks.svelte";
  import { marked } from 'marked';
</script>
<svelte:head>
  <meta name="description" content="Home page of Luke Naylor's personal site" />
</svelte:head>

{@html marked(`
# About Me

I am a PhD student in the [School of Mathematics](https://www.maths.ed.ac.uk/)
at the [University of Edinburgh](https://www.ed.ac.uk/), supervised by
[Prof. Antony Maciocia](https://www.ed.ac.uk/profile/antony-maciocia).
In the past I was a software engineer on the compiler team at
[Micro Focus](https://www.opentext.com/microfocus).

I study walls on Bridgeland stability conditions for complexes of coherent
sheaves on Picard Rank 1 surfaces and threefolds
(an area of Algebraic Geometry).
At the moment, I'm interested on automating methods for finding walls, find out more
about this on the [Pseudowalls page](pseudowalls).
`)}

<Talks/>
<Teaching/>
