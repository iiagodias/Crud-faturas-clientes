<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>CADASTRAR VENDEDOR</span>
		</div>

		<?php 

		if (isset($_POST['cadastrar'])) {
			$nome = addslashes($_POST['nome']);
			$email = addslashes($_POST['email']);
			$comissao = addslashes($_POST['comissao']);
			$foto = $_FILES['foto'];

			if(!preg_match("/^image\/(pjpeg|jpeg|png|gif|bmp)$/", $foto["type"])){
     	  	 	echo '</br><div class="erro">Escolha um arquivo de imagem.</div>';
   	 		}elseif (empty($nome)|| empty($email)|| empty($comissao) || empty($foto)) {
   	 			echo '</br><div class="erro">Preencha todos os campos!</div>';
   	 		}else{

			preg_match("/\.(gif|bmp|png|jpg|jpeg){1}$/i", $foto["name"], $ext);
 

        	$nome_imagem = rand(1,999999) . "." . $ext[1];
 

        	$caminho_imagem = "fotos/" . $nome_imagem;

			move_uploaded_file($foto["tmp_name"], $caminho_imagem);
			
			$matricula = rand(1,99999);

			$sql = mysqli_query($con, "INSERT INTO vendedor(nome, foto, matricula, percentComissao, email) VALUES ('$nome', '$caminho_imagem', '$matricula', '$comissao', '$email')");
		
			if ($sql){
				echo '<div class="sucesso">Vendedor cadastrado com sucesso!</div>';
					}


				}
   	 		}



		?>
		<form  method="POST" enctype="multipart/form-data">
		<input type="text" name="nome" placeholder="NOME"> <p>
		<input type="text" name="email" placeholder="E-MAIL"><p>
		<input type="file" name="foto">
		<input type="text" name="comissao" placeholder="COMISSÃO: 10,20,30,40,50.."><p>
		<input type="submit" name="cadastrar" value="Cadastrar">
		</form>
	</div>
</div>