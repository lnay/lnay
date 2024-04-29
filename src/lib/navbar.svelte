<script lang="ts">
import { crossfade } from 'svelte/transition';
import { quintOut } from 'svelte/easing';

let [send, receive] = crossfade({
    duration: (d) => Math.sqrt(d * 200),

    fallback(node, _params) {
        const style = getComputedStyle(node);
        const transform = style.transform === 'none' ? '' : style.transform;

        return {
            duration: 600,
            easing: quintOut,
            css: (t) => `
                transform: ${transform} scale(${t});
                opacity: ${t}
            `
        };
    }
});

import { page } from '$app/stores';
let pagepath: string;
$: pagepath = $page.url.pathname;


let nav_items = [
    {
        route: "/",
        name: "Home"
    },
    {
        route: "/experience",
        name: "Experience"
    },
    {
        route: "/pseudowalls",
        name: "Pseudowalls"
    }/*,
    {
        route: "/blog",
        name: "Blog"
    }
    /*{
        route: "/contact",
        name: "Contact"
    }*/
];
	
</script>

<nav>
    {#each nav_items as { route, name}}
        <a
            class="text-surface-500-400-token hover:text-surface-900-50-token inline-block px-1 font-bold "
            class:active={pagepath===route}
            aria-current="page"
            href="{route}">
            {name}
        {#if pagepath==route}
        <div
            class="bg-primary-500 h-1 w-full"
            in:receive={{ key: 1 , duration: 350}}
            out:send={{ key: 1 , duration: 350}}
        />
        {/if}
        </a>
    {/each}
</nav>

<style lang="scss">
nav a + a {
    margin-left: 1rem;
}
nav .active {
    @apply text-surface-900-50-token;
}
</style>
