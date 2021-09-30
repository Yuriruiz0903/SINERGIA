<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIENDA - Eliminar Usuario</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<h1>Eliminar Usuario</h1>
<%
		int cedula = Integer.parseInt(request.getParameter("cedula"));
		Connection conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "12345678");
		PreparedStatement ps = conexion.prepareStatement("DELETE FROM usuarios WHERE cedula_usuario ="+cedula);
		ps.executeUpdate();
		response.sendRedirect("usuarios.jsp");
	%>
</body>
</html>