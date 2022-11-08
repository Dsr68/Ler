    async function visualizar() {
        var categoria = document.getElementById("categorias").value;
        console.log(categoria);

        var lista = document.getElementById("livros");
        var copia = document.getElementById("livros");

        lista.innerHTML = "";
        lista = copia;

        const dados = await fetch("../php/controller/categorias.php");
        const resposta = await dados.json();

        var livros = [];
        var livros_selecionados = [];

        for (var i = 0; i < resposta.length; i++) {
            if (resposta[i].categoria == categoria) {
                livros_selecionados.push(resposta[i]);
            }
        }

        console.log(categoria);

        if (categoria != "") {
            for (var i = 0; i < livros_selecionados.length; i++) {
                lista.innerHTML = lista.innerHTML + '<a href="#" onclick="detalhar(' +
                    livros_selecionados[i].id +
                    ')"><img class="livros"' +
                    'src="' +
                    livros_selecionados[i].endereco + '" ></img></a>';
            }
        } else {
            for (var i = 0; i < livros.length; i++) {
                lista.innerHTML = lista.innerHTML + '<a href="#" onclick="detalhar(' +
                    resposta[i].id + ')"><img class="livros"' +
                    'src="' +
                    resposta[i].endereco + '"></img></a>';
            }
        }
    }