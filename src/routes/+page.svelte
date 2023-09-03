<script lang="ts">
  import Teaching from "$lib/Teaching.svelte";
  import Talks from "$lib/Talks.svelte";
  import { marked } from 'marked';
  import profile_pic from "$lib/assets/infront_poster.jpg"
</script>
<svelte:head>
  <meta name="description" content="Home page of Luke Naylor's personal site" />
</svelte:head>

<h1>About Me</h1>
<img alt="The project logo" src={profile_pic} style="float: right; width: 30%; margin-left: 1.5em;"/>

<p>
I am a PhD student in the
<a href="https://www.maths.ed.ac.uk/">School of Mathematics</a>
at the
<a href="https://www.ed.ac.uk/">University of Edinburgh</a>,
supervised by
<a href="https://www.ed.ac.uk/profile/antony-maciocia">Prof. Antony Maciocia</a>
In the past I was a software engineer on the compiler team at
<a href="https://www.opentext.com/microfocus">Micro Focus</a>.
</p>

<p>
I study walls on Bridgeland stability conditions for complexes of coherent
sheaves on Picard Rank 1 surfaces and threefolds.
This is an area of Algebraic Geometry.
At the moment, I'm interested on automating methods for finding walls, find out more
about this on the
<a href="pseudowalls">Pseudowalls page</a>.
</p>

<Talks/>
<Teaching/>
