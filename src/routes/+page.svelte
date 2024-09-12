<script lang="ts">
  import Picture from "$lib/Picture.svelte";
  import Socials from "$lib/Socials.svelte";
  import profile_pic from "$lib/assets/infront_poster.jpg?w=749;250;150&format=webp;avif;jpg&as=metadata";
  import Home from "./Home.md";

  import { crum } from "$lib/stores.js";
  crum.set("");
</script>
<svelte:head>
  <meta name="description" content="Home page of Luke Naylor's personal site" />
</svelte:head>

<div class="flex relative place-content-evenly my-6 xl:m-10">
<div class="flex-auto max-w-2xl px-0 indent-2">
<h1>About Me</h1>
<div class="pic-frame">
  <Picture meta={profile_pic}
    alt="Luke Naylor presenting poster at Imperial College London"
    />
  <Socials/>
</div>

<Home />

</div>
</div>

<style lang="scss">
.pic-frame {
  width: 34%;
  float: right;
  margin-bottom: 1em;
  margin-left: 1.5em;
  font-size: 70%; //0.7em;
  border: 2px solid rgba(var(--foreground-accent-color), 0.2);
  background-color: rgba(var(--foreground-accent-color), 0.03);
  padding: 2px;
  overflow: hidden;
  @media (max-width: 350px) {
    display: none;
  }
}
</style>
