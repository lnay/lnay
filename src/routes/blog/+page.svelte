<script lang="ts">
	let param = " ";
	import TalkData from "$data/Talks.json";
</script>
<svelte:head>
  <meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

<p> This is the blog section ...</p>
<p>
	{JSON.stringify(TalkData)}
</p>
