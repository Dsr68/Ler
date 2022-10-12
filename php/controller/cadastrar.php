<?php
    require_once '../model/cadastro.php';
    require_once '../model/conexao.php';

    $pdo = Conexao::getConexao();

    if(isset($_POST['nome']) and ($_POST['senha1'] == $_POST['senha2']) ){
        try{
            $query = $pdo->prepare(
                "INSERT INTO cadastro(nome, sobrenome, email, senha)"
                ."VALUES(?, ?, ?, ?)");
            $query->bindParam(1, $_POST["nome"]);
            $query->bindParam(2, $_POST["sobrenome"]);
            $query->bindParam(3, $_POST["email"]);
            $query->bindParam(4, $_POST["senha1"]);

            $query->execute();
        }
        catch(PDOExeption $e){
            echo $e->getMessagen();
        }
        echo "Dados inseridos com sucesso";
    }
    else{
        echo "Erro!";
    }

?>