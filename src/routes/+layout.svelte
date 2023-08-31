<script>
	import '../app.postcss';
</script>

<body>
	<!-- <div> -->
	<slot />
	<!-- </div> -->
</body>

<style>
	body {
		/* margin: 0; */
		/* padding: 0; */
		/* color: #023047; */
	}

	div {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		height: 100vh;
		background-color: #ffb703;
	}
</style>
