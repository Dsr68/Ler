<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/tela_usuario.css">
    <link rel="stylesheet" href="../css/detalhes.css">
    <title>Document</title>
</head>
<body>
    <div id="barra">
        <div class="dropdown-center">
            <button id="dropdown" class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="true">
                <img class="icones-menu" src="../imagens/menu.png" alt="">
            </button>
            <ul  class="dropdown-menu">
                <?php
                include_once __DIR__."/../php/controller/tela_usuario.php";
                    IMGs::getOpcoes();
                ?>
            </ul>
        </div>
            <form action="" method="POST" id="barra-direita">
                <input id="campo-pesquisa" type="text" name="pesquisa">
            <input type="submit" name="pesquisar" value="Buscar">
            </form>
        </div>
    </div>
    <div id="catalogo">
        <div id="livros">
            <?php
                include_once __DIR__."/../php/controller/tela_usuario.php"; 
                IMGs::getImagens();
            ?>
        </div>
    </div>
    <script src="../js/classificar.js"></script>
    <script src="../js/detalhar.js"></script>
    <script src="../js/pesquisar.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/ler.js"></script>
</body>

</html>