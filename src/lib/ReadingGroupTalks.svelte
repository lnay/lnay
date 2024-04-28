<script lang="ts">
    import {reading_group_talks} from "$data/Talks.json";
</script>

<tbody>
<tr>
    <th class="bg-surface-200-700-token border-b-2 border-solid border-primary-600 text-center pt-4 pb-4"
    >Reading Group Talk</th>
    <th class="bg-surface-200-700-token border-b-2 border-solid border-primary-600 text-center pt-4 pb-4 min-w-32"
    >Reading Group</th>
</tr>
{#each reading_group_talks.sort( (a, b) => (a.date > b.date)?-1:1)
as rg_talk}
    <tr>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-l-0"
        >
        {rg_talk.topic}
        </td>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-r-0 w-min text-sm"
        >
            <span class="italic font-normal">{@html rg_talk.group}</span>,
            <br>
            <span class="font-extralight">{rg_talk.date}</span>
        </td>
    </tr>
{/each}
</tbody>

<style lang="scss">
    tr:last-child td {
        border-bottom-width: 0;
    }
</style>
