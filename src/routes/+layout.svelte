<script lang="ts">
import "../app.pcss";
//import "./layout.scss";
import Nav from "$lib/navbar.svelte";
import { crum } from "$lib/stores.js";
import { AppShell, AppBar, LightSwitch } from '@skeletonlabs/skeleton';
import { fly } from 'svelte/transition';

let crum_value = "";

crum.subscribe((value) => {
	crum_value = value;
});
</script>

<svelte:head>
	<title>Luke Naylor</title>
</svelte:head>

<AppShell>
	<svelte:fragment slot="header">
		<AppBar>
			<svelte:fragment slot="lead">
				<a href="/" class="w-6">
				<img src="/favicon.svg" class="h-4 mr-4" alt="logo">
				</a>
				<Nav />
			</svelte:fragment>
				{#if crum_value != ""}		
				<ol class="breadcrumb list-none pl-3 my-0 pb-1" transition:fly={{x:-15}} >
					<li class="crumb-separator" aria-hidden>&rsaquo;</li>
					<li class="crumb">{crum_value}</li>
				</ol>
				{/if}		
			<svelte:fragment slot="trail">
				<div class="inline-block mr-8">
				Luke Naylor
				</div>
				<LightSwitch rounded="rounded-token" />
			</svelte:fragment>
		</AppBar>
	</svelte:fragment>

	<slot />
</AppShell>

