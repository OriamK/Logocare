<%@page import="com.model.pojo.Cliente"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="<c:url value='/resources/libs/jquery.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/libs/bootstrap.min.js' />"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="<c:url value='/resources/libs/estilos.css' />" rel="stylesheet" type="text/css">

        <%

            Cliente c = (Cliente) request.getSession().getAttribute("usuario");

        %>
    </head><body>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="inicio.htm"><span>Logocare</span></a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-ex-collapse">

                    <% if (c == null) { %>
                    <a href="registrarUsuario.htm" class="btn navbar-btn navbar-right">Registrarse</a>
                    <%} else {%>
                    <a href="cerrarSesion.htm"   class="btn navbar-btn navbar-right">Cerrar Sesion</a>
                    <% }%>

                    <% if (c == null) { %>
                    <a href="IniciarSesion.htm"   class="btn navbar-btn navbar-right">Iniciar Sesion</a>
                    <%} else {%>
                    <p class="navbar-text navbar-right"><i class="fa fa-fw fa-user"></i> Bienvenido  <a href="listaDeseo.htm"><%=c.getNombre()%></a></p>
                        <%}%>

                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Buscar">
                        </div>

                        <button type="submit" class="btn btn-link">
                            <i class="fa fa-fw fa-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 espacio">
                        <img src="<c:url value='/resources/imagenes/${producto.getFoto()}'/>" class="img-responsive">
                    </div>
                    <div class="col-md-6">
                        <row>
                            <div class="col-md-12 espacio">
                                <h1>${producto.getNombre()}</h1>
                                <h3>S/. ${producto.getPrecio()} </h3>
                                <p>Descripcion :<br/>${producto.getDescripcion()}</p>
                            </div>
                            <div class="col-md-12">
                                <c:choose>
                                    <c:when test="${usuario!=null}">                                        
                                        <form action="anadirListaDeseo.htm" method="get">
                                            <input type="hidden" name="producto" value="${producto.getIdProducto()}">
                                            <button type="submit" name="your_name" value="your_value" class="btn btn-lg btn-primary">Añardir a Lista de Deseos1</button>
                                        </form>                                        
                                    </c:when>
                                    <c:when test="${usuario==null}">
                                        <a href="IniciarSesion.htm" class="btn btn-lg btn-primary">Añardir a Lista de Deseos</a>
                                    </c:when>

                                </c:choose>


                            </div>
                        </row>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <img src="..\imagenes\categoria1.jpg" class="img-responsive">
                    </div>
                    <div class="col-md-2">
                        <img src="..\imagenes\categoria1.jpg" class="img-responsive">
                    </div>
                    <div class="col-md-2">
                        <img src="..\imagenes\categoria1.jpg" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
        <footer class="section section-primary">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Footer header</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="text-info text-right">
                            <br>
                            <br>
                        </p>
                        <div class="row">
                            <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 hidden-xs text-right">
                                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


    </body></html>