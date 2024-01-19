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
        font-style: normal;
        width: 100%;
    }
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
</style>
