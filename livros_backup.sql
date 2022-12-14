-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: livros
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Banco de Dados'),(2,'Indiomas'),(3,'Psicologia'),(4,'Programacao'),(5,'Romances'),(6,'Redes');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitor`
--

DROP TABLE IF EXISTS `leitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) DEFAULT NULL,
  `endreco_livro` varchar(200) DEFAULT NULL,
  `pagina` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitor`
--

LOCK TABLES `leitor` WRITE;
/*!40000 ALTER TABLE `leitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `leitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria` (`categoria`),
  CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Sherlock Holmes - O Cao dos Banskerville','../livros/holmes/holmes1.jpg',5, null),
(2,'Use a Cabeca! Python','../livros/use_a_cabeca_python/capa.jpg',4, null),
(3,'Dicionario de Espanhol','../livros/capas/dicionario_espanhol.jpg',2, null),
(4,'Sherlock Holmes - As Aventuras de S. H.','../livros/capas/holmes2.jpg',5, null),
(5,'Daniel Goliman - Inteligencia Emocional.','../livros/capas/inteligencia_emocional.jpg', 3, null),
(6,'O Cortico.','../livros/capas/o_cortico.jpg',5, null),
(7,'Oracle','../livros/capas/sgbd_oracle.jpg',1, null),
(8,'Shell Linux','../livros/capas/shell_linux.jpg',4, null),
(9,'Teste de Invasao','../livros/capas/teste_de_invasao.jpg',6, null);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UPDATE `livro` set `descricao` = "
<p>A fama do personagem Sherlock Holmes superou a de seu<br>
criador, Sir Arthur Conan Doyle. Eminentemente cerebral,<br>
Holmes ?? capaz de, ?? vista de um simples cart??o de visita,<br>
pela dedu????o, tra??ar o perfil de seu dono, fornecendo dados<br>
que trazem surpresa e admira????o</p>
<p>O c??o dos Baskervilles, escrito em 1902, ?? uma das obras pri<br>
mas de Conan Doyle conta a hist??ria de uma animal fantasma<br>
g??rico, que apartir dos p??ntanos que cercam a pris??o de Dart<br>
moor, espalhar medo aterrador a todos que se aproximam do lo<br>
cal. Como romance policila a obra ?? considerada uma das mais</p>
perfeitas do g??nero.</p>" WHERE `id` = 4;

UPDATE `livro` set `descricao` = "
<p>O Romancista Sir Arthur Conan Doyle, fortemente influen<br>
ciado por Edgar Allan Poe e ??mile Gaboriau, criou, em 1887,<br>
o mais conhecido personagem dos romances do g??nero policial<br>
- O detetive Sherlock Holmes.</p>
<p>Eminentemente cerebral, Holmes era capaz de, pela sua dedu<br>
????o, ?? vista de um simples cart??o de visita, tra??ar o perfil<br>
do seu portador.</p>
<AS aventuras de Sherlock Holmes(1892) ?? uma das mais celebres<br>
obras de Doyle. S??o nove hist??rias, onde o autor narra as mais<br>
eletrizantes aventuras do detetive ingl??s.</p>
" WHERE `id` = 1;

UPDATE `livro` set `descricao` = "
<p>Um mini dicion??rio de espanho com:<br>
<ul>
<li>Elementos gramaticais b??sicos da lingua espanhola;</li>
<li>Falsos cognatos, palavras com sons parecidos com<br>
o portug??s, mas com significados diferentes;
</li>
<li>Variantes entre o espanhol penisular e o espanhol<br>
na Am??rica, com destaque para as varia????es argentinas<br>
uruguaias, chilenas, e paraguaias;
</li>
<li>Mais de 27 mil verbetes</li>
</ul>
</p>
" WHERE `id` = 3;

UPDATE `livro` set `descricao` = "
<p>Os pentesters simulam ciberataques para descobrir vulnera<br>
bilidades de seguran??a em redes, em sistemas operacionais e<br>
em aplica????es. Os especialistas em seguran??a da informa????o<br>
no mundo todo utilizam t??cnicas de testes de invas??o para<br>
avaliar as defezas de uma empresa.</P>
<p>Em teste de invas??o, a especialista em seguran??a, pesquisa<br>
dora e instrutora Georgia Weidman apresenta as principais ha<br>
bilidades e t??cnicas necess??rias a todo pentester. Ao usar<br>
um laborat??rio baseado em m??quinas virtuais que inclui o Kali<br>
Linux e sistemas operacionais vulner??veis, voc?? ver?? uma s??rie<br>
de li????es pr??ticas usando ferramentas como Wireshark, o Nmap<br>
e o Burp Suite. ?? medida que acompanhar as li????es usando o la<br>
borat??rio e realizando ataques, voc?? vivenciar?? as fases fun<br>
damentais de uma avalia????o de verdade - que incluem a coleta<br>
de informa????es, a descoberta de vulnerabilidades passiv??is de<br>
esplora????o, a obten????o de acesso aos sistemas, a p??s-explora????o<br>
de falhas, al??m de outras atividades.</P>
" WHERE `id` = 9;

UPDATE `livro` set `descricao` = "
<p>O cotidiano miser??vel de uma habita????o coletiva em fins do s??culo<br>
19, apresentado com uma objetividade implac??vel, ?? o centro da trama<br>
de O Corti??o, Obra m??xima de Alu??zio de Azevedo, este romance repre<br>
senta a maturidade de um escritor preocupado em registrar e analisar<br>
?? luz da ci??ncia as mazelas da sociedade brasileira.</p>
<p>Mais do que um tema, ?? um enfoque cr??tico e anal??tico de Alu??zio<br>
de Azevedo(1857 - 1913) que garante a atualidade de O Corti??o. A preo<br>
cupa????o social ?? um tra??o marcante da obra do autor, que buscava, com<br>
aguda capacidade de observa????o copreender cientificamente os elementos<br>
determinantes da realidade do Brasil. Para sobreviver, Alu??zio de Azeve<br>
do tamb??m escreveu romances ao gosto do p??blico da ??poca. Foi ainda cari<br>
caturista de jornais em 1895, abandonou a literatura e ingressou na car<br>
reira diplom??tica.</p>
" WHERE `id` = 6;

UPDATE `livro` set `descricao` = "
<p>O Shell ?? um interpletador de comando que tem uma poderosa linguagem<br>
de alto n??vel, permitindo a cria????o de tomada de decis??es(if, then,<br>
else...), la??os ou lupes(for ou while), assim como o armazenamento<br>
de valores em vari??veis e permiss??es para executar inumeros progra<br>
mas.</p>
<p>Com o livro Shell Linux - Do Aprendiz ao Administrador voc?? ir??<br>
aprender como utilizar as ferramentas e recursos do Shell. Entre os<br>
t??picos abordados est??o: introdu????o sobre a parte f??sica do computa<br>
dor, o ambiente Linux, como acessar o Shell, a interface do Shell, o<br>
que s??o diret??rios, a estrutura de diret??rios, os principais coman<br>
dos atalhos de teclado, gerenciamento de arquivos e diret??rios, como<br>
obter informa????es para usu??rios, como ler informa????es do hardware,<br>
como desligar e reiniciar a maquina, processos, redirecionamentos,<br>
vari??veis, usua??ios, grupos e permiss??es, delimitadores, aplicati<br>
vos para o dia a dia, monitoramento do sistema, manipula????o de pa<br>
cotes, manipula????o de testo de forma n??o interativa, Shell Script<br>
comandos condicionais, intera????o com Shell Script, executando Shell<br>
Script automaticamente no boot, os recursos de Shell Script na inter<br>
face gr??fica, gerenciadores de arquivos(Dolphin e Nautilus), editores<br>
de texto(Kate e Gedit), utilizando Shell no seu smartphone ou tablet<br>
Android, as caracte de um sistema operacional Linux, A licen??a GPL,<br>
o projeto GNU, software livre, GNU/Linux, projetos complementares, pa<br>
dr??es abertos e interoperabilidade, software legado, entre outros.</p>
<p>No final de cada cap??tulo s??o apresentados exerc??cios que visam fi<br>
xar o aprendizado dos t??picos abordados.</p>" WHERE `id` = 8;

UPDATE `livro` set `descricao` = "
<p><ul>
<li>Um alto QI n??o ?? garantia de sucesso;</li>
<li>A emo????o pode dar a verdadeira mediada da intelig??ncia humana;</li>
<li>A aus??ncia de habilidade emocional pode ser o verdadeiro motivo<br>
de tantos casamentos desfeitos;</li>
<li>No mundo empresarial, o QI(Coefici??nte de Intelig??ncia) alto<br>
consegue um bom emprego. O QE(Coeficiente Emocional) alto garante<br>
promo????es.</li>
</ul></P>
<p>Em Intelig??ncia Emocional, o psic??logo Daniel Goleman examina<br>
estas quest??es pol??micas, por meio de instigante viagem pelos la<br>
birintos da mente humana. Aliando o rigor do cientista ?? expe<br>
ri??ncia humana do psic??logo, Goleman traduz as mais recentes<br>
descobertas neurol??gicas para o p??blico leigo. E ?? esta base<br>
cient??fica que apoiar?? suas teses reveladoras.</p>
<p>Intelig??ncia Emocional ?? uma obra brilhante que apresenta<br>
revela????es supreendentes para todos que ainda acrreditam na di<br>
tadura da raz??o. Grande sucesso nos Estados Unidos, este livro<br>
tem orientados novas propostas pedag??gicas, bem como servido de<br>
base no processo de sele????o de empregados de grandes empresas ame<br>
ricanas.</p>
<p>Intelig??ncia Emocional trata das grandes quest??es da mente huma<br>
na com arg??cia e profundidade. ?? obra indispens??vel a todos que<br>
desejam aproveitar melhor suas potencialidades.</p>
" WHERE `id` = 5;

UPDATE `livro` set `descricao` = "
<p>O objetivo deste livro ?? apresentar ao desenvolvedor de sistemas<br>
o mundo da programa????o do banco de dados Oracle. Em seus 27 cap??tulos,<br>
o livro mostra de maneira simples e objetiva os principais recursos de<br>
programa. Ap??s um cap??tulo de introdu????o que oferece uma vis??o geral do<br>
banco de dados com sua estrutura e caracter??sticas, tem se uma descri????o<br>
detalhada de componentes como o dicion??rio de dados, tablespaces e princi<br>
pais objetos importantes para o desenvolvimento de aplica????es. Em seguida<br>
o leitor aprender?? a usar a SQL*PLUS, a interface interativa para acesso ao<br>
banco de dados, e ter?? uma introdu????o ?? liguagem SQL, essencial para o traba<br>
lho com o banco de dados.</p>
<p>Gradativamente, e de forma modular, o livro mostrar?? como criar tabelas,<br>
??ndices, integridade referencial entre tabelas, vis??es, sequencias etc. Depois<br>
de aprender a criar objetos de banco de dados, o leitor conhecer?? a programa????o<br>
PL/SQL usada para criar stored procedures, triggers, e packages, e ver?? tamb??m<br>
os conceitos de transa????es, replica????es e o uso de banco de dados distribu??do<br>
O livro tamb??m explica o funcionamento dos principais utilit??rios do banco de<br>
dados como, o SQL*Loader, o EXP e o IMP. Finalmente, o leitor aprender?? a publi<br>
car uma p??gina Web com o resultado de uma tabela do banco de dados.
</p>" WHERE `id` = 7;

UPDATE `livro` set `descricao` = "
<p>Deseja aprender a linguagem Python sem pecorrer um longo caminho com ma<br>
nuais? Com o Use a Cabe??a! Python, voc?? enteder?? rapidamente os fundamentos<br>
trabalhando com estruturas de dados e fun????es predefinidas. Ent??o poder?? cons<br>
truir seu pr??prio aplicativo web explorando o gerenciamento do banco de da<br>
dos, tratamento de exce????es e administra????o dos dados. Se voc?? fica intrigado<br>
com o que pode fazer com os gerenciadores de texto, decoradores, compreen????o<br>
e gera dores, tudo estar?? aqui tamb??m. Esta segunda edi????o ?? uma experi??ncia<br>
de aprendizado completa que ajudar?? a se tornar um programador Python em pouco<br>
tempo.</p>
<p>Com base nas ultimas pesquisas de Ci??ncia Cognitiva e Teoria do Aprendizado,<br>
o livro Use a Cabe??a! Python usa um formato visualmente rico, para envolver sua<br>
mente, em vez da abordagem com muitos textos que o deixa com sono. Por que per<br>
der tempo lutando contra novos conceitos? Esta experi??ncia de aprendizado mul<br>
tissensorial ?? designada para o modo como seu c??rebro realmente funciona.</p>
" WHERE `id` = 2;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06  9:31:58
