<%-- 
    Document   : listaDeseoVista
    Created on : 24/11/2015, 07:33:13 PM
    Author     : gino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <c:forEach var="lista" items="${deseo}">
              <c:out value="cliente: ${lista.getCliente().getNombre()}" /><!DOCTYPE html>        
              <c:out value="producto: ${lista.getProducto().getNombre()}" /><!DOCTYPE html>        
         </c:forEach>        
      
        
    </body>
</html>
