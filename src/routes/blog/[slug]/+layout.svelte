<script lang="ts">
import { TableOfContents, tocCrawler } from '@skeletonlabs/skeleton';
</script>

<div class="flex items-start gap-10 relative xl:m-10 xl:place-content-around">
<div id="page" class="w-full" style="scrollbar-gutter: auto;">
<main
	id="page-content"
	class="flex-auto xl:max-w-6xl"
	use:tocCrawler={{ mode: 'generate', scrollTarget: "#page" }}
>
<slot />
</main>
</div>
<aside class="sticky top-10 hidden xl:block space-y-4 w-max">
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
