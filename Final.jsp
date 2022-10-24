<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//Instancia um novo objeto tipo LocalDate e recupera os dados do cliente. 
		LocalDate d1 = (LocalDate) session.getAttribute("data");
	
		out.print("<h1>Acessando os dados:</h1>");
		out.print("<h1>" + d1 + "</h1>");
	%>
</body>
</html>