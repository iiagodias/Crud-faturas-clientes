<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>CADASTRAR CONSUMIDOR</span>
		</div>
		<?php
		if (isset($_POST['cadastrar'])) {
			$nome = addslashes($_POST['nome']);
			$cpf = addslashes($_POST['cpf']);
			$telefone = addslashes($_POST['telefone']);
			$email = addslashes($_POST['email']);

			if (empty($nome) || empty($cpf) || empty($telefone) || empty($email)) {
				echo '<div class="erro">Preencha todos os campos corretamente!</div>';
			}else{
				$query = mysqli_query($con, "INSERT INTO consumidor(cpf, nome, telefone, email) VALUES ('$cpf', '$nome', '$telefone', '$email')");

				if ($query) {
					echo '<div class="sucesso">Consumidor cadastrado com sucesso!</div>';
				}
			}
		}

		?>
		<form method="POST">
			<input type="text" name="nome" placeholder="NOME"> <p>
			<input type="text" name="cpf" placeholder="CPF"><p>
			<input type="text" name="telefone" placeholder="TELEFONE"><p>
			<input type="text" name="email" placeholder="E-MAIL"><p>
			<input type="submit" name="cadastrar" value="Cadastrar">
	    </form>

	</div>
</div>