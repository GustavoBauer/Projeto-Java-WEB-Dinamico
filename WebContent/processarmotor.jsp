<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8" session="true"%>
<%@ page import="br.edu.ifsp.fabrica.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Processar Motor</title>
</head>
<body>
	<%		
		String codigoString = request.getParameter("codigo");
		String nome =  request.getParameter("nome");
		String valorString = request.getParameter("valor");
		String potenciaString =  request.getParameter("potencia");
		String correnteString = request.getParameter("corrente");
		String rpmString =  request.getParameter("rpm");
			
		if( codigoString.isEmpty() || nome.isEmpty() || valorString.isEmpty() || potenciaString.isEmpty() || correnteString.isEmpty() || rpmString.isEmpty() ){
			
			response.sendRedirect("motor.jsp");
					
		} 
		else {
			Integer codigo =  Integer.parseInt(codigoString);
			Float valor = Float.parseFloat(valorString);
			Float potencia = Float.parseFloat(potenciaString);
			Float corrente = Float.parseFloat(correnteString);
			Integer rpm = Integer.parseInt(rpmString);

			Peca p = new Motor(codigo, nome, valor, potencia, corrente, rpm);
			
			ArrayList<Peca> lista = (ArrayList<Peca>) session.getAttribute("lista");
			
			lista.add(p);
			
			response.sendRedirect("index.jsp");
			
		}
	%>
</body>
</html>