<script lang="ts">
    import {talks, reading_group_talks, posters} from "$data/Talks.json";
</script>

<tbody>
<tr>
    <th>Poster</th>
    <th>Event</th>
</tr>
{#each posters.sort( (a, b) => (a.event.date.from > b.event.date.from)?-1:1)
as poster}
    <tr>
        <td>
            <details>
                <summary>{poster.title}
                {#if poster.artifacts}
                <a href={poster.artifacts} target="_blank">(poster)</a>
                {/if}
                </summary>
                <p class="abstract">
                    <span class="label">Abstract: </span>
                    {poster.abstract}
                </p>
            </details>
        </td>
        <td>
            {#each poster.event as event}
            <a href={event.url} target="_blank" class="event"
              >{@html event.name}</a>,
            <br>
            <span class="location">{event.location}</span>
            <br>
            <span class="date">{event.date.from}</span>
            to
            <span class="date">{event.date.to}</span>
            {/each}
        </td>
    </tr>
{/each}
</tbody>

<style lang="scss">
    table {
        border-collapse: collapse;
        text-decoration: none;
        border-style:hidden;
        font-style: normal;
        width: 100%;
    }
    th {
        border-bottom: 2px solid;
        border-style: inset;
        @apply border-primary-900-50-token;
        padding-bottom: 1em;
        padding-top: 1em;
        text-align: center;
        @apply bg-surface-700-200-token;
    }
    td {
        border: 1px solid;
        border: 1px dotted;
        @apply border-primary-700-200-token;
        padding: 0.3em;
        text-align: left;
        vertical-align: top;
        overflow-y: clip;
        &:first-child {
            border-left-width: 0;
        }
        &:nth-child(2) {
            border-right-width: 0;
            width: 14em;
            font-size: 0.8em;
            .event {
                font-weight: bold;
            }
            span.location {
                font-weight: normal;
                font-style: italic;
            }
            span.date {
                font-weight: lighter;
            }
        }
        details {
            font-size: 0.8em;
            summary {
                font-size: 1.25em;
            }
            p {
                span.label {
                    font-weight: bold; 
                }
                margin-left: 2em;
                font-style: italic;
            }
        }
    }
    tr {
        transition: height 0.5s;
    }
    tr:last-child td {
        border-bottom-width: 0;
    }
</style>
