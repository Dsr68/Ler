<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/tela_usuario.css">
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
            <div id="barra-direita">
                <input id="campo-pesquisa" type="text" name="" id="">
                <img class="icones-menu" src="../imagens/lupa.png" alt="">
            </div>
    </div>
            <?php
            include_once "../php/controller/tela_usuario.php";

            IMGs::getCategorias();
            ?>
    <div id="catalogo">
        <?php
            include_once __DIR__."/../php/controller/tela_usuario.php";
            
                IMGs::getImagens();

        ?>
    </div>
    <script src="../js/classificar.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
</body>

</html>