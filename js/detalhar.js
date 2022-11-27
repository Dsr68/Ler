async function detalhar(id) {
    const dados = await fetch("../php/controller/categorias.php");
    const resposta = await dados.json();

    var catalogo = document.getElementById("catalogo");
    var livros = document.getElementById("livros");

    catalogo.innerHTML = "";

    var detalhes = [];

    for (var i = 0; i < resposta.length; i++) {
        if (resposta[i].id == id) {
            detalhes.push(resposta[i]);
        }
    }

    //console.log(detalhes);


    catalogo.innerHTML = '<div id="livros">' + livros.innerHTML + '</div>' +
        '<div id="exibicao">' +
        '<img class="img-demostracao" src="' +
        detalhes[0].endereco + '"></img>' +
        '<div id="texto"><h1 id="titulo">' + detalhes[0].titulo + '</h1>' +
        detalhes[0].descricao +
        '<button id="btn-ler">Ler</button>'
    '</div></div>';
}