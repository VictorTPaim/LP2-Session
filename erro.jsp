<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Define a página como uma página de erros. -->
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Apresentação do erro</h2>
	<%
		out.println("O erro foi: " + exception);
	%>
</body>
</html>