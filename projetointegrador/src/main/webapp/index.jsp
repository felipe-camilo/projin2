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
		String descricao = "";
		String reqObrigatorio = "";
		String reqDesejavel = "";
		Float remuneracao = 0.f;
		String aberta = "";
		String beneficio = "";
		String local = "";
		String frase = "";
		String action = "Enviar";
		String pagina = "inserir.jsp";
		int vaga = 0;
		String pesquisa = request.getParameter("pesquisa");
		if (pesquisa != null) {
			//out.print(pesquisa);
			frase = "Editar Vaga";
			action = "Editar";
			pagina = "editar.jsp";
			try {
				//Class.forName("com.mysql.jdbc.Driver");

				//String pesquisa = request.getParameter("pesquisa");

				Connection conectar;
				Statement stmt;
				ResultSet resultado;
				String servidordb = "jdbc:mysql://localhost:3306/empregos";
				String user = "root";
				String pass = "root";

				vaga = Integer.parseInt(pesquisa);
				//out.print(pesquisa);
				int id = 0;
				Class.forName("com.mysql.jdbc.Driver");

				conectar = DriverManager.getConnection(servidordb, user, pass);
				stmt = conectar.createStatement();
				String sql = "SELECT * FROM vagas WHERE idvaga =" + vaga;
				//String sql = "SELECT * FROM vagas WHERE idvaga = ";
				resultado = stmt.executeQuery(sql);
				//out.print(sql);
				while (resultado.next()) {
			//out.println(resultado.getString("descricao"));
			descricao = resultado.getString("descricao");
			reqObrigatorio = resultado.getString("req_obrigatorios");
			reqDesejavel = resultado.getString("req_desejaveis");
			remuneracao = Float.parseFloat(resultado.getString("remuneracao"));
			aberta = resultado.getString("aberta");
			beneficio = resultado.getString("beneficios");
			local = resultado.getString("local_trabalho");

				}

			} catch (Exception e) {
				e.printStackTrace(); //exibe o erro	
				out.println(e);
			}
		} else {
			//out.print("Sem valor");
			frase = "Cadastrar Vaga";
		}
		%>

	<form action="consulta.jsp" method="get">
		<div class="form-row">
			<div class="col-4"><h1>Pesquisar Vagar</h1></div>
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
			<div class="col-4"><h1>Excluir Vagar</h1></div>
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
					<input type="text" class="form-control" placeholder="ID da vaga" value="<%if (vaga == 0) {out.print("");} else {out.print(vaga);}%>" name="iv" readonly>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Descrição"
						value="<%out.print(descricao);%>" name="ds" required>
				</div>
				<div class="col-6">
					<input type="text" class="form-control"
						placeholder="Requisitos obrigatórios" name="ro" required
						value="<%out.print(reqObrigatorio);%>">
				</div>
				<div class="col-6">
					<input type="text" class="form-control"
						placeholder="Requisitos desejáveis" name="rd"
						value="<%out.print(reqDesejavel);%>">
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Remuneração"
						value="<%if (remuneracao == 0) {out.print("");} else {out.print(remuneracao);}%>"name="re" required>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Aberta"
						value="<%out.print(aberta);%>" name="ab">
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Benefícios"
						value="<%out.print(beneficio);%>" name="be" required>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" placeholder="Local"
						value="<%out.print(local);%>" name="lt" required>
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