<script lang="ts">
	import type { ImageMetadata } from '$lib/types';

	export let meta: ImageMetadata[];
	export let width = '100%';
	export let style: string = '';
	export let alt = '';
	export let loading: 'lazy' | 'eager' | null | undefined = 'lazy';
	let fallback = meta[0];
</script>

<div {style}>
	<picture>
		{#each meta as source_meta}
			<source
				type="image/{source_meta.format}"
				srcset={`${source_meta.src} ${source_meta.width}w`}
			/>
		{/each}
		<img src={fallback.src} {alt} {loading} style={`width: ${width};`} />
	</picture>
</div>

