<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try {
	Connection conectar = null;
	Statement stmt = null;
	ResultSet rs = null;
	String servidordb = "jdbc:mysql://localhost:3306/empregos";
	String user = "root";
	String pass = "root";
	
    Class.forName("com.mysql.jdbc.Driver");
    conectar = DriverManager.getConnection(servidordb,user,pass);
    stmt = conectar.createStatement();
    rs = stmt.executeQuery("Select * from vagas");
    while(rs.next()){
    	
    	out.println(rs.getString("descricao"));
    	out.println(rs.getString("remuneracao"));
    	out.print("<br>");
   	
    	
    }
    
    
    
}

catch(Exception e){
	e.printStackTrace();
	out.println("ferrou z�!!!");
	
}

%>



</body>
</html>