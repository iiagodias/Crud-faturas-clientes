<div class="container">
  <div id="center">
<?php

$headers = "Content-type: text/html; charset=utf-8\n";
$html = '
<style type="text/css">
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
    background-color: #bdc3c7;
}

tr:nth-child(even) {
    background-color: #ecf0f1;
}
</style>
';

$html .= '
    <table>
  <tr>
    <th>Nome</th>
    <th>Plano</th>
    <th>Valor total</th>
    <th>Comissao</th>
  </tr>
  ';
$query = mysqli_query($con, "SELECT * FROM vendedor");
$count = mysqli_num_rows($query);
if ($count <= 0) {
  echo '<div class="erro">Nenhum vendedor cadastrado no sistema!</div>';
  exit();
}else{
  while ($rowVende = mysqli_fetch_assoc($query)) {
  $email = $rowVende['email'];
  $queryConsu = mysqli_query($con, "SELECT * FROM consumidor");
  $countConsu = mysqli_num_rows($queryConsu);
  if ($countConsu <= 0) {
    echo '<div class="erro">Nenhum consumidor cadastrado no sistema.</div>';
    exit();
  }else{
    while ($rowConsu = mysqli_fetch_assoc($queryConsu)) {

      $html .= '
        <tr>
        <td>'.$rowConsu['nome'].'</td>
        <td>Plano II</td>
        <td>R$ 150</td>
        <td>R$ 50</td>
        </tr>

';

    }




$html .= '
</table>
';
mail($email, "Relatatório WSB Sistema", $html, $headers);
    }
  }
}
echo $html;
?>
</div>
</div>