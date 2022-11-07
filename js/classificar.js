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
            livros.push(resposta[i].endereco);
        }

        for (var i = 0; i < resposta.length; i++) {
            if (resposta[i].categoria == categoria) {
                livros_selecionados.push(resposta[i]);
            }
        }

        console.log(livros);

        if (categoria != 0) {
            for (var i = 0; i < livros_selecionados.length; i++) {
                lista.innerHTML = lista.innerHTML + '<div id="livros"'
                +'<a href="#" onclick="detalhar(' 
                + livros_selecionados[i].id 
                +')"><img class="livros"'
                + 'src="' +
                    livros_selecionados[i].endereco + '" /></img></a> </div>';
            }
        } else {
            for (var i = 0; i < livros.length; i++) {
                lista.innerHTML = lista.innerHTML + '<div id="livros"'
                + '<a href="#" onclick="detalhar('
                + livros_selecionados[i].id
                ')"><img class="livros"'
                +   'src="'
                + livros[i].endereco + '"></img></a> </div>';
            }
        }
    }