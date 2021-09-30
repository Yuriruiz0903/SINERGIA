<%@page import="co.edu.mintic.Calculos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRIMER JSP</title>
<style type="text/css">
body {background-color:lightgreen;}
H1{color:blue}
span {color:red;}
</style>

</head>
<body>
<h1>
PRIMER JSP
</h1>
la fecha del sistema es:<span><%=new java.util.Date() %></span> <br>
Convertir a mayusculas: <%= new String("Camilo").toUpperCase() %><br>
La suma de 5 y 7 es: <%= 5+7 %><br>
10 es mayor que 100: <%= 10 < 100 %><br>
<%
        for (int i = 0; i<10; i++){
            out.println("<br>Este es el mensaje "+i);
        }
    
    %>
<br>    
<%!
        private int resultado;
        
        public int metodoSuma(int num1, int num2){
            resultado = num1+num2;
            return resultado;
        }
        
   
    
    %>
<br>
    <%= metodoSuma(7,5) %>
    
 la resta de  8 y 3 es: <%=Calculos.metodoresta(8,3) %>
 
</body>
</html>