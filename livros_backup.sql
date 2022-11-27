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
Holmes é capaz de, à vista de um simples cartão de visita,<br>
pela dedução, traçar o perfil de seu dono, fornecendo dados<br>
que trazem surpresa e admiração</p>
<p>O cão dos Baskervilles, escrito em 1902, é uma das obras pri<br>
mas de Conan Doyle conta a história de uma animal fantasma<br>
górico, que apartir dos pântanos que cercam a prisão de Dart<br>
moor, espalhar medo aterrador a todos que se aproximam do lo<br>
cal. Como romance policila a obra é considerada uma das mais</p>
perfeitas do gênero.</p>" WHERE `id` = 4;

UPDATE `livro` set `descricao` = "
<p>O Romancista Sir Arthur Conan Doyle, fortemente influen<br>
ciado por Edgar Allan Poe e Émile Gaboriau, criou, em 1887,<br>
o mais conhecido personagem dos romances do gênero policial<br>
- O detetive Sherlock Holmes.</p>
<p>Eminentemente cerebral, Holmes era capaz de, pela sua dedu<br>
ção, à vista de um simples cartão de visita, traçar o perfil<br>
do seu portador.</p>
<AS aventuras de Sherlock Holmes(1892) é uma das mais celebres<br>
obras de Doyle. São nove histórias, onde o autor narra as mais<br>
eletrizantes aventuras do detetive inglês.</p>
" WHERE `id` = 1;

UPDATE `livro` set `descricao` = "
<p>Um mini dicionário de espanho com:<br>
<ul>
<li>Elementos gramaticais básicos da lingua espanhola;</li>
<li>Falsos cognatos, palavras com sons parecidos com<br>
o portugês, mas com significados diferentes;
</li>
<li>Variantes entre o espanhol penisular e o espanhol<br>
na América, com destaque para as variações argentinas<br>
uruguaias, chilenas, e paraguaias;
</li>
<li>Mais de 27 mil verbetes</li>
</ul>
</p>
" WHERE `id` = 3;

UPDATE `livro` set `descricao` = "
<p>Os pentesters simulam ciberataques para descobrir vulnera<br>
bilidades de segurança em redes, em sistemas operacionais e<br>
em aplicações. Os especialistas em segurança da informação<br>
no mundo todo utilizam técnicas de testes de invasão para<br>
avaliar as defezas de uma empresa.</P>
<p>Em teste de invasão, a especialista em segurança, pesquisa<br>
dora e instrutora Georgia Weidman apresenta as principais ha<br>
bilidades e técnicas necessárias a todo pentester. Ao usar<br>
um laboratório baseado em máquinas virtuais que inclui o Kali<br>
Linux e sistemas operacionais vulneráveis, você verá uma série<br>
de lições práticas usando ferramentas como Wireshark, o Nmap<br>
e o Burp Suite. Á medida que acompanhar as lições usando o la<br>
boratório e realizando ataques, você vivenciará as fases fun<br>
damentais de uma avaliação de verdade - que incluem a coleta<br>
de informações, a descoberta de vulnerabilidades passivéis de<br>
esploração, a obtenção de acesso aos sistemas, a pós-exploração<br>
de falhas, além de outras atividades.</P>
" WHERE `id` = 9;

UPDATE `livro` set `descricao` = "
<p>O cotidiano miserável de uma habitação coletiva em fins do século<br>
19, apresentado com uma objetividade implacável, é o centro da trama<br>
de O Cortiço, Obra máxima de Aluízio de Azevedo, este romance repre<br>
senta a maturidade de um escritor preocupado em registrar e analisar<br>
à luz da ciência as mazelas da sociedade brasileira.</p>
<p>Mais do que um tema, é um enfoque crítico e analítico de Aluízio<br>
de Azevedo(1857 - 1913) que garante a atualidade de O Cortiço. A preo<br>
cupação social é um traço marcante da obra do autor, que buscava, com<br>
aguda capacidade de observação copreender cientificamente os elementos<br>
determinantes da realidade do Brasil. Para sobreviver, Aluízio de Azeve<br>
do também escreveu romances ao gosto do público da época. Foi ainda cari<br>
caturista de jornais em 1895, abandonou a literatura e ingressou na car<br>
reira diplomática.</p>
" WHERE `id` = 6;

UPDATE `livro` set `descricao` = "
<p>O Shell é um interpletador de comando que tem uma poderosa linguagem<br>
de alto nível, permitindo a criação de tomada de decisões(if, then,<br>
else...), laços ou lupes(for ou while), assim como o armazenamento<br>
de valores em variáveis e permissões para executar inumeros progra<br>
mas.</p>
<p>Com o livro Shell Linux - Do Aprendiz ao Administrador você irá<br>
aprender como utilizar as ferramentas e recursos do Shell. Entre os<br>
tópicos abordados estão: introdução sobre a parte física do computa<br>
dor, o ambiente Linux, como acessar o Shell, a interface do Shell, o<br>
que são diretórios, a estrutura de diretórios, os principais coman<br>
dos atalhos de teclado, gerenciamento de arquivos e diretórios, como<br>
obter informações para usuários, como ler informações do hardware,<br>
como desligar e reiniciar a maquina, processos, redirecionamentos,<br>
variáveis, usuaŕios, grupos e permissões, delimitadores, aplicati<br>
vos para o dia a dia, monitoramento do sistema, manipulação de pa<br>
cotes, manipulação de testo de forma não interativa, Shell Script<br>
comandos condicionais, interação com Shell Script, executando Shell<br>
Script automaticamente no boot, os recursos de Shell Script na inter<br>
face gráfica, gerenciadores de arquivos(Dolphin e Nautilus), editores<br>
de texto(Kate e Gedit), utilizando Shell no seu smartphone ou tablet<br>
Android, as caracte de um sistema operacional Linux, A licença GPL,<br>
o projeto GNU, software livre, GNU/Linux, projetos complementares, pa<br>
drões abertos e interoperabilidade, software legado, entre outros.</p>
<p>No final de cada capítulo são apresentados exercícios que visam fi<br>
xar o aprendizado dos tópicos abordados.</p>" WHERE `id` = 8;

UPDATE `livro` set `descricao` = "
<p><ul>
<li>Um alto QI não é garantia de sucesso;</li>
<li>A emoção pode dar a verdadeira mediada da inteligência humana;</li>
<li>A ausência de habilidade emocional pode ser o verdadeiro motivo<br>
de tantos casamentos desfeitos;</li>
<li>No mundo empresarial, o QI(Coeficiênte de Inteligência) alto<br>
consegue um bom emprego. O QE(Coeficiente Emocional) alto garante<br>
promoções.</li>
</ul></P>
<p>Em Inteligência Emocional, o psicólogo Daniel Goleman examina<br>
estas questões polêmicas, por meio de instigante viagem pelos la<br>
birintos da mente humana. Aliando o rigor do cientista à expe<br>
riência humana do psicólogo, Goleman traduz as mais recentes<br>
descobertas neurológicas para o público leigo. E é esta base<br>
científica que apoiará suas teses reveladoras.</p>
<p>Inteligência Emocional é uma obra brilhante que apresenta<br>
revelações supreendentes para todos que ainda acrreditam na di<br>
tadura da razão. Grande sucesso nos Estados Unidos, este livro<br>
tem orientados novas propostas pedagógicas, bem como servido de<br>
base no processo de seleção de empregados de grandes empresas ame<br>
ricanas.</p>
<p>Inteligência Emocional trata das grandes questões da mente huma<br>
na com argúcia e profundidade. É obra indispensável a todos que<br>
desejam aproveitar melhor suas potencialidades.</p>
" WHERE `id` = 5;

UPDATE `livro` set `descricao` = "
<p>O objetivo deste livro é apresentar ao desenvolvedor de sistemas<br>
o mundo da programação do banco de dados Oracle. Em seus 27 capítulos,<br>
o livro mostra de maneira simples e objetiva os principais recursos de<br>
programa. Após um capítulo de introdução que oferece uma visão geral do<br>
banco de dados com sua estrutura e características, tem se uma descrição<br>
detalhada de componentes como o dicionário de dados, tablespaces e princi<br>
pais objetos importantes para o desenvolvimento de aplicações. Em seguida<br>
o leitor aprenderá a usar a SQL*PLUS, a interface interativa para acesso ao<br>
banco de dados, e terá uma introdução à liguagem SQL, essencial para o traba<br>
lho com o banco de dados.</p>
<p>Gradativamente, e de forma modular, o livro mostrará como criar tabelas,<br>
índices, integridade referencial entre tabelas, visões, sequencias etc. Depois<br>
de aprender a criar objetos de banco de dados, o leitor conhecerá a programação<br>
PL/SQL usada para criar stored procedures, triggers, e packages, e verá também<br>
os conceitos de transações, replicações e o uso de banco de dados distribuído<br>
O livro também explica o funcionamento dos principais utilitários do banco de<br>
dados como, o SQL*Loader, o EXP e o IMP. Finalmente, o leitor aprenderá a publi<br>
car uma página Web com o resultado de uma tabela do banco de dados.
</p>" WHERE `id` = 7;

UPDATE `livro` set `descricao` = "
<p>Deseja aprender a linguagem Python sem pecorrer um longo caminho com ma<br>
nuais? Com o Use a Cabeça! Python, você entederá rapidamente os fundamentos<br>
trabalhando com estruturas de dados e funções predefinidas. Então poderá cons<br>
truir seu próprio aplicativo web explorando o gerenciamento do banco de da<br>
dos, tratamento de exceções e administração dos dados. Se você fica intrigado<br>
com o que pode fazer com os gerenciadores de texto, decoradores, compreenção<br>
e gera dores, tudo estará aqui também. Esta segunda edição é uma experiência<br>
de aprendizado completa que ajudará a se tornar um programador Python em pouco<br>
tempo.</p>
<p>Com base nas ultimas pesquisas de Ciência Cognitiva e Teoria do Aprendizado,<br>
o livro Use a Cabeça! Python usa um formato visualmente rico, para envolver sua<br>
mente, em vez da abordagem com muitos textos que o deixa com sono. Por que per<br>
der tempo lutando contra novos conceitos? Esta experiência de aprendizado mul<br>
tissensorial é designada para o modo como seu cérebro realmente funciona.</p>
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
