<script lang="ts">
    import {reading_group_talks} from "$data/Talks.json";
</script>

<tbody>
<tr>
    <th>Reading Group Talk</th>
    <th>Reading Group</th>
</tr>
{#each reading_group_talks.sort( (a, b) => (a.date > b.date)?-1:1)
as rg_talk}
    <tr>
        <td>
        {rg_talk.topic}
        </td>
        <td>
            <span class="event">{@html rg_talk.group}</span>,
            <br>
            <span class="date">{rg_talk.date}</span>
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
