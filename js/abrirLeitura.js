var leitura = document.getElementById("leitura");

async function carregarPagina() {
    const dados = await fetch("../php/controller/leitura.php");
    const resposta = await dados.json();

    const endereco = resposta[0].endereco;

    var controle = '<div id="controle">' +
        '<button id="esquerdo"><img class="icones"' +
        'src="../imagens/seta-esquerda.png' +
        '"/></button>' +
        '<input type="text" class="icones" id="pagina" value="1">' +
        '<button id="direito" onclick="clicarParaDireita()">' +
        '<img class="icones" src="../imagens/seta-direita.png"/></button>' +
        '</div>';

    var imagens = '<img id="imagens" src="' + endereco +
        '">';

    leitura.innerHTML = leitura.innerHTML + imagens + controle;
}