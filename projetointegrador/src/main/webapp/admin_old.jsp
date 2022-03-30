<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Sacramento&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Lobster&family=Sacramento&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap')
	;
</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>La�os toda Linda</title>


<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	ref="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/flexslider.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.flexslider.js"></script>
</head>

<%
String nome = "";
String descricao = "";
int categoria = 0;
String img = "";
Float valor = 0.f;
String frase = "";
String action = "Enviar";
String pagina = "inserir.jsp";
int produto = 0;
String pesquisa = request.getParameter("pesquisa");
if (pesquisa != null) {
	//out.print(pesquisa);
	frase = "Editar Produto";
	action = "Editar";
	pagina = "editar.jsp";
	try {
		//Class.forName("com.mysql.jdbc.Driver");

		//String pesquisa = request.getParameter("pesquisa");

		Connection conectar;
		Statement stmt;
		ResultSet resultado;
		String servidordb = "jdbc:mysql://localhost:3306/databasepi";
		String user = "root";
		String pass = "root";

		produto = Integer.parseInt(pesquisa);
		//out.print(pesquisa);
		int id = 0;
		Class.forName("com.mysql.jdbc.Driver");

		conectar = DriverManager.getConnection(servidordb, user, pass);
		stmt = conectar.createStatement();
		String sql = "SELECT * FROM produto WHERE codigo =" + produto;
		resultado = stmt.executeQuery(sql);
		while (resultado.next()) {
	nome = resultado.getString("nome");
	descricao = resultado.getString("descricao");
	categoria = Integer.parseInt(resultado.getString("categoria"));
	valor = Float.parseFloat(resultado.getString("valor"));
	img = resultado.getString("img");
		}

	} catch (Exception e) {
		e.printStackTrace();
		out.println(e);
	}
} else {
	frase = "Cadastrar produto";
}
%>

<title>Admin</title>

<body>
	<div class="container">
		<header class="topo">
			<div class="row justify-content-md-center text-center">
				<div class="col-md-12">
					<div class="texto-logo">
						La�os toda Linda <img class="logo" src="img/laco.png">
					</div>
				</div>
			</div>
		</header>

		<!-- menu superior -->

		<section class="menu-superior">
			<div class="row justify-content-md-center text-center">
				<div class="col-md-2"></div>
				<div class="col-md-10">
					<ul class="nav nav-pills nav-justified nav-menu-superior">
						<li class="nav-item"><a class="nav-link texto-categoria"
							href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link texto-categoria"
							href="quem_somos.jsp">Quem somos</a></li>
						<li class="nav-item"><a class="nav-link texto-categoria"
							href="produtos.html">Produtos</a></li>
						<li class="nav-item"><a class="nav-link texto-categoria"
							href="contato.html">Contatos</a></li>
					</ul>
				</div>
			</div>
		</section>

		<section>
			<div class="row">
				<div class="col-md-12 text-align-center">
					<div class="col-md-2 menu-lateral">
						<ul class="menu-lateral-lista">
							<li class="menu-lateral-categoria">La�os</li>
							<li class="">Luxo</li>
							<li class="">Tem�tico</li>
							<li class="">Diversos</li>
							<li class="menu-lateral-categoria">Fantoches</li>
							<li class="">Luxo</li>
							<li class="">Tem�tico</li>
							<li class="">Diversos</li>
							<li class="menu-lateral-categoria">Arcos</li>
							<li class="">Luxo</li>
							<li class="">Tem�tico</li>
							<li class="">Diversos</li>
							<li class="menu-lateral-categoria">Diversos</li>
							<li class="">Luxo</li>
							<li class="">Tem�tico</li>
							<li class="">Diversos</li>
						</ul>
					</div>
<form action="consulta.jsp" method="get">
						<div class="form-row">
							<div class="col-4 menu-lateral-categoria">Pesquisar
								Produtos</div>
							<div class="col-6"></div>
							<div class="col-2"></div>
						</div>
						<div class="form-row">
							<div class="col-6">
								<input type="text" class="form-control"
									placeholder="ID ou em branco para todos" name="pesquisa">
							</div>
							<div class="col-2">
								<input class="form-control" type="submit" name="pesquisar"
									value="Pesquisar">
							</div>
						</div>
					</form>
					<br>
					<form action="excluir.jsp" method="get">
						<div class="form-row">
							<div class="col-4 menu-lateral-categoria">Excluir Produto</div>
							<div class="col-6"></div>
							<div class="col-2"></div>
						</div>
						<div class="form-row">
							<div class="col-6">
								<input type="number" class="form-control" placeholder="Id"
									name="pesquisa" placeholder="Entre com o ID:" required>
							</div>
							<div class="col-2">
								<input class="form-control" type="submit" name="Excluir"
									value="Excluir">
							</div>
						</div>
					</form>
					<br>

					<div class="col-4"></div>
					<div class="col-4 menu-lateral-categoria">
						<%
						out.print(frase);
						%>

					</div>
					<div class="col-4"></div>
					<form action="<%out.print(pagina);%>" method="get">
						<div class="form-row">
							<div class="col-6">
								<input type="text" class="form-control"
									placeholder="ID do produto"
									value="<%if (produto == 0) {
											out.print("");
										} else {
											out.print(produto);
										}%>"
									name="produto" readonly>
							</div>
							<div class="col-6">
								<input type="text" class="form-control" placeholder="Nome"
									name="nome" value="<%out.print(nome);%>">
							</div>
							<div class="col-6">
								<input type="text" class="form-control" placeholder="Descri��o"
									value="<%out.print(descricao);%>" name="descricao" required>
							</div>
							<div class="col-6">
								<input type="text" class="form-control" placeholder="Categoria"
									name="categoria" required value="<%out.print(categoria);%>">
							</div>
							<div class="col-6">
								<input type="text" class="form-control" placeholder="Imagem"
									value="<%out.print(img);%>" name="img">
							</div>
							<div class="col-6">
								<input type="text" class="form-control" placeholder="Valor"
									value="<%if (valor == 0) {
											out.print("");
										} else {
											out.print(valor);
										}%>"
									name="valor" required>
							</div>
							<div class="col-2">
								<input type="submit" class="form-control"
									value="<%out.print(action);%>" name="btn">
							</div>
							<div class="col-6"></div>
						</div>
					</form>
					

				</div>
			</div>
		</section>


	</div>
</body>
</html>





