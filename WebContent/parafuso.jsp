<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Parafusos</title>
</head>
<body>
	<h1>Cadastro de parafusos</h1>	
	<form action="processarparafuso.jsp" method="post">
		<table>
			<tr>
				<td>Código</td>
				<td><input type="text" name="codigo" size="30" /></td>
			</tr>
			<tr>
				<td>Nome</td>
				<td><input type="text" name="nome" size="30" /></td>
			</tr>
			<tr>
				<td>Valor</td>
				<td><input type="text" name="valor" size="30" /></td>
			</tr>
			<tr>
				<td>Comprimento</td>
				<td><input type="text" name="comprimento" size="30" /></td>
			</tr>
			<tr>
				<td>Diâmetro</td>
				<td><input type="text" name="diametro" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="ENVIAR" />
					<a href="index.jsp">Retornar - Página principal</a>
				</td>						
			</tr>
		</table>
	</form>
</body>
</html>