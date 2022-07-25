<script>
	import Circ from "./Svg_ball.svelte"
// elliptic curve given by y^2 = x((x-1)^2+a)
	let width = 1900;
	let height = 900;
	let a = 0.02;
	let b = 1;
	let time_var = 0;
	$: t = 1.2 * Math.sin(time_var);
	let scale = 800;
	let left_offset=80;

	let xpos = (t) => left_offset + scale*(t*t);
	let ypos = (t) => height/2 + scale*(t*Math.sqrt((t*t-1)**2+a));

	window.setInterval(() => {
		time_var+=0.001;
	}, 1);
</script>

<input type="range" bind:value={t} min="-10" max="10" step="0.01">
t = {t}

<svg {height} {width} style="border:solid black 2px">
	<circle cx={xpos(t)}
	        cy={ypos(t)}
	        r="40" stroke="black" stroke-width="3" fill="red" />
	<Circ/>
	{#each Array(250).fill().map((d, i) => i/100 + -1.2) as t0}
		<circle cx={xpos(t0)}
		        cy={ypos(t0)}
		        r="2" stroke="black" stroke-width="1" fill="purple" />
	{/each}
</svg>
