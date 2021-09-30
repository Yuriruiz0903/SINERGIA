<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIENDA - Editar Usuario</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<h1>Editar Usuario</h1>
	<%
		int cedula = Integer.parseInt(request.getParameter("cedula"));
		Connection conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda", "root", "Valentina0903");
		PreparedStatement ps = conexion.prepareStatement("SELECT * FROM usuarios WHERE cedula_usuario ="+cedula);
		ResultSet result = ps.executeQuery();
		while(result.next()){
	%>
	<form action="" method = "post">
		<div>
			<label>Correo</label>
			<input type = "text" name = "correo" required value ="<%=result.getString("email_usuario") %>">
		</div>
		<div>
			<label>Nombre</label>
			<input type = "text" name = "nombre" value ="<%=result.getString("nombre_usuario") %>">
		</div>
		<div>
			<label>Contraseña</label>
			<input type = "text" name = "pass" value ="<%=result.getString("password") %>">
		</div>
		<div>
			<label>Usuario</label>
			<input type = "text" name = "usuario" value ="<%=result.getString("usuario") %>">
		</div>
		<div>
			<input type = "submit">
		</div>
	</form>
	<%
		}
		String correo = request.getParameter("correo");
		String nombre = request.getParameter("nombre");
		String pass = request.getParameter("pass");
		String usuario = request.getParameter("usuario");
		if(correo != null && nombre != null && pass != null && usuario != null){
			String sql = "UPDATE usuarios SET email_usuario ='"+correo+"' ,nombre_usuario ='"+nombre+"',password='"+pass+"',usuario='"+usuario+"' WHERE cedula_usuario ="+cedula;
			Statement st = conexion.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("usuarios.jsp");
		}
		
	%>
</body>