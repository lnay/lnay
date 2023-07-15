<script lang="ts">
    import {courses, teaching_blocks } from "$data/Teaching.json"
</script>

<table>
{#each courses as course}
    <tr>
        <td>
            <details>
                <summary>{course.name}</summary>
                <em>{course.level}</em>
                <p>{course.description}</p>
            </details>
        </td>
        <td>
            <ul>
            {#each course.tutoring as t}
                <li>{teaching_blocks[t.block].months} {t.Academic_year}</li>
            {/each}
            </ul>
        </td>
    </tr>
{/each}
</table>

<style lang="scss">
    table {
        border-collapse: collapse;
        text-decoration: none;
        font-style: normal;
        width: 100%;
    }
    td {
        border: 1px solid black;
        padding: 0.5em;
        text-align: left;
        vertical-align: top;
        overflow-y: clip;
        &:nth-child(2) {
            width: 13em;
            text-align: right;
            color: red;
        }
        & > ul {
            height: 1em;
            margin-bottom: 0;
            line-height: 0.8;
        }
    }
    * {
        font-style: normal;
    }
</style>