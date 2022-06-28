<script>
	let r=40;
	let rmax=50;
</script>

<p>
<label>
	r value:
	<input type=range bind:value={r} min=0 max={rmax}>
</label>
<br/>
<label>
	svg size:
	<input type=range bind:value={rmax} min=0 max=600>
</label>
</p>


<svg height={2*rmax} width={2*rmax}>
  <circle cx={rmax} cy={rmax} r={r} stroke="black" stroke-width="3" fill="red" />
</svg>
