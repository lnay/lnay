<script>
	import Circ from "./Svg_ball.svelte"
// elliptic curve given by y^2 = x((x-1)^2+a)
	let width = 1900;
	let height = 900;
	let a = 0.02;
	let b = 1;
	let t = 0;
	let scale = 800;
	let left_offset=20;
</script>

<input type="range" bind:value={t} min="-10" max="10" step="0.01">
t = {t}

<svg {height} {width} style="border:solid black 2px">
	<circle cx={left_offset + scale*(t*t)} cy={height/2 + scale*(t*Math.sqrt((t*t-1)**2+a))} r="40" stroke="black" stroke-width="3" fill="red" />
	<Circ/>
</svg>
