
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html><head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="<c:url value='/resources/libs/jquery.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/libs/bootstrap.min.js' />"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="<c:url value='/resources/libs/estilos.css' />" rel="stylesheet" type="text/css">
    </head><body>
              
        
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <h2>Editar ${producto.getNombre()}</h2>
                    </div>                    
                </div>
                
                <div class="row">
                    <div class="col-md-6">
                        <form role="form" action="grabarProducto.htm" method="post">
                            <div class="form-group">
                                <label class="control-label" >Id</label>
                                <input class="form-control"  type="text" value="${producto.getIdProducto()}" name="txtId">
                            </div>
                            <div class="form-group">
                                <label class="control-label" >Nombre</label>
                                <input class="form-control" type="text" value="${producto.getNombre()}" name="txtNombre">
                            </div>
                            <div class="form-group">
                                <label class="control-label" >Precio</label>
                                <input class="form-control"  type="text" value="${producto.getPrecio()}" name="txtPrecio">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Stock</label>
                                <input class="form-control" type="text" value="${producto.getStock()}" name="txtStock">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Descripcion</label>
                                <textarea class="form-control" name="txtDescripcion">${producto.getDescripcion()}</textarea>
                            </div>
                            <button type="submit" class="btn btn-default btn-success">Grabar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </body></html>