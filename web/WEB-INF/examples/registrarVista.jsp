<%-- 
    Document   : registrarVista
    Created on : 20/11/2015, 06:21:53 PM
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
    <h1>Ingrese sus datos por favor..</h1>        
    <form:form method="post"  action ="registrarUsuario.htm" modelAttribute="cliente">
        <p>  Nombre             <form:input path="nombre" />  </p> 
        <p>  Apellido Paterno   <form:input path="apePat" /> </p> 
        <p>  Apellido Materno   <form:input path="apeMat" /> </p>              
        <p>  Correo             <form:input path="correo" /> </p> 
        <p>  Sexo(M v F)        <form:input path="sexo" /> </p> 
        <p>  Contraseña         <form:input path="contrasena" type="password" /> </p> 
        <input type="submit" value="Registrar"/>
    </form:form>    
</body>
</html>


