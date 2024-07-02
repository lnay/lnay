<script lang="ts">
    import {courses, teaching_blocks } from "$data/Teaching.json"
</script>

{#each courses as course}
    <tr>
        <td
        class="border-primary-600 p-2 border-dotted border align-top overflow-y-clip border-l-0 text-sm w-40 text-right p-0 relative"
        >
            <ul
            class="inline-block my-0 w-max pl-0"
            >
            {#each course.tutoring.sort().reverse() as t}
                <li
                class="list-none italic"
                >{teaching_blocks[t.block].months} {t.Academic_year}</li>
            {/each}
            </ul>
        </td>
        <td
        class="border-primary-600 p-2 border-dotted border text-left align-top overflow-y-clip border-r-0 text-sm"
        >
            <details
            class="text-xs"
            >
                <summary
                class="text-sm"
                >{course.name}</summary>
                <p
                class="m-0 ml-5 text-sm text-right italic text-surface-600-300-token font-bold "
                >
                    <span
                    class="italic font-extralight"
                    >course level:</span>
                    {course.level}
                </p>
                <p class="ml-5">{course.description}</p>
            </details>
        </td>
    </tr>
{/each}

<style lang="scss">
    tr:last-child td {
        border-bottom-width: 0;
    }
    tr:first-child td {
        border-top-width: 0;
    }
</style>
