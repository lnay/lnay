<script lang="ts">
    import {talks} from "$data/Talks.json";
</script>

<tbody>
<tr>
    {#each ['Talk', 'Event'] as heading}
    <th class="bg-surface-200-700-token border-b-2 border-solid border-primary-600 text-center pt-4 pb-4"
    >{heading}</th>
    {/each}
</tr>
{#each talks.sort( (a, b) => (a.event[0].date > b.event[0].date)?-1:1)
as talk}
    <tr>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-l-0"
        >
            <details class="text-xs">
                <summary class="text-base">{talk.title}
                {#if talk.artifacts}
                <a href={talk.artifacts} target="_blank">(slides)</a>
                {/if}
                </summary>
                <p class="ml-5 italic">
                    <span class="font-bold">Abstract: </span>
                    {talk.abstract}
                </p>
            </details>
        </td>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-r-0 w-min text-sm"
        >
            {#each talk.event as event}
            <div>
            <a href={event.url} target="_blank" class="font-bold"
              >{@html event.name}</a>,
            <br>
            <span class="italic font-normal">{event.location}</span>
            <br>
            <span class="font-extralight">{event.date}</span>
            </div>
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
