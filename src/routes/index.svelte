<script>
	import Logo from "../components/Logo.svelte"
	let extraClass = "flat";
</script>

<Logo {extraClass}/>

<label>
	<input type=radio bind:group={extraClass} name="extraClass" value="flat">
	flat
</label>
<label>
	<input type=radio bind:group={extraClass} name="extraClass" value="square">
	square
</label>
