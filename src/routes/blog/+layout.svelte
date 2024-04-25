<script lang="ts">
import { TableOfContents, tocCrawler } from '@skeletonlabs/skeleton';
</script>

<div class="layout-docs page-padding flex items-start gap-10 doc-shell relative">
<div id="page" class="layout-docs-content page-container-aside" style="scrollbar-gutter: auto;">
<main
	id="page-content"
	class="flex-auto"
	use:tocCrawler={{ mode: 'generate', scrollTarget: "#page" }}
>
<slot />
</main>
</div>
<aside class="layout-cols-aside sticky top-10 hidden xl:block space-y-4 w-72">
<TableOfContents />
</div>
