<div class="container corpo">
	<div id="center">
		<div class="titulo">
			<span>VENDEDORES</span>
			<div class="cadastrar"><a href="cadastrarvende"> Cadastrar</a></div>
		</div>
<?php
$queryVen = mysqli_query($con, "SELECT * FROM vendedor");
$count = mysqli_num_rows($queryVen);
if ($count <= 0) {
	echo '</br><div class="erro">Nenhum consumidor cadastrado!</div>';
}else{
	while ($row  = mysqli_fetch_assoc($queryVen)) {
	
?>
		<div class="caixaVendedor">
			<img src="<?= $row['foto']; ?>" style="width: 300px; height: 200px;"><p>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">account_box</i><span><?= $row['nome']; ?></span><p>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">info</i><span><?= $row['matricula']; ?></span><p>
			<i class="material-icons" style="vertical-align: -5px; margin-right: 5px;">email</i><span><?= $row['email']; ?></span><p>
			<a href="delete/<?= $row['idvendedor']; ?>/vendedor"><i class="material-icons " style="vertical-align: -5px; font-size: 30px; background: #95a5a6; border-radius: 100%; float: right; margin-top: 20px; ">delete</i></a>
		</div>

<?php
	}
}

?>
	</div>
</div>
