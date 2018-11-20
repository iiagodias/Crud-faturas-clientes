<?php

$con = mysqli_connect('localhost','root','','testeemprego');
mysqli_query($con,"SET NAMES 'utf8'");
mysqli_query($con,'SET character_set_connection=utf8');
mysqli_query($con,'SET character_set_client=utf8');
mysqli_query($con,'SET character_set_results=utf8');

if($con){

}else{
	echo "Conexao ERROR!";
}