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
  
  public static function getOpcoes(){

    $conta = '<li class="dropdown-item"><a href="#"><img class="icones" src='
    .'"../imagens/conta.png">Minha conta</a></li>';

    $livros = '<li class="dropdown-item"><a href="#"><img class="icones" src='
    .'"../imagens/livro.png">Meus livros</a></li>';

    $categorias = '<li>'
    .'<li id="categorias" class="dropdown-item"><img dropdown-item class="icones" src="../imagens/filtro.png">Categorias</li>'
    .'<ul>'
    .'<li class="dropdown-item"><a href="#">Banco de dados</a></li>'
    .'<li class="dropdown-item"><a href="#">Indomas</a></li>'
    .'<li class="dropdown-item"><a href="#">Psicologia</a></li>'
    .'<li class="dropdown-item"><a href="#">Programação</a></li>'
    .'<li class="dropdown-item"><a href="#">Romances</a></li>'
    .'</ul>'
    .'</li>';
    
    $sair = '<li class="dropdown-item"><a href="#"><img class="icones" src='
    .'"../imagens/sair.png">Sair</a></li>';

    $menu = array($conta, $livros, $categorias, $submenu, $sair);

    foreach($menu as $item => $value){
      echo $menu[$item];
    }
    
      /*$pdo = Conexao::getConexao2();

    $sql = "SELECT categorias FROM livro";

      $query = $pdo->query($sql);
      var_dump($query);

      if($opcao != "opcao"){
        foreach($query as $linha){
          $capa = $linha[1];
          echo '<a href="#"></a>';
        }
      }*/

      unset($pdo);
  }

  function geraSubmenu(){ 
    $lista = array(
      'Banco de dados',
      'Indiomas',
      'Programacao',
      'psicologia',
      'Romance');
    
      foreach($lista as $item => $value){
        echo '<li><a href="#">'.$lista[$item].'</a></li>';
      } 
  }
}