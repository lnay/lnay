<script lang="ts">
    import {courses, teaching_blocks } from "$data/Teaching.json"
</script>

<table>
{#each courses as course}
    <tr>
        <td>
            <details>
                <summary>{course.name}</summary>
                <p style="text-align:right;font-style:italic;margin:0;font-size:0.9em;">course level: {course.level}</p>
                <p>{course.description}</p>
            </details>
        </td>
        <td>
            <ul>
            {#each course.tutoring.sort().reverse() as t}
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
            padding-bottom: 0;
            position: relative;
            &:after{
                position: absolute;
                content: "";
                height: 1.6em;
                width: 100%;
                bottom: 0;
                left: 0;
                background: linear-gradient(transparent, #212529);
            }
            &:hover{
                &:after {
                    background: transparent;
                }
                & ul {
                    height: auto; 
                }
            }
        }
        ul {
            height: 1em;
            margin-bottom: 0;
            line-height: 0.8em;
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
        }
    }
    tr {
        transition: height 0.5s;
    }
    * {
        font-style: normal;
    }
</style>