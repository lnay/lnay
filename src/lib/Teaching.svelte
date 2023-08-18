<script lang="ts">
    import { marked } from 'marked';
    import {courses, teaching_blocks } from "$data/Teaching.json"
</script>

{@html marked(`
# Teaching

I am involved with teaching in the School of Mathematics at the University of Edinburgh,
where I have received an
[Associate Fellowship of the Higher Education Academy](https://www.ed.ac.uk/institute-academic-development/learning-teaching/cpd/teaching-award).
`)}

<table border="1" frame="void" rules="all">
{#each courses as course}
    <tr>
        <td>
            <details>
                <summary>{course.name}</summary>
                <p class="courselevel">
                    <span class="label">course level:</span> {course.level}
                </p>
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
        border: 1px solid rgba(var(--foreground-accent-color),0.3);
        padding: 0.3em;
        text-align: left;
        vertical-align: top;
        overflow-y: clip;
        &:nth-child(2) {
            font-size: 0.8em;
            width: 12.5em;
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
                background: linear-gradient(transparent, var(--background-color-opaque) );
            }
            &:hover{
                &:after {
                    background: transparent;
                }
                ul {
                    line-height: 1em;
                    height: auto;
                    padding-bottom: 0.3em;
                }
            }
            &:not(:hover) {
                ul {
                    line-height: 0.8em;
                    height: 1em;
                }
            }
        }
        ul {
            margin-bottom: 0;
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