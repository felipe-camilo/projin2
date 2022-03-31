<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fotolista {
	max-height: 50px;
	height: 70%;
	width: auto;
}
</style>
<style>
        @import url('https://fonts.googleapis.com/css2?family=Sacramento&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Lobster&family=Sacramento&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap');
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La�os toda Linda</title>


<meta charset="ISO-8859-1">
<title>Produtos</title>
</head>
<body>
	<div class="container">
	
	<header class="topo">
            <div class="row justify-content-md-center text-center">
                <div class="col-md-12">
                    <div class="texto-logo">
                        La�os toda Linda
                        <img class="logo" src="img/laco.png">
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
                        <li class="nav-item">
                            <a class="nav-link texto-categoria" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link texto-categoria" href="quem_somos.jsp">Quem somos</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link texto-categoria" href="contato.jsp">Contatos</a>
                        </li>
                          <li class="nav-item">
                            <a class="nav-link texto-categoria" href="admin.jsp">Admin</a>
                        </li>
                    </ul>
                </div>

            </div>
        </section>

		<form action="excluir.jsp" method="get">
			<table border="0"></table>
			

			

			<%
		
			try {
								
				String pesquisa;
				pesquisa = request.getParameter("pesquisa");
				if( pesquisa == null || pesquisa.trim().length() == 0 ){
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
			    conectar = DriverManager.getConnection(servidordb,user,pass);
			    stmt = conectar.createStatement();	 
			    
			    
				if (pesquisa == "") {
					sql = "SELECT * FROM produto";
				}
				else {
					int idProduto = Integer.parseInt(pesquisa);
					sql = "SELECT * FROM produto WHERE codigo =" + idProduto;
				}
			    resultado = stmt.executeQuery(sql);
			    
				
			    out.print("<table class='table table-striped'>");
		    	out.print("<tr>");
		    	out.print("<th>");
		    	out.print("C�digo");
		    	out.print("</th>");  	
		    	out.print("<th>");
		    	out.print("Nome");
		    	out.print("</th>");
		    	out.print("<th>");
		    	out.print("descricao");
		    	out.print("</th>");
		    	out.print("<th>");
		    	out.print("categoria");
		    	out.print("</th>");
		    	out.print("<th>");
		    	out.print("img");
		    	out.print("</th>");
		    	out.print("<th>");
		    	out.print("valor");
		    	out.print("</th>");
		    	out.print("<th>");
		    	out.print("Editar");
		    	out.print("</th>");
		    	out.print("<th>");
		    	out.print("Deletar");
		    	out.print("</th>");
		    	out.print("</tr>");
			    
			    while(resultado.next()) {
			    	
			    	
			    	out.print("<tr>");
			    	out.print("<td>");
			    	out.print(resultado.getInt("codigo"));
			    	id = resultado.getInt("codigo");
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print(resultado.getString("nome"));
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print(resultado.getString("descricao"));
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print(resultado.getString("categoria"));
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print("<img class='fotolista' src='");
			    	out.print(resultado.getString("img"));
			    	out.print("'>");
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print(resultado.getString("valor"));
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print("<a href = 'admin.jsp?pesquisa="+id+"'><i class='fa fa-edit' style='font-size:25px;color:green'></i>");
			    	out.print("</td>");
			    	out.print("<td>");
			    	out.print("<a href = 'excluir.jsp?pesquisa="+id+"'><i class='fa fa-remove' style='font-size:25px;color:red'></i>");
			    	out.print("</td>");
			    	out.print("</tr>");
			    }
			    
		    	out.print("</table>");
			 			    
			}
			catch(Exception e) {
				e.printStackTrace();
				out.println("Erro code" + e);
			}
		%>
		</form>
	</div>
</body>
</html>