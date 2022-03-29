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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Produtos</title>
</head>
<body>
	<div class="container">
		<h1>Rela��o de produtos</h1>
		<a href="index.jsp">Voltar</a>

		<div class="card-columns">

			<form action="excluir.jsp" method="get">

				<%
			try {

				String pesquisa;
				pesquisa = request.getParameter("pesquisa");
				if (pesquisa == null || pesquisa.trim().length() == 0) {
					pesquisa = "";
				}

				Connection conectar;
				Statement stmt;
				ResultSet resultado;
				String servidordb = "jdbc:mysql://localhost:3306/databasepi";
				String user = "root";
				String pass = "root";

				int id = 0;
				Class.forName("com.mysql.jdbc.Driver");
				String sql = "";
				conectar = DriverManager.getConnection(servidordb, user, pass);
				stmt = conectar.createStatement();

				if (pesquisa == "") {
					sql = "SELECT * FROM produto";
				} else {
					int idProduto = Integer.parseInt(pesquisa);
					sql = "SELECT * FROM produto WHERE codigo =" + idProduto;
				}

				resultado = stmt.executeQuery(sql);

							

				while (resultado.next()) {
						out.print("<div class='card'>");
						out.print("<img class='card-img-top' src='img_avatar1.png' alt='Card image'>");
						out.print("<div class='card-body'>");
						out.print("<h4 class='card-title'>");
						out.print(resultado.getString("nome")); 
						out.print("</h4>");
						out.print("<p class='card-text'>");
						out.print(resultado.getString("descricao"));
						out.print("</p>");
						//<a href="#" class="btn btn-primary">See Profile</a>
					    out.print("</div>");
						out.print("</div>");
					
				}


			} catch (Exception e) {
				e.printStackTrace();
				out.println("Erro code" + e);
			}
			%>
			</form>
		</div>
</body>
</html>