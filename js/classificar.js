    async function visualizar() {
        var categoria = document.getElementById("categorias").value;
        console.log(categoria);

        var lista = document.getElementById("catalogo");

        const dados = await fetch("../php/controller/categorias.php");
        const resposta = await dados.json();

        var livros = [];
        var livros_selecionados = [];

        for (var i = 0; i < resposta.length; i++) {
            livros.push(resposta[i].endereco);
        }

        for (var i = 0; i < resposta.length; i++) {
            if (resposta[i].categoria == categoria) {
                livros_selecionados.push(resposta[i].endereco);
            }
        }

        console.log(livros);

        if (categoria != 0) {
            lista.innerHTML = "";
            for (var i = 0; i < livros_selecionados.length; i++) {
                lista.innerHTML = lista.innerHTML + '<a href="#"><img src="' +
                    livros_selecionados[i] + '" ></a>';
            }
        } else {
            lista.innerHTML = "";
            for (var i = 0; i < livros.length; i++) {
                lista.innerHTML = lista.innerHTML + '<a href="#"><img src="' +
                    livros[i] + '" ></a>';
            }
        }
    }