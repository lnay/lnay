<script lang="ts">
import "../app.pcss";
//import "./layout.scss";
import Nav from "$lib/navbar.svelte";
import { AppShell, AppBar, LightSwitch } from '@skeletonlabs/skeleton';
</script>

<svelte:head>
	<title>Luke Naylor</title>
</svelte:head>

<AppShell>
	<svelte:fragment slot="header">
		<AppBar>
			<svelte:fragment slot="lead">
				<img src="/favicon.svg" style="height:1em" alt="logo">
			</svelte:fragment>
			Luke Naylor
			<div style="display: inline-block; margin-left: 2em;">
			<LightSwitch rounded="rounded-token" />
			</div>
			<svelte:fragment slot="trail">
				<Nav />
			</svelte:fragment>
		</AppBar>
	</svelte:fragment>

	<slot />
</AppShell>

