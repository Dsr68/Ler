<?php

require_once(__DIR__.'/../model/conexao.php');

class IMGs{

  public static function getImagens(){
    $pdo = Conexao::getConexao2();

      $sql = "SELECT titulo, enderenco FROM livro";

      $query = $pdo->query($sql);
      /*var_dump($query);*/

      foreach($query as $linha){
        $capa = $linha[1];
        echo '<a href="#"><img src="'.$capa.'" ></a>';
      }

      unset($pdo);
  }
}
?>