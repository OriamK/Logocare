<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="<c:url value='/resources/libs/jquery.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/libs/bootstrap.min.js' />"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="<c:url value='/resources/libs/estilos.css' />" rel="stylesheet" type="text/css">
    </head><body>
        <div class="section"></div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Ingresar</h3>
                            </div>
                            <div class="panel-body">
                              
                                <form:form method="post"  action ="IniciarSesion.htm" modelAttribute="cliente" class="form-horizontal" role="form">
                                    
                                    <div class="form-group">
                                        <div class="col-sm-10 col-sm-offset-1">
                                              <form:input path="correo" type="text" class="form-control" name="txtUsuario" placeholder="Usuario" /> 
                                        </div>
                                    </div>
                                     
                                    <div class="form-group">
                                        <div class="col-sm-10 col-sm-offset-1">
                                            <form:input path="contrasena" type="password" class="form-control" name="txtPassword" placeholder="Password" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-1 col-sm-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">Remember me</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-1 col-sm-10">
                                            <button type="submit" class="btn btn-block btn-info">Ingresar

                                            </button>
                                        </div>
                                    </div>

                                </form:form>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body></html>