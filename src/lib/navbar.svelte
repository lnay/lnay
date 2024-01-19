<script lang="ts">
	import { crossfade } from 'svelte/transition';
	import { quintOut } from 'svelte/easing';

	let [send, receive] = crossfade({
		duration: (d) => Math.sqrt(d * 200),

		fallback(node, params) {
			const style = getComputedStyle(node);
			const transform = style.transform === 'none' ? '' : style.transform;

			return {
				duration: 600,
				easing: quintOut,
				css: (t) => `
					transform: ${transform} scale(${t});
					opacity: ${t}
				`
			};
		}
	});

	import { page } from '$app/stores';
	let pagepath: string;
	$: pagepath = $page.url.pathname;
	

	let nav_items = [
		{
			route: "/",
			name: "Home"
		},
		{
			route: "/experience",
			name: "Experience"
		},
		{
			route: "/pseudowalls",
			name: "Pseudowalls"
		},
		/*
		{
			route: "/blog",
			name: "Blog"
		},
		*/
		/*{
			route: "/contact",
			name: "Contact"
		}*/
	];
	
</script>
<nav class="nav nav-masthead justify-content-center float-md-end">
	{#each nav_items as { route, name}}
		<a class="nav-link {pagepath===route?'active':''}"
		   aria-current="page"
		   href="{route}">
			{name}
		{#if pagepath==route}
		<div
			class="underline"
			in:receive={{ key: 1 , duration: 350}}
			out:send={{ key: 1 , duration: 350}}
		/>
		{/if}
		</a>
	{/each}
</nav>

<style lang="scss">
	.nav-masthead .nav-link {
		padding: .25rem 0;
		font-weight: 700;
		color: rgba(var(--foreground-color), .7);
		background-color: transparent;
		border-bottom: none;
		div.underline {
			height: .25rem;
			background-color: var(--foreground-accent-color-opaque);
			width: 100%;
		}
	}

	.nav-masthead .nav-link:hover,
	.nav-masthead .nav-link:focus {
		&:not(.active) {
			color: var(--foreground-color);
		}
	}

	.nav-masthead .nav-link + .nav-link {
		margin-left: 1rem;
	}

	.nav-masthead .active {
		color: var(--foreground-color);
		border-bottom: none;
	}
</style>
