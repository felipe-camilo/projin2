<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
    
  
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv='refresh' content='0; URL=consulta.jsp?pesquisar=Pesquisar&pesquisa='>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try {
	Connection conectar = null;
	Statement stmt = null;
	Statement stmt1 = null;
	ResultSet rs = null;
	String servidordb = "jdbc:mysql://localhost:3306/empregos";
	String user = "root";
	String pass = "root";
	 
    Class.forName("com.mysql.jdbc.Driver");
   	conectar = DriverManager.getConnection(servidordb,user,pass);
   	stmt = conectar.createStatement();
    stmt1 = conectar.createStatement();
   
 
    //String iv1 = request.getParameter("iv");
    String ds1 = request.getParameter("ds");
    String ro1 = request.getParameter("ro");
    String rd1 = request.getParameter("rd");
    String re1 = request.getParameter("re");
    String ab1 = request.getParameter("ab");
    String be1 = request.getParameter("be");
    String lt1 = request.getParameter("lt");
    
   /* out.print(iv1);out.print("<br>");
    out.print(ds1);out.print("<br>");
    out.print(ro1);out.print("<br>");
    out.print(rd1);out.print("<br>");
    out.print(re1);out.print("<br>");
    out.print(ab1);out.print("<br>");
    out.print(be1);out.print("<br>");
    out.print(lt1);out.print("<br>"); */
    
    //int id = Integer.parseInt(iv1);
    float re = Float.parseFloat(re1);
    
    //String sql = "INSERT INTO vagas (idvaga,descricao,req_obrigatorios,req_desejaveis,remuneracao,aberta,beneficios,local_trabalho) VALUES ";
    //sql = sql + "("+iv1+",'"+ds1+"','"+ro1+"','"+rd1+"',"+re1+",'"+ab1+"','"+be1+"','"+lt1+"')";
    
    String sql = "INSERT INTO vagas (descricao,req_obrigatorios,req_desejaveis,remuneracao,aberta,beneficios,local_trabalho) VALUES ";
    sql = sql + "('"+ds1+"','"+ro1+"','"+rd1+"',"+re1+",'"+ab1+"','"+be1+"','"+lt1+"')";
    
   int n = stmt1.executeUpdate(sql);
    
    //if(n>0){out.print("deu certo");}

}

catch(Exception e){
	e.printStackTrace();
	out.println("Erro" + e);
	
}

%>

</body>
</html>