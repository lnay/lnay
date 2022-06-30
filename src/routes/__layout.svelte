<script>
	import "./layout.scss";
	import Logo from "./components/Logo.svelte";
	import Nav from "./navbar.svelte";
	export let pagepath;
	$: containerClass = pagepath==='/'?"cover-container":"container";
</script>

<script context="module">
	export function load({url}){
		return {props : {pagepath : url.pathname}};
	}
</script>

<!--<meta name="theme-color" content="#7952b3">-->
<svelte:head>
	<title>Lukidean Geometry</title>
</svelte:head>


<div class="d-flex h-100 text-center text-white bg-dark">
	<div style="transition: max-width 2s;" class="{containerClass} d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="mb-auto">
		<div>
			<div class="float-md-start mb-0"><Logo extraClass="flat"/></div>
			<Nav pagepath={pagepath}/>
		</div>
		</header>

		<main class="px-3">
			<h1>Cover your page.</h1>
			<p class="lead">
				Cover is a one-page template for building simple and beautiful home
				pages. Download, edit the text, and add your own fullscreen background
				photo to make it your own.
			</p>
			<p>
				The current page is <em>{pagepath}</em>
			</p>
			<p class="lead">
				<a href="/" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Learn more</a>
			</p>
			<slot></slot>
		</main>

		<footer class="mt-auto text-white-50">
		<p>
			Cover template for
			<a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>
			, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.
		</p>
		</footer>
	</div>
</div>
