<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>primerJSP</title>
</head>
<body>
	peticion datos del navegador <%= request.getHeader ("User.Agent") %><br>
	peticion de idioma utilizado <%= request.getLocale() %>

</body>
</html>