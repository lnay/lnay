<script lang="ts">
    import {talks} from "$data/Talks.json";
</script>

<tbody>
<tr>
    <th>Talk</th>
    <th>Event</th>
</tr>
{#each talks.sort( (a, b) => (a.event[0].date > b.event[0].date)?-1:1)
as talk}
    <tr>
        <td>
            <details>
                <summary>{talk.title}
                {#if talk.artifacts}
                <a href={talk.artifacts} target="_blank">(slides)</a>
                {/if}
                </summary>
                <p class="abstract">
                    <span class="label">Abstract: </span>
                    {talk.abstract}
                </p>
            </details>
        </td>
        <td>
            {#each talk.event as event}
            <div>
            <a href={event.url} target="_blank" class="event"
              >{@html event.name}</a>,
            <br>
            <span class="location">{event.location}</span>
            <br>
            <span class="date">{event.date}</span>
            </div>
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
        border-style: inset;
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
            font-size: 0.8em;
            width: 12em;
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
