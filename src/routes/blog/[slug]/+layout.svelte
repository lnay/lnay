<script lang="ts">
import { TableOfContents, tocCrawler } from '@skeletonlabs/skeleton';
</script>

<div class="flex items-start relative xl:mx-10 place-content-evenly">
<div id="page" class="w-full flex-auto max-w-4xl bottom-0">
<main
	id="page-content"
	use:tocCrawler={{ mode: 'generate', scrollTarget: "#page" }}
>
<slot />
</main>
</div>
<aside class="sticky top-10 hidden 2xl:block space-y-4 max-w-96 bottom-0 overflow-y-scroll">
<TableOfContents />
</div>

<style lang="scss">
main pre {
    @apply pre;
}
main code {
    @apply code;
}
</style>
