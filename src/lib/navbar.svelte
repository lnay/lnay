<script lang="ts">
	import { crossfade } from 'svelte/transition';
	import { quintOut } from 'svelte/easing';

	let [send, receive] = crossfade({
		duration: (d) => Math.sqrt(d * 200),

		fallback(node, _params) {
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
	let pagepathroot: string;
	$: pagepathroot = $page.url.pathname.replace(/(?<=.)\/.*/, '');

	let nav_items = [
		{
			route: '/',
			name: 'Home'
		},
		{
			route: '/expositions',
			name: 'Expositions'
		},
		{
			route: '/pseudowalls',
			name: 'Pseudowalls'
		},
		{
			route: '/blog',
			name: 'Blog'
		}
		/*{
        route: "/contact",
        name: "Contact"
    }*/
	];
</script>

<nav class="ml-4">
	{#each nav_items as { route, name }}
		<a
			class="text-surface-500-400-token hover:text-surface-900-50-token inline-block px-1 font-bold"
			class:active={pagepathroot === route}
			aria-current="page"
			href={route}
		>
			{name}
			{#if pagepathroot == route}
				<div
					class="bg-primary-500 h-1 w-full"
					in:receive={{ key: 1, duration: 350 }}
					out:send={{ key: 1, duration: 350 }}
				/>
			{/if}
		</a>
	{/each}
</nav>

<style lang="scss">
	nav a + a {
		margin-left: 1rem;
	}
	nav .active {
		@apply text-surface-900-50-token;
	}
</style>
