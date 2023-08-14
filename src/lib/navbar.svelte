<script lang="ts">
	import { page } from '$app/stores';
	let pagepath: string;
	$: pagepath = $page.url.pathname;
	

	let nav_items = [
		{
			route: "./",
			name: "Home"
		},
		{
			route: "./pseudowalls",
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
	{#each nav_items as {route, name}}
		<a class="nav-link {"."+pagepath===route?'active':''}"
		   aria-current="page"
		   href="{route}">
			{name}
		</a>
	{/each}
</nav>

<style lang="scss">
	.nav-masthead .nav-link {
		padding: .25rem 0;
		font-weight: 700;
		color: rgba(255, 255, 255, .5);
		background-color: transparent;
		border-bottom: .25rem solid transparent;
	}

	.nav-masthead .nav-link:hover,
	.nav-masthead .nav-link:focus {
		border-bottom-color: rgba(255, 255, 255, .25);
	}

	.nav-masthead .nav-link + .nav-link {
		margin-left: 1rem;
	}

	.nav-masthead .active {
		color: #fff;
		border-bottom-color: #fff;
	}
</style>
