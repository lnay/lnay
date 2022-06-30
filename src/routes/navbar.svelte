<script>
	export let pagepath;

	let nav_items = [
		{
			route: "/",
			name: "Home"
		},
		{
			route: "/blog",
			name: "Blog"
		},
		/*{
			route: "/contact",
			name: "Contact"
		}*/
	];
	
</script>
<nav class="nav nav-masthead justify-content-center float-md-end">
	{#each nav_items as {route, name}}
		<a class="nav-link {pagepath===route?'active':''}"
		   aria-current="page"
		   href="{route}">
			{name}
		</a>
	{/each}
</nav>
