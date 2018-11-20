<?php

$id = addslashes($explode['1']);
$tipo = addslashes($explode['2']);
if (isset($id)) {



if ($tipo == "consumidor" || $tipo == "vendedor") {
	if ($tipo == "vendedor") {
		$chave = "idvendedor";
	}elseif ($tipo == "consumidor") {
		$chave = "idconsu";
	}
	$query = mysqli_query($con, "DELETE FROM $tipo WHERE $chave = $id");
	if ($query) {
		if ($tipo == "consumidor") {
			echo '<div class="sucesso">Consumidor deletado com sucesso!</div>';
		}else{
			echo '<div class="sucesso">Vendedor deletado com sucesso!</div>';
		}
	}else{
		echo '<div class="erro">Aconteceu alguem erro!</div>';
	}
}else{
	header('Location: ../inicio');
}

}