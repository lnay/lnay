<script lang="ts">
	import "../app.pcss";
    import "./layout.scss";
    import Nav from "$lib/navbar.svelte";

    import { page } from '$app/stores';
</script>

<!--<meta name="theme-color" content="#7952b3">-->
<svelte:head>
	<title>Luke Naylor</title>
</svelte:head>

<div class="outer">
	<div class="first-inner">
		<header>
			<img src="/favicon.svg" style="height:1em" alt="logo">
			Luke Naylor
			<Nav></Nav>
		</header>
		<div class="second-inner" class:cover-container="{$page.url.pathname==='/'}" class:container="{$page.url.pathname!=='/'}" style="padding-left: 0 !important; padding-right: 0 !important;">
			<main>
				<slot></slot>
			</main>

		</div>
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
	div.first-inner{
		// containing nav main and footer
		@extend .inner;
		@extend .container;
		@extend .suppress-side-padding;
	}
	div.second-inner{
		// containing just main
		@extend .inner;
		transition: max-width 0.1s ease-in;
	}
	div.inner {
		@extend .d-flex;
		@extend .w-100;
		@extend .h-100;
		@extend .p-3;
		@extend .mx-auto;
		@extend .flex-column;
	}
	header {
		@extend .mb-auto;
	}
	.suppress-side-padding {
		padding-left: 0 !important;
		padding-right: 0 !important;
	}
	main {
		@extend .px-3;
		@extend .suppress-side-padding;
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
