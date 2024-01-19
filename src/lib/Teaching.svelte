<script lang="ts">
    import {courses, teaching_blocks } from "$data/Teaching.json"
</script>

{#each courses as course}
    <tr>
        <td>
            <ul>
            {#each course.tutoring.sort().reverse() as t}
                <li>{teaching_blocks[t.block].months} {t.Academic_year}</li>
            {/each}
            </ul>
        </td>
        <td>
            <details>
                <summary>{course.name}</summary>
                <p class="courselevel">
                    <span class="label">course level:</span> {course.level}
                </p>
                <p>{course.description}</p>
            </details>
        </td>
    </tr>
{/each}

<style lang="scss">
    td {
        border: 1px solid rgba(var(--foreground-accent-color),0.3);
        padding: 0.3em;
        text-align: left;
        vertical-align: top;
        overflow-y: clip;
        &:nth-child(1) {
            font-size: 0.8em;
            width: 10em;
            text-align: right;
            padding-bottom: 0;
            position: relative;
            ul {
                line-height: 1em;
                height: auto;
                padding-bottom: 0.3em;
            }
        }
        ul {
            display: inline-block;
            margin-bottom: 0;
            width: max-content;
            padding-left: 0;
            li {
                list-style-type: none;
                font-style: italic;
            }
        }
        details {
            font-size: 0.8em;
            summary {
                font-size: 1.25em;
            }
            :not(summary) {
                margin-left: 2em;
            }
            p.courselevel {
                text-align: right;
                font-style: italic;
                margin: 0;
                font-size: 0.9em;
                color: rgba(var(--foreground-color),0.7);
                font-weight: bold;
                span.label {
                    font-style: italic;
                    font-weight: lighter;
                    color: rgba(var(--foreground-color),0.5);
                }
            }
        }
    }
    tr {
        transition: height 0.5s;
    }
</style>
