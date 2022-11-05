<?php
include_once __DIR__."/../model/conexao.php";

$pdo = Conexao::getConexao2();

$sql = 'SELECT endereco, categoria FROM livro ORDER BY endereco';
  $query = $pdo->query($sql);

foreach($query as $linha){
  $retorna[] = ['categoria' => $linha[1], 'endereco' => $linha[0]];
    /*var_dump($capa);*/
}

echo json_encode($retorna);

unset($pdo);

?>