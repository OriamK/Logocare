
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="<c:url value='/resources/libs/jquery.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/libs/bootstrap.min.js' />"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="<c:url value='/resources/libs/estilos.css' />" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="section">
            <div class="container">
                <div class="row espacio">
                    <div class="col-md-12">
                        <form role="form" class="form-horizontal" action="articulosAdm.htm">
                            <div class="form-group">
                                <div class="col-sm-1">
                                    <label for="inputEmail3" class="control-label">Categorias</label>
                                </div>
                                <div class="col-sm-2">
                                    <select class="form-control" name="id">
                                        <c:forEach var="categoria" items="${categorias}"> 
                                            <option value="${categoria.getIdCategoria()}" <c:if test="${categoria.getIdCategoria() == id}">selected="true" </c:if>>${categoria.getNombre()}</option>                                
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-sm-offset-1 col-sm-2">
                                    <button type="submit" class="btn btn-default">Buscar</button>
                                </div>
                            </div>              
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-striped table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Precio</th>
                                    <th>Stock</th>
                                    <th>Descripcion</th>                                                                        
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="producto" items="${productos}">
                                <tr>
                                    <td>${producto.getIdProducto()}</td>
                                    <td>${producto.getNombre()}</td>
                                    <td>${producto.getPrecio()}</td>
                                    <td>${producto.getStock()}</td>
                                    <td>${producto.getDescripcion()}</td>
                                    <td><a href="editar.htm?id=${producto.getIdProducto()}" class="btn btn-primary">Editar</a></td>
                                </tr>                
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>


    </body></html>