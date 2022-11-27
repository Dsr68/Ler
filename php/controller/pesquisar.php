<?php
include_once __DIR__."/../model/conexao.php";

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$pdo = Conexao::getConexao2();

$sql = "SELECT id, endereco FROM livro WHERE titulo LIKE '%"
.$dados['pesquisa']."%'";
$query = $pdo->query($sql);

if(!empty($dados)){
  foreach($query as $linha){
    $retorna[] = [
      'id' => $linha['id'],
      'endereco' => $linha['endereco']
    ];
  }
}
else{
  $retorna[] = ['status' => false, 'msg' => '<p style="color: #f00">'
  .'Conteúdo não encontrado.</p>'];
}

echo json_encode($retorna);
?>