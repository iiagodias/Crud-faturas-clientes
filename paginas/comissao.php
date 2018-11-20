<div class="container corpo">
  <div id="center">
    <div class="titulo">
      <span>RELATÓRIO DE COMISSÃO <?=  date('m/Y', time()); ?> </span>
    </div>
    <table>
  <tr>
    <th>Nome</th>
    <th>Vendas</th>
    <th>Total</th>
  </tr>
<?php		
date_default_timezone_set('America/Sao_Paulo');
				$query = mysqli_query($con, "SELECT * FROM vendedor");
				$count = mysqli_num_rows($query);

				if ($count <= 0) {
					echo '<div class="erro">Nenhum vendedor encontrado!</div>';
				}else{
					while ($row = mysqli_fetch_assoc($query)) {
						$idvendedor = $row['idvendedor'];
            $nomeVendedor = $row['nome'];
            $Month = strtotime('01-'.date('m-Y', time()));
						$queryVendas = mysqli_query($con, "SELECT * FROM vendasplano WHERE idvendedor='$idvendedor' AND  data >'$Month'");
						$countVendas = mysqli_num_rows($queryVendas);
            $valor = 0;

            while ($rowVenda = mysqli_fetch_assoc($queryVendas)) {
              $queryPlano = mysqli_query($con, "SELECT * FROM planos WHERE idplanos = '{$rowVenda['idplanos']}'");
              $rowPlanos = mysqli_fetch_assoc($queryPlano);
              $valorTotal = $rowPlanos['valor'];
              $percent = $row['percentComissao'];
              $tirarPercent =  ( $percent / 100 ) * $valorTotal;

              $valor = $valor + $tirarPercent;

            }
          
?>
  <tr>
    <td><?= $nomeVendedor ?></td>
    <td><?= $countVendas ?></td>
    <td>R$ <?= $valor ?></td>
  </tr>

<?php



					}

				}

        ?>
</table>
  </div>

</div>