<?php

require_once '../model/conexao.php';

$login = $_POST["login"];
$senha = $_POST["senha"];
$botao = $_POST["entrar"];

$pdo = Conexao::getConexao();

if(!empty($login)){
    $sql = "SELECT id, nome, email, senha FROM cadastro";

    foreach($pdo->query($sql) as $linha){
        if(($linha['email'] == $login) and ($linha['senha'] == $senha)){
            header("Location: ../../view/tela_usuario.html");
        }
    }
    
}
?>