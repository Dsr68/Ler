<?php
require_once(__DIR__.'/../model/conexao.php');

$pdo = Conexao::getConexao2();
  
$sql = "SELECT id, endereco FROM a_holmes";

$query = $pdo->query($sql);
/*var_dump($query);*/

//echo $_SESSION["login"];

foreach($query as $linha){
  $retorna[] = [
    "id" => $linha[0],
    "endereco" => $linha[1]
  ];
    
}

echo json_encode($retorna);

unset($pdo);
?>