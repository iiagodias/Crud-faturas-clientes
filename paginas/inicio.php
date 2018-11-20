<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>DADOS DO SISTEMA</span>
		</div><br>
		<?php
		$queryConsu = mysqli_query($con, "SELECT * FROM consumidor");
		$countConsu = mysqli_num_rows($queryConsu);

		$queryVende = mysqli_query($con, "SELECT * FROM vendedor");
		$countVende = mysqli_num_rows($queryVende);


		date_default_timezone_set('America/Sao_Paulo');
		$time = time();
		$queryFatura = mysqli_query($con, "SELECT * FROM planoconsumidor WHERE data < '$time'");
		$countFatura = mysqli_num_rows($queryFatura);

		$queryPagamento = mysqli_query($con, "SELECT * FROM pagamento");
		$countPaga = mysqli_num_rows($queryPagamento);


		?>
		<div class="numeroConsu">
			<b><?= $countConsu ?></b><p>
			<span>Consumidores</span>
		</div>
		<div class="numeroConsu corVende">
			<b><?= $countVende ?></b><p>
			<span>Vendedores</span>
		</div>

		<div class="numeroConsu corFatura">
			<b><?= $countFatura ?></b><p>
			<span>Faturas</span>
		</div>

		<div class="numeroConsu corPagamento">
			<b><?= $countPaga ?></b><p>
			<span>Pagamentos</span>
		</div>
	</div>

</div>