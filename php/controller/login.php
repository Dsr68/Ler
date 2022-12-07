<?php
session_start();

$_SESSION["login"] = $_POST["login"];
$_SESSION["senha"] = $_POST["senha"];
$_SESSION["entrar"] = $_POST["entrar"];

require_once __DIR__.'/../model/conexao.php';

$login = $_SESSION["login"];
$senha  = $_SESSION["senha"];
$entrar = $_SESSION["entrar"];

$pdo = Conexao::getConexao();

if(!empty($login)){
    $sql = "SELECT id, nome, email, senha FROM cadastro";

    foreach($pdo->query($sql) as $linha){
        if(($linha['email'] == $login) and ($linha['senha'] == $senha)){
            header("Location: ../../view/tela_usuario.php");
            break;
        }
        else{
            header("Location: ../../view/erro_login.html");
        }
    }

    unset($pdo);

}
?>