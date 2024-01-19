<script lang="ts">
  import Teaching from "$lib/Teaching.svelte";
  import Talks from "$lib/Talks.svelte";
  import ReadingGroupTalks from "$lib/ReadingGroupTalks.svelte";
  import Posters from "$lib/Posters.svelte";
  let table_container_width: number = 800;
  $: split_tables = (table_container_width > 800)? true: false;
  $: console.log(table_container_width, split_tables);
</script>
<svelte:head>
  <meta name="description" content="Luke Naylor's academic related experience" />
</svelte:head>

<h1>Presentations</h1>

<div bind:clientWidth={table_container_width}>
{#if !split_tables}
<table border="1" frame="void" rules="all">
	<Talks/>
	<ReadingGroupTalks/>
	<Posters/>
</table>
{:else}
<div class="horizontal-span">
<table border="1" frame="void" rules="all">
	<Talks/>
</table>
<table border="1" frame="void" rules="all">
	<ReadingGroupTalks/>
</table>
</div>
<table border="1" frame="void" rules="all">
	<Posters/>
</table>
{/if}
</div>

<h1>Teaching</h1>

<p>
I am involved with teaching in the School of Mathematics at the University of Edinburgh,
where I have received an
<a href="https://www.ed.ac.uk/institute-academic-development/learning-teaching/cpd/teaching-award">
Associate Fellowship of the Higher Education Academy
</a>
</p>

<table border="1" frame="void" rules="all">
<Teaching/>
</table>
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
