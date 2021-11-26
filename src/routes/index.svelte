<script>
	import Logo from "./components/Logo.svelte"
	let extraClass = "flat";
</script>

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
