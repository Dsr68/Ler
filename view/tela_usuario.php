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
            <ul class="dropdown-menu">
                <li>
                    <a class="dropdown-item" href="#"><img class="icones" src="../imagens/conta.png" alt="">Minha conta</a>
                </li>
                <li>
                    <a class="dropdown-item" href="#"><img class="icones" src="../imagens/livro.png" alt="">Meus Livros</a>
                </li>
                <li id="categorias">
                    <div class="dropdown-item">
                        <div><img class="icones" src="../imagens/filtro.png" alt="">Categorias</div>
                        <select class="dropdown-item" size="3" aria-label="size 3 select example">
                            <option selected>teste1</option>
                            <option value="1">teste2</option>
                            <option value="1">teste3</option>
                        </select>
                    </div>
                </li>
                <li>
                    <a class="dropdown-item" href="#"><img class="icones" src="../imagens/sair.png" alt="">Sair</a>
                </li>
            </ul>
        </div>
            <div id="barra-direita">
                <input id="campo-pesquisa" type="text" name="" id="">
                <img class="icones-menu" src="../imagens/lupa.png" alt="">
            </div>
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