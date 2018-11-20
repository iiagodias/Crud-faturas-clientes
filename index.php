<?php
include("conexao/config.php");

?>
<!DOCTYPE html>
<html>
<head>
	<title>WSB - SISTEMA DE GESTÃO FINANCEIRA</title>
	<base href="http://localhost/ProjetoEmprego/">
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/style.css?<?= time(); ?>">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"  rel="stylesheet">

</head>
<body>

</html>
<header>
	<div class="container header">
	 <div id="center">
		<h1>WSB</h1>
		<ul>
			<li><a href="inicio">INÍCIO</a></li>
			<li><a href="fatura">FATURAS</a></li>
			<li><a href="vendedor">VENDEDORES</a></li>
			<li><a href="consumidor">CONSUMIDORES</a></li>
			<li><a href="relatorio">RELATÓRIOS</a></li>
			<li><a href="pagamentos">PAGAMENTOS</a></li>
			<li><a href="vendas">VENDAS</a></li>
		</ul>
	</div>
</div>
</header>

<content>
     <?php
          $url = (isset($_GET['pagina'])) ? $_GET['pagina'] : 'inicio';
          $explode = explode('/', $url);
          $dir = "paginas/";
          $ext = ".php";

          if(file_exists($dir.$explode['0'].$ext)){
            include($dir.$explode['0'].$ext);
          }else{
            echo ' <br><div class="erro"><center>Pagina não encontrada!</center></div>';
          }


        ?>
	
</content>

<footer>
<div class="container footer">
	<div id="center">
	<span>Copyright © 2018 WSB - Todos os direitos reservados</span>
	</div>
</div>
</footer>
<script src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(function(){
   $('content').css('min-height', $(window).height() - $('header').height() - $('footer').height());
})
</script>
</body>

