async function clicarParaDireita() {
    const dados = await fetch("../php/controller/leitura.php");
    const resposta = await dados.json();

    var controle = document.getElementById("controle");
    var leitura = document.getElementById("leitura");
    var direita = document.getElementById("direito");
    var esquerda = document.getElementById("esquerdo");
    var paginas = document.getElementById("imagens");
    var pagina = document.getElementById("pagina");

    var resultado = [];
    var cont = pagina.value;
    //console.log(resposta);

    for (var i = 0; i < resposta.length; i++) {
        resultado.push(resposta[i].endereco);
    }

    if (cont < resultado.length) {
        cont = ++cont;
        console.log(resultado[cont]);
    }

    direita.innerHTML = '<button id="direito"><img class="icones"' +
        'src="../imagens/seta-direita.png" onclick="clicarParaDireita()"' +
        '/></button>';

    pagina.innerHTML = '<input type="text" class="icones"' +
        'id="pagina" value="' + cont + '">';

    esquerda.innerHTML = '<button id="esquerdo"><img class="icones"' +
        'src="../imagens/seta-esquerda.png" onclick="clicarParaEsquerda()"' +
        '/></button>';

    paginas.innerHTML = '<img id="imagens" src="' +
        resultado[cont - 1] + '">';

    controle.innerHTML = esquerda.innerHTML + pagina.innerHTML +
        direita.innerHTML;

    leitura.innerHTML = paginas.innerHTML +
        '<div id="controle">' +
        controle.innerHTML +
        '</div>';
}

async function clicarParaEsquerda() {
    const dados = await fetch("../php/controller/leitura.php");
    const resposta = await dados.json();

    var controle = document.getElementById("controle");
    var leitura = document.getElementById("leitura");
    var direita = document.getElementById("direito");
    var esquerda = document.getElementById("esquerdo");
    var paginas = document.getElementById("imagens");
    var pagina = document.getElementById("pagina");

    var resultado = [];
    var cont = pagina.value;
    //console.log(resposta);

    for (var i = 0; i < resposta.length; i++) {
        resultado.push(resposta[i].endereco);
    }

    if (cont > 1) {
        cont = --cont;
        console.log(resultado[cont]);
    }

    direita.innerHTML = '<button id="direito"><img class="icones"' +
        'src="../imagens/seta-direita.png" onclick="clicarParaDireita()"' +
        '/></button>';

    pagina.innerHTML = '<input type="text" class="icones"' +
        'id="pagina" value="' + cont + '">';

    esquerda.innerHTML = '<button id="esquerdo"><img class="icones"' +
        'src="../imagens/seta-esquerda.png" onclick="clicarParaEsquerda()"' +
        '/></button>';

    paginas.innerHTML = '<img id="imagens" src="' +
        resultado[cont - 1] + '">';

    controle.innerHTML = esquerda.innerHTML + pagina.innerHTML +
        direita.innerHTML;

    leitura.innerHTML = paginas.innerHTML +
        '<div id="controle">' +
        controle.innerHTML +
        '</div>';
}