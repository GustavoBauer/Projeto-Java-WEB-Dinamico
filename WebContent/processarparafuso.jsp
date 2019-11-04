<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8" session="true"%>
<%@ page import="br.edu.ifsp.fabrica.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Processar Parafuso</title>
</head>
<body>
	<%		
		String codigoString = request.getParameter("codigo");
		String nome =  request.getParameter("nome");
		String valorString = request.getParameter("valor");
		String comprimentoString =  request.getParameter("comprimento");
		String diametroString = request.getParameter("diametro");
			
		if( codigoString.isEmpty() || nome.isEmpty() || valorString.isEmpty() || comprimentoString.isEmpty() || diametroString.isEmpty()){
			
			response.sendRedirect("parafuso.jsp");
					
		} 
		else {
			Integer codigo =  Integer.parseInt(codigoString);
			Float valor = Float.parseFloat(valorString);
			Float comprimento = Float.parseFloat(comprimentoString);
			Float diametro = Float.parseFloat(diametroString);

			Peca p = new Parafuso(codigo, nome, valor, comprimento, diametro);
			
			ArrayList<Peca> lista = (ArrayList<Peca>) session.getAttribute("lista");
			
			lista.add(p);
			
			response.sendRedirect("index.jsp");
			
		}
	%>
</body>
</html>