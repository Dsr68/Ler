<?php
include_once(__DIR__.'/../model/conexao.php');
 
$pdo = Conexao::getConexao2();

$sql = 'SELECT enderenco FROM livro where categorias = "Banco de Dados"';

$query = $pdo->query($sql);
/*var_dump($query);*/

foreach($query as $linha){
 $capa = $linha[0];
 echo '<a href="#"><img src="'.$capa.'" ></a>';
}

var_dump($capa);

unset($pdo);
?>