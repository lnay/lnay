<script lang="ts">
  import Teaching from "$lib/Teaching.svelte";
  import Talks from "$lib/Talks.svelte";
  import ReadingGroupTalks from "$lib/ReadingGroupTalks.svelte";
  import Posters from "$lib/Posters.svelte";

  import { crum } from "$lib/stores.js";
  crum.set("");
</script>
<svelte:head>
  <meta name="description" content="Luke Naylor's academic related experience" />
</svelte:head>


<div class="flex relative place-content-evenly my-6 xl:m-10">
<div class="flex-auto max-w-6xl px-0">
<h1>Presentations</h1>
<div>
<table border="1" frame="void" rules="all">
	<Talks/>
	<ReadingGroupTalks/>
	<Posters/>
</table>
</div>

<h1>Teaching</h1>

<h2>Teaching Material Creation</h2>
<p>
I was involved with the logistics for moving to using GitHub Codespaces in the
<a href="http://www.drps.ed.ac.uk/23-24/dpt/cxmath08065.htm">Computational Numerics</a> course,
following the release by GitHub in early 2023.
In particular, the containerization.
I've also added to the teaching material in that course to encourage students to make use of IDE debuggers.
</p>
<p>
For the beginning of 2024, I am running a
<a href="https://glams-professional-skills.github.io/website/">workshop</a>
to promote tech literacy among mathematical researchers.
</p>

<h2>Tutoring</h2>
<p>
I haved been involved with tutoring in the School of Mathematics at the University of Edinburgh,
where I received an
<a href="https://www.ed.ac.uk/institute-academic-development/learning-teaching/cpd/teaching-award">
Associate Fellowship of the Higher Education Academy
</a>
</p>

<table border="1" frame="void" rules="all">

<Teaching/>
</table>
</div>
</div>

<style lang="scss">
    div.horizontal-span {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        table {
            width: calc(50% - 0.5rem)
        }
        margin-bottom: 1rem;
    }
    table {
        border-collapse: collapse;
        text-decoration: none;
        font-style: normal;
        width: 100%;
    }
</style>
