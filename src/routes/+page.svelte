<script>
	import Logo from "$lib/Logo.svelte";
	import TeachingData from "$data/Teaching.json";
	let extraClass = "flat";
</script>

<p>
	{JSON.stringify(TeachingData)}
</p>

<label>
	<input type=radio bind:group={extraClass} name="extraClass" value="flat">
	flat
</label>
<label>
	<input type=radio bind:group={extraClass} name="extraClass" value="square">
	square
</label>
<label>
	<input type=radio bind:group={extraClass} name="extraClass" value="thin">
	thin
</label>
<label>
	<input type=radio bind:group={extraClass} name="extraClass" value="url">
	url
</label>

<Logo {extraClass}/>
