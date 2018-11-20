<div class="container corpo">
	<div id="center">
		<?php

		$idconsu = addslashes($explode['1']);

		$query = mysqli_query($con, "SELECT * FROM consumidor WHERE idconsu = '$idconsu'");

		$count = mysqli_num_rows($query);

		if ($count <= 0) {
			echo '<div class="erro"> Nenhum consumidor encontrado!</div>';
		}else{
			$dados = mysqli_fetch_assoc($query);
		?>
		<div class="titulo">
			<span><?= $dados['nome']; ?></span>
		</div>
		<div class="dadosConsu">
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">account_box</i><span><?= $dados['nome']; ?></span><p>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">call</i><span><?= $dados['telefone']; ?></span><p>
				<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">info</i><span><?= $dados['cpf']; ?></span><p>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">email</i><span><?= $dados['email']; ?></span><p>
			

		</div>

		<?php
				}
					?>
	</div>
</div>