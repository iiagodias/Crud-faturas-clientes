<div class="container corpo">
  <div id="center">
    <div class="titulo">
      <span>PAGAMENTOS</span>
    </div>
<?php
date_default_timezone_set('America/Sao_Paulo');

	$query = mysqli_query($con, "SELECT * FROM pagamento");
	$count = mysqli_num_rows($query);

	if ($count <= 0) {
		echo '<div class="erro">Nenhum pagamento registrado!</div>';
	}else{
		while ($row = mysqli_fetch_assoc($query)) {
			$idplanoConsu = $row['idplanoConsu'];

		$queryPlanoConsu = mysqli_query($con, "SELECT * FROM planoConsumidor WHERE idplanoConsu = '$idplanoConsu'");
		$rowPlanoConsu = mysqli_fetch_assoc($queryPlanoConsu);
		$idplano = $rowPlanoConsu['idplanos'];
		$idconsu = $rowPlanoConsu['idconsu'];

		$queryPlano = mysqli_query($con, "SELECT * FROM planos WHERE idplanos = '$idplano'");
		$rowPlano = mysqli_fetch_assoc($queryPlano);

		$queryConsu = mysqli_query($con, "SELECT * FROM consumidor WHERE idconsu = '$idconsu'");
		$rowConsu = mysqli_fetch_assoc($queryConsu);


?>
<div class="caixaPagamento">
<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">account_box</i><span><?= $rowConsu['nome']  ?></span>
<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">assignment_late</i><span><?= $rowPlano['nomePlano']  ?></span>
<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">monetization_on</i><span>R$ <?= $rowPlano['valor']  ?></span>
<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">query_builder</i><span><?= date('d/m/Y', $row['dataPagamento']) ?></span>
<i class="material-icons" style="vertical-align: -5px; margin-right: 5px; float: right; font-size: 30px;">done</i>
</div>
<?php
		}
	}

?>
</div>

</div>