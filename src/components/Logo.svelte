<style lang="scss">
	* {
		font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
		font-style: italic;
	}
	div.logo:not(.flat) {
		& > span.name {
			display: inline-block;
			& > span {
				display: block;
				text-align: right;
			}
		}
		& > span.coords {
			display: inline-block;
			padding-left: 3px;
			padding-right: 3px;
			border-left: solid black 1.5px;
			border-right: solid black 1.5px;
			border-radius: 4px / 20px;
			transform: skew(-5deg);
			& > span {
				display: block;
				font-size: 0.8rem;
				margin: 0;
				padding: 0;
				margin-top: -0.1rem;
				&:not(:first-child){
					margin-top: -0.4rem;
				}
			}
		}
	}

	div.logo.flat{
		& > span.coords > span:not(:last-child)::after {
			content: ",";
		}
		& > span.coords {
			&::after{
				content:")";
			}
			&::before{
				content: "(";
			}
		}
	}

</style>

<script>
	export let extraClass = "square";
</script>

<div class="logo {extraClass}">
	<span class="name">
		<span class="lukidean">Lukidean</span>
		<span class="geometry">Geometry</span>
	</span>
	<span class="coords"><!--
	--><span>x</span><span>y</span><span>z</span><!--
--></span>
</div>
