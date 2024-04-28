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
