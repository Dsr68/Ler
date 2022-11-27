var formulario = document.getElementById("barra-direita");
var livros = document.getElementById("livros");

if (formulario) {
    formulario.addEventListener("submit", async(e) => {
        //Não recarrega a página
        e.preventDefault();

        //Não recarregar a página
        const dados_form = new FormData(formulario);

        const dados = await fetch("../php/controller/pesquisar.php", {
            method: "POST",
            body: dados_form
        });

        const resposta = await dados.json();
        console.log(resposta);

        if (!resposta["status"]) {
            livros.innerHTML = "";
            formulario.innerHTML = "";
            for (var i = 0; i < resposta.length; i++) {
                livros.innerHTML = livros.innerHTML +
                    '<a href="#" onclick="detalhar(' +
                    resposta[i]['id'] +
                    ')"><img class="livros"' +
                    'src="' + resposta[i]['endereco'] +
                    '" ></a>'
            }
        } else {

        }

    });
}