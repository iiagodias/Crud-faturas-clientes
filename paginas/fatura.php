<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>FATURAS EM ABERTAS</span>
		</div>
<?php
    $time = time();
	$query = mysqli_query($con, "SELECT * FROM planoconsumidor WHERE data < '$time' ");
	$count = mysqli_num_rows($query);


	if ($count <= 0) {
		echo '<div class="erro">Nenhuma fatura em aberta!</div>';
	}else{
		while ($row = mysqli_fetch_assoc($query)) {	

			if ($row['status'] == 0) {
				$queryStatus = mysqli_query($con, "UPDATE planoconsumidor SET status = '1' WHERE idplanoConsu = '{$row['idplanoConsu']}'");
			}
				$idconsu = $row['idconsu'];
				$idplano = $row['idplanos'];

				$queryConsu = mysqli_query($con, "SELECT * FROM consumidor WHERE idconsu ='$idconsu' ");
				$queryPlano = mysqli_query($con, "SELECT * FROM planos WHERE idplanos = '$idplano'");
				$rowConsu = mysqli_fetch_assoc($queryConsu);
				$rowPlano = mysqli_fetch_assoc($queryPlano);
				
?>
		<div class="caixaFatura">
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">account_box</i><span><?= $rowConsu['nome'] ?> </span>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">assignment_late</i><span><?= $rowPlano['nomePlano'] ?></span>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">query_builder</i><span><?= date('d/m/Y', $row['data']) ?></span>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">error</i><span>Plano <?php if($row['status'] == 0){echo "Ativo";}else{ echo "Inativo";}?></span>
			<div class="cadastrar"><a href="pagar/<?= $row['idplanoConsu'] ?>"> Fechar Fatura</a></div>
		</div>

	<?php
		}
	}

	?>
	</div>
</div>