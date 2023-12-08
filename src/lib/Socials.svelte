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
    url: "https://gitlab.com/carracall/cv/-/jobs/artifacts/main/raw/CV.pdf?job=build",
    label: "Academic CV"
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

<div class="socials-container">
{#each entry_pairs as [entry1, entry2]}
  <div class="social-link">
      <a href={entry1.url}
        target="_blank"
        >
      <div class="icon">
      <Icon data="{entry1.icon}" scale={0.8}/>
      </div>
      {entry1.label}
      </a>
  </div>
  {#if entry2}
  <div class="social-link">
      <a href={entry2.url}
        target="_blank"
        >
      {entry2.label}
      <div class="icon">
      <Icon data="{entry2.icon}" scale={0.8}/>
      </div>
      </a>
  </div>
  {/if}
{/each}
</div>

<style lang="scss">
.socials-container {
  width: 100%;
  $margin: 0.3em;
  margin-top: $margin;

  .social-link {
    min-width: max-content;
    &:nth-child(even) {
      float: right;
      margin-right: $margin;
    }
    &:nth-child(odd) {
      float: left;
      margin-right: 2 * $margin;
      margin-left: $margin;
    }
    .icon {
      display: inline-block;
      width: 1.2em;
      height: 2em;
      vertical-align: middle;
    }
  }
  a {
    font-weight: lighter;
    font-style: normal;
  }
}
</style>
