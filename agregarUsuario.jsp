<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIENDA - Agregar Usuario</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<h1>Agregar Usuario</h1>

	<%
		String cedula = request.getParameter("cedula");	
		String correo = request.getParameter("correo");
		String nombre = request.getParameter("nombre");
		String pass = request.getParameter("pass");
		String usuario = request.getParameter("usuario");
		
		Connection conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "12345678");
		Statement st=conexion.createStatement();
		String sql ="INSERT INTO usuarios (cedula_usuario,email_usuario,nombre_usuario,password,usuario) VALUES ('"+cedula+"','"+correo+"','"+nombre+"','"+pass+"','"+usuario+"')";
		st.executeUpdate(sql);
		response.sendRedirect("usuarios.jsp");
	%>


</body>
</html>