<script lang="ts">
	import Logo from "$lib/Logo.svelte";
	import Teaching from "$lib/Teaching.svelte";
	let extraClass = "flat";
</script>

<Teaching/>

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
