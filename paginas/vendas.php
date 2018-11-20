<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>EFETUAR VENDA</span>
		</div>
		<?php
		if(isset($_POST['realizar'])){
			$consumidor = addslashes($_POST['consumidor']);
			$vendedor = addslashes($_POST['vendedor']);
			$plano = $_POST['plano'];
		$queryConsu = mysqli_query($con,"SELECT * FROM consumidor WHERE nome ='$consumidor' ");
		$countConsu = mysqli_num_rows($queryConsu);

		$queryVende = mysqli_query($con,"SELECT * FROM vendedor WHERE nome ='$vendedor' ");
		$countVende = mysqli_num_rows($queryVende);

		$queryPlano = mysqli_query($con,"SELECT * FROM planos WHERE idplanos ='$plano' ");
		$rowPlanos = mysqli_fetch_assoc($queryPlano);

		if ($countConsu <= 0) {
			echo '<div class="erro">Consumidor não cadastrado!</div>';
		}elseif ($countVende <= 0) {
			echo '<div class="erro">Vendedor não cadastrado!</div>';
		}else{
			date_default_timezone_set('America/Sao_Paulo');
			$rowConsu = mysqli_fetch_assoc($queryConsu);
			$idconsu = $rowConsu['idconsu'];
			$rowVende = mysqli_fetch_assoc($queryVende);
			$idvendedor = $rowVende['idvendedor'];
			$time = time();
			$queryInsert = mysqli_query($con,"INSERT INTO vendasplano(idconsu, idvendedor, idplanos, data) VALUES ('$idconsu', '$idvendedor', '$plano', '$time')");
			$timeVencimento = time() + 60*60*24*30;
		    $queryAtivar = mysqli_query($con, "INSERT INTO planoConsumidor(idconsu, idplanos, status, data) VALUES ('$idconsu', '$plano', '0', '$timeVencimento')");
			if ($queryInsert) {
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
		<div id="caixaValor">R$ '.$rowPlanos['valor'].'</div>
	</div>
	<div class="dados">
		<span>Eu vendedor: <b>'.$rowVende['nome'].'</b></span><p>
		<span>Recebo de: <b>'.$rowConsu['nome'].'</b></span><p>
		<span>A importância de: <b>R$'.$rowPlanos['valor'].'</b></span><p>
		<span>Referente a: <b>'.$rowPlanos['nomePlano'].'</b></span><p><br><br><br>
		<span>___________________________________________</span><p>
		<span>Assinatura</span>
	</div>
</div>

				';
				$escreve = fwrite($fp, $corpo);
				fclose($fp);
				echo '<div class="sucesso">Venda realizada com sucesso! <a target="_blank" href="recibo/'.$radom.'.html"><b style="color:#8B3E2F;">Baixar Recibo!</b></a></div>';
			}else{
				echo '<div class="erro">Erro ao cadastrar a venda!</div>';
			}
		}






		}
		?>
<form method="POST">
	<input type="text" name="consumidor" placeholder="Nome completo do consumidor..">
	<input type="text" name="vendedor" placeholder="Nome completo do vendedor..">
	<select name="plano">
		<?php

		$query = mysqli_query($con,"SELECT * FROM planos ");
		$count = mysqli_num_rows($query);
		if ($count <= 0) {
			echo '<div claa="erro">Nenhum plano para selecionar!</div>';
		}else{
			while ($row = mysqli_fetch_assoc($query)) {
				
		?>
		<option value="<?= $row['idplanos']; ?>"><?= $row['nomePlano']; ?></option>
		<?php

			}
		}
		?>
	</select>
	<input name="realizar" type="submit" value="Efetuar">
</form>
	</div>
</div>