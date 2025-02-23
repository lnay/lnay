<script lang="ts">
	import Picture from '$lib/Picture.svelte';

	import { crum } from '$lib/stores.js';
	crum.set('');
</script>

<svelte:head>
	<meta name="description" content="Blog section of Luke Naylor's personal site" />
</svelte:head>

<div class="flex relative place-content-evenly my-6 xl:m-10">
	<div class="flex-auto max-w-2xl px-0">
		<h1>Posts</h1>

		<div
			class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-8"
			style="grid-template-rows: 10em 10em 10em"
		>
			<a
				href="/blog/latexmk"
				class="card card-hover p-4 pb-0 text-center overflow-clip align-baseline h4"
			>
				Using LaTeXmk (intentionally)
				<img src="/latex.png" alt="" class="h-full mx-auto" />
			</a>
			<a
				href="/blog/nb-preamble"
				class="card card-hover p-4 text-center md:row-span-2 overflow-clip align-baseline h3"
			>
				Jupyter Notebook Appendix (LaTeX)
				<img
					src="/jupytex.svg"
					alt=""
					class="h-full mt-4 mx-auto"
					style="object-fit: cover;"
				/>
			</a>
			<a
				href="/blog/sagetex"
				class="card card-hover p-4 text-center md:row-span-2 overflow-clip align-baseline h3"
			>
				Using SageTeX sanely
				<img
					src="/sage.svg"
					alt=""
					class="h-full mt-4 mx-auto"
					style="object-fit: cover;"
				/>
			</a>
			<a
				href="/blog/prototype-paradigm"
				class="card card-hover p-4 text-center md:row-span-2 overflow-clip align-baseline h4"
			>
				Case for Prototype Paradigm
				<img src="" alt="" class="h-full mt-4 mx-auto" />
			</a>
			<a
				href="/blog/preamble-compilation"
				class="card card-hover p-4 text-center overflow-clip align-baseline h4"
			>
				Preamble precompilation
				<img src="/latex-name.png" alt="" class="h-full mt-4 mx-auto" />
			</a>
		</div>
	</div>
</div>
