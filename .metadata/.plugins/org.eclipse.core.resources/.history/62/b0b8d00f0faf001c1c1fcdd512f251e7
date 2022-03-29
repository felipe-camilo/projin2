<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.Vagas" %>
<%
String dc = request.getParameter("descricao");
String ro = request.getParameter("rob");
String rd = request.getParameter("rde");
String rex = request.getParameter("rem");
// converte string valor para float
String vx = rex;
vx = vx.replace(".","");
vx = vx.replace(",",".");
float vr = Float.parseFloat(vx);
String be = request.getParameter("ben");
String lt = request.getParameter("ltr");
//instância da classe Vagas - objeto "v"
Vagas v = new Vagas();
v.setDescricao_cc(dc);
v.setReq_obrigatorios_cc(ro);
v.setReq_desejaveis_cc(rd);
v.setRemuneracao_cc(vr);
v.setBeneficios_cc(be);
v.setLocal_trabalho_cc(lt);
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Controle de Vagas de Emprego</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
<div>Sistema de Controle de Vagas de Emprego</div> <br>
<div>    
<table>
<tr><td>Descrição</td><td style="color:blue"><%=v.getDescricao_cc()%></td></tr>
<tr><td>Requisitos Obrigatórios</td><td style="color:blue"><%=v.getReq_obrigatorios_cc()%></td></tr>
<tr><td>Requisitos Desejáveis</td><td style="color:blue"><%=v.getReq_desejaveis_cc()%></td></tr>
<tr><td>Remuneração</td><td style="color:blue"><%=rex%></td></tr>
<tr><td>Benefício</td><td style="color:blue"><%=v.getBeneficios_cc()%></td></tr>
<tr><td>Local de Trabalho</td><td style="color:blue"><%=v.getLocal_trabalho_cc()%></td></tr>
</table>
</div><br>
<div>
<form action="index.jsp" method="get">
	<input type="submit" value="Voltar">
</form>
</div>
</body>
</html>