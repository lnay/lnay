<script lang="ts">
import {posters} from "$data/Talks.json";
</script>

<tbody>
<tr>
    {#each ['Poster', 'Event'] as heading}
    <th class="bg-surface-200-700-token border-b-2 border-solid border-primary-600 text-center pt-4 pb-4"
    >{heading}</th>
    {/each}
</tr>
{#each posters.sort( (a, b) => (a.event.date.from > b.event.date.from)?-1:1)
as poster}
    <tr>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-l-0"
        >
            <details class="text-xs">
                <summary class="text-base">{poster.title}
                {#if poster.artifacts}
                <a href={poster.artifacts} target="_blank">(poster)</a>
                {/if}
                </summary>
                <p class="ml-5 italic">
                    <span class="font-bold">Abstract: </span>
                    {poster.abstract}
                </p>
            </details>
        </td>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-r-0 text-sm w-32"
        >
            {#each poster.event as event}
            <a href={event.url} target="_blank" class="event"
              >{@html event.name}</a>,
            <br>
            <span class="italic font-normal">{event.location}</span>
            <br>
            <span class="font-extralight">{event.date.from}</span>
            to
            <span class="font-extralight">{event.date.to}</span>
            {/each}
        </td>
    </tr>
{/each}
</tbody>

<style lang="scss">
    tr:last-child td {
        border-bottom-width: 0;
    }
</style>
