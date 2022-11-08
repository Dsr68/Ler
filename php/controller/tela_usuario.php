<?php

require_once(__DIR__.'/../model/conexao.php');
require_once(__DIR__.'/../../view/tela_usuario.php');

class IMGs{

  public static function getImagens(){
    $pdo = Conexao::getConexao2();

      $sql = "SELECT titulo, endereco, id FROM livro";

      $query = $pdo->query($sql);
      /*var_dump($query);*/

      foreach($query as $linha){
        $capa = $linha[1];
        echo '<a href="#" onclick="detalhar('.$linha[2].')"><img class="livros"' 
        .'src="'.$capa.'" ></a>';
      }

      unset($pdo);
  }

  
  public static function getOpcoes(){
    $pdo = Conexao::getConexao2();

      $sql = "SELECT * FROM livro";

      $query = $pdo->query($sql);
      /*var_dump($query);*/

      unset($pdo);

    $conta = '<li class="dropdown-item"><a href="#"><img class="icones" src='
    .'"../imagens/conta.png">Minha conta</a></li>';

    $livros = '<li class="dropdown-item"><a href="#"><img class="icones" src='
    .'"../imagens/livro.png">Meus livros</a></li>';
    
    $sair = '<li class="dropdown-item selecao"><a href="#"><img class="icones" src='
    .'"../imagens/sair.png">Sair</a></li>';

    $menu = array($conta, $livros);

    foreach($menu as $item => $value){
      echo $menu[$item];
    }

    IMGs::getCategorias();

    echo $sair;

  }

  public static function getCategorias(){

    $pdo = Conexao::getConexao2();

      $sql = "SELECT * FROM categorias ORDER BY categoria";

      $query = $pdo->query($sql);
    
    echo '<li class="dropdown-item selecao"><select id="categorias" name="cat"' 
    .'onchange="visualizar()">';
    echo '<option selected value="" class="dropdown-item">'
    .'Categorias</option>';
    
    foreach($query as $linha){
      echo '<option value="'.$linha[0].'">'.$linha[1].'</option>';
    }

    echo "</select> </li>";

    unset($pdo);
  }
}