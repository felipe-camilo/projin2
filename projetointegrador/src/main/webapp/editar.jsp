<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-15"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*" %>
    
  
<!DOCTYPE html>
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv='refresh' content='0; URL=consulta.jsp?pesquisar=Pesquisar&pesquisa='>
<title>Insert title here</title>
</head>
<body>
<%

try {

	Connection conectar = null;
	Statement stmt = null;
	Statement stmt1 = null;
	ResultSet rs = null;
	String servidordb = "jdbc:mysql://localhost:3306/databasepi?charSet=UTF-8";
	String user = "root";
	String pass = "root";
	 
    Class.forName("com.mysql.jdbc.Driver");
   	conectar = DriverManager.getConnection(servidordb,user,pass);
   	stmt = conectar.createStatement();
    stmt1 = conectar.createStatement();
   
    String produto = request.getParameter("produto");
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    String categoria = request.getParameter("categoria");
    String img = request.getParameter("img");
    if( img == null || img.trim().length() == 0 ){
    	img = "img/default.jpg";
	}
    
    float valor = Float.parseFloat(request.getParameter("valor"));
    int idProduto = Integer.parseInt(produto);

    String sql = "UPDATE produto SET nome = '" + nome + "', descricao = '"+descricao+"', categoria = '"+categoria+"', img = '"+img+"', valor = '"+valor+"' WHERE codigo="  + idProduto;

   int n = stmt1.executeUpdate(sql);

}

catch(Exception e){
	e.printStackTrace();
	out.println(e);
	
}

%>

</body>
</html>