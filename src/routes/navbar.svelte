<script>
	export let pagepath;
</script>
<nav class="nav nav-masthead justify-content-center float-md-end">
	<a class="nav-link {pagepath==='/'?'active':''}" aria-current="page" href="/"> Home </a>
	<a class="nav-link {pagepath==='/blog'?'active':''}" aria-current="page" href="/blog"> Blog </a>
	<a class="nav-link {pagepath==='/contact'?'active':''}" aria-current="page" href="/contact"> Contact </a>
</nav>
