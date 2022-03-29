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


<title>Insert title here</title>
</head>
<body>
	<div class="container">

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

			}
			catch (Exception e) {
				e.printStackTrace();
				out.println(e);
			}
		} else {
			frase = "Cadastrar produto";
		}
		%>

	<form action="consulta.jsp" method="get">
		<div class="form-row">
			<div class="col-4"><h1>Pesquisar Produtos</h1></div>
			<div class="col-6"></div>
			<div class="col-2"></div>
		</div>
		<div class="form-row">
			<div class="col-6"><input type="text" class="form-control"	placeholder="ID ou em branco para todos" name="pesquisa"></div>
			<div class="col-2"><input class="form-control" type="submit" name="pesquisar"value="Pesquisar"></div>
		</div>
	</form>
	<br>
	<form action="excluir.jsp" method="get">
		<div class="form-row">
			<div class="col-4"><h1>Excluir Produto</h1></div>
			<div class="col-6"></div>
			<div class="col-2"></div>
		</div>
		<div class="form-row">
			<div class="col-6"><input type="number" class="form-control" placeholder="Id" name="pesquisa" placeholder="Entre com o ID:" required></div>
			<div class="col-2"><input class="form-control" type="submit" name="Excluir"value="Excluir"></div>
		</div>
	</form>
		<br>

		<div class="col-4"></div>
		<div class="col-4">
			<h1>
				<%
				out.print(frase);
				%>
			</h1>
		</div>
		<div class="col-4"></div>
		<form action="<%out.print(pagina);%>" method="get">
			<div class="form-row">
				<div class="col-6">
					<input type="text" class="form-control" placeholder="ID do produto" value="<%if (produto == 0) {out.print("");} else {out.print(produto);}%>" name="produto" readonly>
				</div>
				<div class="col-6">
					<input type="text" class="form-control"
						placeholder="Nome" name="nome"
						value="<%out.print(nome);%>">
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Descri��o"
						value="<%out.print(descricao);%>" name="descricao" required>
				</div>
				<div class="col-6">
					<input type="text" class="form-control"
						placeholder="Categoria" name="categoria" required
						value="<%out.print(categoria);%>">
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Imagem"
						value="<%out.print(img);%>" name="img">
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Valor"
						value="<%if (valor == 0) {out.print("");} else {out.print(valor);}%>"name="valor" required>
				</div>
				<div class="col-2">
					<input type="submit" class="form-control"
						value="<%out.print(action);%>" name="btn">
				</div>
				<div class="col-6"></div>
			</div>
		</form>
	</div>
</body>
</html>