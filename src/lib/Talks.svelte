<script lang="ts">
    import {talks, reading_group_talks, posters} from "$data/Talks.json";
</script>

<h1>Presentations</h1>

<table border="1" frame="void" rules="all">
<tbody>
<tr>
    <th>Talk</th>
    <th>Event</th>
</tr>
{#each talks.sort( (a, b) => {
    return (a.event.date > b.event.date)?-1:1;
}) as talk}
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
            <a href={talk.event.url} target="_blank" class="event">
                {talk.event.name}
            </a>,
            <br>
            <span class="location">{talk.event.location}</span>
            <br>
            <span class="date">{talk.event.date}</span>
        </td>
    </tr>
{/each}
</tbody>
<tbody>
<tr>
    <th>Poster</th>
    <th>Event</th>
</tr>
{#each posters as poster}
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
            <a href={poster.event.url} target="_blank" class="event">
                {poster.event.name}
            </a>,
            <br>
            <span class="location">{poster.event.location}</span>
            <br>
            <span class="date">{poster.event.date.from}</span>
            to
            <span class="date">{poster.event.date.to}</span>
        </td>
    </tr>
{/each}
</tbody>
<tbody>
<tr>
    <th>Reading Group Talk</th>
    <th>Reading Group</th>
</tr>
{#each reading_group_talks.sort( (a, b) => {
    return (a.date > b.date)?-1:1;
}) as rg_talk}
    <tr>
        <td>
        {rg_talk.topic}
        </td>
        <td>
            <span class="event">{rg_talk.group}</span>,
            <br>
            <span class="date">{rg_talk.date}</span>
        </td>
    </tr>
{/each}
</tbody>
</table>

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
            width: 15em;
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