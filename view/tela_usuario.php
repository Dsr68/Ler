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
    <div class="dropdown-center">
        <button id="dropdown" class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="true">
      <img id="icone-menu" src="../imagens/menu.png" alt="">
    </button>
        <ul class="dropdown-menu">
            <li>
                <a class="dropdown-item" href="#"><img class="icones" src="../imagens/conta.png" alt="">Minha conta</a>
            </li>
            <li>
                <a class="dropdown-item" href="#"><img class="icones" src="../imagens/livro.png" alt="">Meus Livros</a>
            </li>
            <li>
                <a class="dropdown-item" href="#"><img class="icones" src="../imagens/filtro.png" alt="">Categorias</a>
            </li>
            <li>
                <a class="dropdown-item" href="#"><img class="icones" src="../imagens/sair.png" alt="">Sair</a>
            </li>
        </ul>
    </div>
    <div id="catalogo">
        <?php
            include_once "../php/controller/tela_usuario.php";
            IMGs::getImagens();
        ?>
    </div>

    <script src="../js/bootstrap.bundle.min.js"></script>
</body>

</html>