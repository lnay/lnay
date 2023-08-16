<script lang="ts">
	import "./layout.scss";
	import Logo from "$lib/Logo.svelte";
	import Nav from "$lib/navbar.svelte";

	import { page } from '$app/stores';
	$: containerClass = $page.url.pathname==='/'?"cover-container":"container";
</script>

<!--<meta name="theme-color" content="#7952b3">-->
<svelte:head>
	<title>Lukidean Geometry</title>
</svelte:head>

<div class="outer">
	<div class="{containerClass} inner">
		<header>
			Luke Naylor
			<!--<Logo extraClass="flat"/>-->
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
	:global(div.outer) {
		@extend .d-flex;
		@extend .h-100;
		//@extend .text-center;
		@extend .text-white;
		@extend .bg-dark;
		min-height: 100vh;
	}
	:global(div.inner) {
		@extend .d-flex;
		@extend .w-100;
		@extend .h-100;
		@extend .p-3;
		@extend .mx-auto;
		@extend .flex-column;
		transition: max-width 0.1s ease-in;
	}
	:global(header) {
		@extend .mb-auto;
	}
	:global(main) {
		@extend .px-3;
	}
	:global(footer) {
		@extend .mt-auto;
		@extend .text-white-50;
	}
	:global(header > div:first-child) {
		@extend .float-md-start;
		@extend .mb-0;
	}
	:global(body) {
		text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
		box-shadow: inset 0 0 5rem rgba(0, 0, 0, .5);
		text-decoration: normal;
	}

	.cover-container {
		max-width: 42em;
	}
</style>
