<script lang="ts">
	import "./layout.scss";
	import Nav from "$lib/navbar.svelte";

	import { page } from '$app/stores';
	$: containerClass = $page.url.pathname==='/'?"cover-container":"container";
</script>

<!--<meta name="theme-color" content="#7952b3">-->
<svelte:head>
	<title>Luke Naylor</title>
</svelte:head>

<div class="outer">
	<div class="{containerClass} inner">
		<header>
			<img src="/favicon.svg" style="height:1em" alt="logo"/>
			Luke Naylor
			<Nav/>
		</header>

		<main>
			<slot></slot>
		</main>

		<footer>
		</footer>
	</div>
</div>

<style lang="scss">
	@use "../../node_modules/bootstrap/scss/bootstrap.scss";
	div.outer {
		@extend .d-flex;
		@extend .h-100;
		min-height: 100vh;
		--foreground-color: var(--bs-black-rgb);
		--background-color: 240,240,240;
		--foreground-color-opaque: rgba(var(--foreground-color), 1);
		--background-color-opaque: rgba(var(--background-color), 1);
		color: var(--foreground-color-opaque);
		background-color: var(--background-color-opaque);
		--foreground-accent-color: 0,50,155;
		--foreground-accent-color-opaque: rgba(var(--foreground-accent-color), 1);
		--bs-code-color: #e1e;
	}
	div.inner {
		@extend .d-flex;
		@extend .w-100;
		@extend .h-100;
		@extend .p-3;
		@extend .mx-auto;
		@extend .flex-column;
		transition: max-width 0.1s ease-in;
	}
	header {
		@extend .mb-auto;
	}
	main {
		@extend .px-3;
	}
	:global(body) {
		background-color: var(--background-color-opaque);
	}

	footer {
		@extend .mt-auto;
		//@extend .text-white-50;
	}
	:global(header > div:first-child) {
		@extend .float-md-start;
		@extend .mb-0;
	}
	@media (prefers-color-scheme: dark) {
		div.outer {
			--foreground-color: var(--bs-white-rgb);
			--background-color: var(--bs-dark-rgb);
			--foreground-accent-color: 120,200,255;
			--bs-code-color: #f7f;
		}
	}

	.cover-container {
		max-width: 42em;
	}
</style>
