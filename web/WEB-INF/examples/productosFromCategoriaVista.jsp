<%-- 
    Document   : productosFromCateforiaVista
    Created on : 6/11/2015, 01:46:25 AM
    Author     : gino
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>UserList!</h1>
        <c:out value="producto de categoria: ${Categoria.getNombre()}" /><!DOCTYPE html>        
        </br>
        <c:forEach var="producto" items="${productosFromCategoria}">
        <tr>
            <td>
                <a href="producto.htm?idProducto=${producto.getIdProducto()}">${producto.getNombre()}</a>
                </br>
            </td>
        </tr>            |
        </c:forEach>                                                
      </body>
</html>

