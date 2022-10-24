<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!-- Define que caso aconteça algum erro, deve ser redirecionado para a página "erro.jsp", acumulando, assim, todos os erros nela. -->
<%@ page errorPage = "erro.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//Recupera as informações que o cliente passou via String.
		//Request é o objeto que permite acesso aos parâmetros das requisições enviadas pelo cliente.
		String dia = request.getParameter("dia");
		String mes = request.getParameter("mes");
		String ano = request.getParameter("ano");
		
		//Se dia, mês ou ano estiverem vazios, redireciona para a página "Data.jsp"
		if(dia.isBlank() || mes.isBlank() || ano.isBlank()) {
			//Response é o objeto de resposta que será enviado ao cliente.
			response.sendRedirect(request.getContextPath() + "/Data.jsp");
		}
		//Se não estiverem vazios, um objeto LocalDate é criado e as informações são passadas para a variável.
		else{
			//Transforma todas as strings em Int, pelo método parseInt
			LocalDate dataPassada = LocalDate.of(Integer.parseInt(ano), Integer.parseInt(mes), Integer.parseInt(dia));
			
			//No método "setAttribute" é necessário especificar o nome, neste caso: "data"
			session.setAttribute("data", dataPassada);
		}
	%>
	<!-- Link que redireciona o usuário para a página final -->
	<a href="Final.jsp">Página Final</a>
</body>
</html>