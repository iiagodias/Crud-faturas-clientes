<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>CONSUMIDORES</span>
			<div class="cadastrar"><a href="cadastrarconsu"> Cadastrar</a></div>
		</div>
<?php 
$query = mysqli_query($con, "SELECT * FROM consumidor");
$count = mysqli_num_rows($query);
if ($count <= 0) {
	echo '</br><div class="erro">Nenhum consumidor cadastrado!</div>';
}else{
	while ($row = mysqli_fetch_assoc($query)) {
		
?>
		<div class="caixa">
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">account_box</i><span><?= $row['nome']; ?></span>
			<a href="delete/<?= $row['idconsu']; ?>/consumidor"><i class="material-icons " style="vertical-align: -5px; float: right;">delete</i></a>
			<a href="visualizar/<?= $row['idconsu']; ?>"><i class="material-icons" style="vertical-align: -5px; float: right;">search</i></a>
		</div>
<?php
	}
}
?>
	</div>
</div>
