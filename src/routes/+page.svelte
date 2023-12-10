<script lang="ts">
  import Teaching from "$lib/Teaching.svelte";
  import Talks from "$lib/Talks.svelte";
  import Picture from "$lib/Picture.svelte";
  import Socials from "$lib/Socials.svelte";
  import profile_pic from "$lib/assets/infront_poster.jpg?w=749;250;150&format=webp;avif;jpg&as=metadata";
</script>
<svelte:head>
  <meta name="description" content="Home page of Luke Naylor's personal site" />
</svelte:head>

<h1>About Me</h1>
<div class="pic-frame">
  <Picture meta={profile_pic}
    alt="Luke Naylor presenting poster at Imperial College London"
    />
  <Socials/>
</div>

<p>
I am a PhD student in the
<a target="_blank" href="https://www.maths.ed.ac.uk/">School of Mathematics</a>
at the
<a target="_blank" href="https://www.ed.ac.uk/">University of Edinburgh</a>,
supervised by
<a target="_blank" href="https://www.ed.ac.uk/profile/antony-maciocia">Prof. Antony Maciocia</a>.
In the past I was a software engineer on the compiler team at (formally)
<a target="_blank" href="https://www.opentext.com/microfocus">Micro Focus</a>
(now the
<abbr title="Application Modernisation and Connectivity (moving COBOL applications off mainframes)">
AMC
</abbr> division of
<del><a target="_black" href="https://www.opentext.com/">OpenText</a></del>
<a target="_black" href="https://www.rocketsoftware.com/" >Rocket Software</a>
).
</p>

<p>
I study walls on Bridgeland stability conditions for complexes of coherent
sheaves on Picard Rank 1 surfaces and threefolds.
This is an area of Algebraic Geometry.
At the moment, I'm interested in automating methods for finding walls, find out more
about this on the
<a href="pseudowalls">Pseudowalls page</a>.
</p>

<Talks/>
<Teaching/>

<style lang="scss">
.pic-frame {
  width: 34%;
  float: right;
  margin-bottom: 1em;
  margin-left: 1.5em;
  font-size: 70%; //0.7em;
  border: 2px solid rgba(var(--foreground-accent-color), 0.2);
  background-color: rgba(var(--foreground-accent-color), 0.03);
  padding: 2px;
  overflow: hidden;
}
</style>
