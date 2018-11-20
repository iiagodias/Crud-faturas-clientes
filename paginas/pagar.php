<div class="container corpo">
  <div id="center">
    <div class="titulo">
      <span>FECHAR FATURA</span>
    </div>
	<?php
	date_default_timezone_set('America/Sao_Paulo');


	$idplanoConsu = addslashes($explode['1']);
	$query = mysqli_query($con, "SELECT * FROM planoconsumidor WHERE idplanoConsu = '$idplanoConsu' AND status = '1'");
	$count = mysqli_num_rows($query);

	if ($count <= 0) {
		echo '<div class="erro">Nenhuma fatura encontrada!</div>';
	}else{
		$row = mysqli_fetch_assoc($query);
		$idplanos = $row['idplanos'];
		$idconsu = $row['idconsu'];

		$queryPlano = mysqli_query($con, "SELECT * FROM planos WHERE idplanos = '$idplanos'");
		$rowPlano = mysqli_fetch_assoc($queryPlano);

		$queryConsu = mysqli_query($con, "SELECT * FROM consumidor WHERE idconsu = '$idconsu'");
		$rowConsu = mysqli_fetch_assoc($queryConsu);

		if ($row['status'] ==  0) {
			$status = "Ativo";
		}else{
			$status = "Inativo";
		}

		if (isset($_POST['fechar'])) {
			$time = time();
			$timeNew = time() + 60*60*24*30;
			$queryInserir = mysqli_query($con, "INSERT INTO pagamento(dataPagamento, idplanoConsu) VALUES ('$time', '$idplanoConsu')");
			$queryUp = mysqli_query($con, "UPDATE planoconsumidor SET data = '$timeNew', status ='0' WHERE idplanoConsu = '$idplanoConsu' ");
			if ($queryInserir) {
				$radom = rand(1,99999);
				$fp = fopen('recibo/'.$radom.'.html', "a");

				$corpo = '
	<style type="text/css">
	#caixa{
		width: 800px;
		height: 500px;
		border: 1px solid black;
	}
	#titulo{
		width: 80%;
		height: 100px;
		border-bottom: 1px solid black;
		border-right: 1px solid black;
		float: left;
		text-align: center;
		font-size: 30px;
	}
	#valor{
		width: 19%;
		float: left;
		height: 100px;
		border-bottom: 1px solid black;
	}
	#caixaValor{
		width: 50px;
		padding: 10px;
		margin: auto;
		background: #696969;
		border:  1px solid #1C1C1C;
		margin-top: 40px;
	}
	.dados{
		width: 100%;
		height: auto;
		float: left;
		font-size: 20px;
		padding: 50px;
	}
	.dados b{
		text-decoration: underline;
	}
</style>

<div id="caixa">
	<div id="titulo">WSB</div>
	<div id="valor">
	<span>Recibo: '.$radom.'</span>
		<div id="caixaValor">R$ '.$rowPlano['valor'].'</div>
	</div>
	<div class="dados">
		<span>Recebo de: <b>'.$rowConsu['nome'].'</b></span><p>
		<span>A importância de: <b>R$'.$rowPlano['valor'].'</b></span><p>
		<span>Referente a: <b>'.$rowPlano['nomePlano'].'</b></span><p><br><br><br>
		<span>___________________________________________</span><p>
		<span>Assinatura</span>
	</div>
</div>

				';
				$escreve = fwrite($fp, $corpo);
				fclose($fp);
				echo '<div class="sucesso">Pagamento realizado com sucesso! <a target="_blank" href="recibo/'.$radom.'.html"><b style="color:#8B3E2F;">Baixar Recibo!</b></a></div></br>';
			}
		}
	?>
	<div class="dadosConsu">
		<form method="POST">
		<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">account_box</i><span><?= $rowConsu['nome']; ?></span><p>
		<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">assignment_late</i><span><?= $rowPlano['nomePlano']; ?></span><p>
		<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">info</i><span><?= $status ?></span><p>
		<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">monetization_on</i><span>R$ <?= $rowPlano['valor']; ?></span><p>
		<input type="submit" name="fechar" value="Fechar fatura">
		</form>

	</div>
<?php
}
?>
	</div>
</div>