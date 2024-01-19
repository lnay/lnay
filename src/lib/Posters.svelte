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
    th {
        border-bottom: 2px solid rgba(var(--foreground-accent-color),0.3);
        padding-bottom: 1em;
        padding-top: 1em;
        text-align: center;
        background-color: rgba(var(--foreground-accent-color),0.1);
    }
    td {
        border: 1px solid rgba(var(--foreground-accent-color),0.3);
        padding: 0.3em;
        text-align: left;
        vertical-align: top;
        overflow-y: clip;
        &:nth-child(2) {
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
</style>
