<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" session="true"%>
<%@ page import="br.edu.ifsp.fabrica.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Peças</title>
	<%		
		ArrayList<Peca> lista = (ArrayList<Peca>) session.getAttribute("lista");
		
		if( lista == null ){
			lista = new ArrayList<Peca>();
			session.setAttribute("lista", lista);
		}	
	%>
</head>
<body>
	<h1>Peças da fábrica</h1>	
	<%
		if( lista.size() > 0 ){			
	%>
	<table>
		<% for(int i =0; i<lista.size(); i++ ) { %>
		<tr>
			<% Peca peca = lista.get(i); %>
			<td><%=peca.toString() %></td>
			<td>| Valor de venda: <%=peca.calculaValor() %></td>
		</tr>
		<% } %>
	</table>	
	<% }else if(lista.size() == 0){ %>
	<h3>Lista Vazia</h3>
	<% } %>
	<br>
	<a href="motor.jsp">Cadastrar motor</a>
	<a href="parafuso.jsp">Cadastrar parafuso</a>
</body>
</html>