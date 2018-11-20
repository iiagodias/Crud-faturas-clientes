<?php

$query  = mysqli_query($con, "SELECT planoconsumidor.idplanoConsu, planoconsumidor.idconsu, planoconsumidor.status, planoconsumidor.data, planos.valor, planos.nomePlano, consumidor.nome, consumidor.cpf, consumidor.telefone, consumidor.email FROM planoconsumidor JOIN planos ON planoconsumidor.idplanos = planos.idplanos JOIN consumidor ON planoconsumidor.idconsu = consumidor.idconsu ORDER BY planoconsumidor.data");
$count = mysqli_num_rows($query);

if ($count <= 0) {
	echo '<div class="erro">Nenhum resultado!</div>';
}else{
	while ($row = mysqli_fetch_assoc($query)) {
		echo 'NOME: '.$row['nome'].' PLANO: '.$row['nomePlano'].'</br>';
	}
}
$num = 0;
for ($i=2018; $i >= 1998; $i--) { 
	$num++;
}

echo $num;