<script lang="ts">
import { TableOfContents, tocCrawler } from '@skeletonlabs/skeleton';
</script>
<svelte:head>
	<link href='https://fonts.googleapis.com/css?family=Alegreya' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Fira+Mono' rel='stylesheet'>
</svelte:head>

<div class="flex items-start relative xl:mx-10 place-content-evenly my-6">
<main
	use:tocCrawler={{ mode: 'generate', scrollTarget: "#page" }}
	id="page" class="w-full flex-auto max-w-4xl bottom-0 leading-relaxed text-xl"
	style="font-family: Alegreya"
>
<slot />
</main>
<aside class="sticky top-10 hidden 2xl:block space-y-4 max-w-96 bottom-0 overflow-y-scroll">
<TableOfContents />
</aside>
</div>

<style lang="scss">
	:global(main#page pre) {
		&::before {
			display: block;
			color:rgba(255, 255, 255, 0.25);
			margin-bottom: 0.7rem;
			font-weight: 600;
		}
		&:has(> code.language-latex)::before {
			content: "LaTeX";
		}
		&:has(> code.language-bash)::before {
			content: "Shell";
		}
		&:has(> code.language-make)::before,
		&:has(> code.language-Makefile)::before {
			content: "Makefile";
		}
		&:has(> code.language-python)::before {
			content: "Python";
		}
		&:has(> code.language-perl)::before {
			content: "Perl";
		}
	}
</style>
