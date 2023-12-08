<script lang="ts">
let entries = [
  {
    icon: "📧",
    url: "https://gitlab.com/carracall/cv/-/jobs/artifacts/main/raw/CV.pdf?job=build",
    label: "Academic CV"
  },
  {
    icon: "📧",
    url: "https://www.linkedin.com/in/luke-naylor-a72392127/",
    label: "LinkedIn"
  },
  {
    icon: "📧",
    url: "https://gitlab.com/carracall",
    label: "Misc. Software"
  },
  {
    icon: "📧",
    url: "https://git.ecdf.ed.ac.uk/s1511002/",
    label: "Research"
  }
]

let entry_pairs:{icon:string;url:string;label:string}[][] = [];

for(let i = 0; i < entries.length; i += 2)
{
  entry_pairs.push(entries.slice(i, i + 2));
}
</script>

<div class="flex-container">
{#each entry_pairs as [entry1, entry2]}
  <div class="flex-entry first">
    <span class="icon">
      {entry1.icon}
    </span>
    <span>
      <a href={entry1.url}
        target="_blank"
        >
      {entry1.label}
      </a>
    </span>
  </div>
  {#if entry2}
  <div class="flex-entry second">
    <span>
      <a href={entry2.url}
        target="_blank"
        >
      {entry2.label}
      </a>
    </span>
    <span class="icon">
      {entry2.icon}
    </span>
  </div>
  {/if}
{/each}
</div>

<style lang="scss">
.flex-container {
  width: 100%;
  margin-top: 0.3em;

  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  .flex-entry {
    flex-grow: 5; // default
    min-width: max-content;
    &.first {
      text-align: left;
    }
    &.second {
      text-align: right;
    }
    .icon {
      padding-left: 0.3em;
      padding-right: 0.3em;
    }
  }
  a {
    font-weight: lighter;
  }
}
</style>
