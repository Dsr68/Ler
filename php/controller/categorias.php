<?php
include_once __DIR__."/../model/conexao.php";

$pdo = Conexao::getConexao2();

$sql = 'SELECT id, titulo, endereco, categoria FROM livro ORDER BY titulo';
  $query = $pdo->query($sql);

foreach($query as $linha){
  $retorna[] = [
    "id" => $linha[0],
    "titulo" => $linha[1],
    "endereco" => $linha[2],
    "categoria" => $linha[3]
  ];
    
}

//var_dump($retorna);

echo json_encode($retorna);

unset($pdo);

?>