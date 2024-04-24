<script lang="ts">
import { TableOfContents, tocCrawler } from '@skeletonlabs/skeleton';
</script>
<svelte:head>
  <meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

<h1> This is a Blog</h1>
<div id="toc">
<TableOfContents active="activeclass"/>
</div>
<div id="content" use:tocCrawler={{ mode: 'generate', scrollTarget: "body" }}>
	<h2>Heading 2</h2>
	<p>
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	</p>
	<h3>Heading 3</h3>
	<p>
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	</p>
	<h2>Heading 2.2</h2>
	<p>
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	</p>
	<h3>Heading 3.2</h3>
	<p>
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu aoeu 
	</p>
</div>

<style lang="scss">
#toc {
	width: 30em;
	position: fixed;
	left: 0;
}
:global(.activeclass) {
	color: red;
}
</style>
