<%-- 
    Document   : iniciarSesionVista
    Created on : 21/11/2015, 10:59:14 AM
    Author     : gino
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
    <h1>Ingrese su clave y contraseña</h1>        
    <form:form method="post"  action ="IniciarSesion.htm" modelAttribute="cliente">
        <p>  Correo             <form:input path="correo" /> </p>         
        <p>  Contraseña         <form:input path="contrasena" type="password" /> </p> 
        <input type="submit" value="Login"/>
    </form:form>    
</body>
</html>