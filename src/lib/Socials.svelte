<script lang="ts">
import Icon from 'svelte-awesome/components/Icon.svelte';
import beer from 'svelte-awesome/icons/beer';
import gitlab from 'svelte-awesome/icons/gitlab';
import github from 'svelte-awesome/icons/github';
import linkedin from 'svelte-awesome/icons/linkedin';
import file from 'svelte-awesome/icons/file';
let entries = [
  {
    icon: file,
    url: "https://gitlab.com/carracall/cv/-/jobs/artifacts/software/raw/CV.pdf?job=build",
    label: "CV"
  },
  {
    icon: linkedin,
    url: "https://www.linkedin.com/in/luke-naylor-a72392127/",
    label: "Linked"
  },
  {
    icon: gitlab,
    url: "https://gitlab.com/carracall",
    label: "Maths Software"
  },
  {
    icon: gitlab,
    url: "https://git.ecdf.ed.ac.uk/s1511002/",
    label: "Research"
  },
  {
    icon: github,
    url: "https://github.com/lnay",
    label: "Misc. Software"
  }
]

let entry_pairs:{icon:any;url:string;label:string}[][] = [];

for(let i = 0; i < entries.length; i += 2)
{
  entry_pairs.push(entries.slice(i, i + 2));
}
</script>

<div class="w-full mt-1">
{#each entry_pairs as [entry1, entry2]}
  <div class="min-w-max float-left mx-1 h-6">
      <a href={entry1.url}
        target="_blank"
        class="font-light no-underline"
        >
      <div class="inline-block w-4 align-middle h-8">
      <Icon data="{entry1.icon}" scale={0.8}/>
      </div>
      {entry1.label}
      </a>
  </div>
  {#if entry2}
  <div class="min-w-max float-right mx-1 h-6">
      <a href={entry2.url}
        target="_blank"
        class="font-light no-underline"
        >
      {entry2.label}
      <div class="inline-block w-4 align-middle h-8">
      <Icon data="{entry2.icon}" scale={0.8}/>
      </div>
      </a>
  </div>
  {/if}
{/each}
</div>
