<script lang="ts">
export let blogpost;
export let path;

import { Marked } from "marked";
import { markedHighlight } from "marked-highlight";
import hljs from "highlight.js";

const marked = new Marked(
  markedHighlight({
    langPrefix: 'hljs language-',
    highlight(code, lang, _info) {
      const language = hljs.getLanguage(lang) ? lang : 'plaintext';
      return hljs.highlight(code, { language }).value;
    }
  })
);
</script>

<svelte:head>
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
<script>
 window.MathJax = {
  tex: {
    inlineMath: [['$', '$'], ['\\(', '\\)']]
  }
};
</script>
</svelte:head>

{@html marked.parse(blogpost)}

<style lang="scss">
:global(.hljs-comment) {
    @apply text-surface-300;
}
:global(.hljs-keyword) {
    @apply text-success-500;
}
:global(.hljs-section) {
    @apply text-error-300;
}
:global(.hljs-string) {
    @apply text-warning-400;
}
:global(.hljs-number) {
    @apply text-tertiary-300;
}
:global(.hljs-operator) {
    @apply text-tertiary-500;
}
</style>
