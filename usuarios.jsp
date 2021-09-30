<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIENDA - Usuarios</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
	<h1 align="center">Usuarios</h1>
	<a href="agregarUsuario.html">Agregar usuario</a>
	<%
	Connection conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "Valentina0903");
	PreparedStatement ps = conexion.prepareStatement("SELECT * FROM usuarios");
	ResultSet result = ps.executeQuery();
	%>
<table border="2" >
	<tr>
		<th>Cédula</th>
		<th>Correo</th>
		<th>Nombre</th>
		<th>Contraseña</th>
		<th>Usuario</th>
		<th colspan = 2>Acciones</th>
	</tr>
	<%	while(result.next()){	%>
	<tr>
		<td><%= result.getInt("cedula_usuario") %></td>
		<td><%= result.getString("email_usuario") %></td>
		<td><%= result.getString("nombre_usuario") %></td>
		<td><%= result.getString("password") %></td>
		<td><%= result.getString("usuario") %></td>
		<td><a href="editar.jsp?cedula=<%=result.getInt("cedula_usuario")%>">Editar</a></td>
		<td><a href="eliminar.jsp?cedula=<%=result.getInt("cedula_usuario")%>">Eliminar</a></td>
	</tr>
	<%} %>
</table>

</body>
</html>