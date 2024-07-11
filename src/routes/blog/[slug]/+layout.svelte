<script lang="ts">
import { TableOfContents, tocCrawler } from '@skeletonlabs/skeleton';
</script>

<div class="flex items-start relative xl:mx-10 place-content-evenly my-6">
<main
	use:tocCrawler={{ mode: 'generate', scrollTarget: "#page" }}
	id="page" class="w-full flex-auto max-w-4xl bottom-0 leading-relaxed text-xl"
>
<slot />
</main>
<aside class="sticky top-10 hidden 2xl:block space-y-4 max-w-96 bottom-0 overflow-y-scroll">
<TableOfContents />
</aside>
</div>

<style lang="scss">

</style>
