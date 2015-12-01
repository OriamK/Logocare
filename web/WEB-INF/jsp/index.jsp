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
                        
           Cliente c = (Cliente)request.getSession().getAttribute("usuario");
            
        %>
        
    </head>
    <body>
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
                    
                    <% if(c==null) { %>
                    <a href="registrarUsuario.htm" class="btn navbar-btn navbar-right">Registrarse</a>
                    <%} else {%>
                    <a href="cerrarSesion.htm"   class="btn navbar-btn navbar-right">Cerrar Sesion</a>
                    <% }%>
                    
                    <% if(c==null) { %>
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
        <div class="relleno section text-center"><div class="background-image" style="background-image : url('<c:url value='/resources/imagenes/cover.jpg'/>')"></div>
            
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Bienvenidos <%= c != null ? c.getNombre() : " " %></h1>
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h1 class="text-center espacio">Categorias</h1>
                                    </div>
                                </div>
                                <c:set var="count" value="0" scope="page" />                                
                                
                                <c:forEach  var="categoria" items="${categorias}"> 
                                    
                                <c:choose>
                                    <c:when test="${count%3==0}">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <a href="productosCategoriaEnlace.htm?categoriaId=${categoria.getIdCategoria()}"><img src="<c:url value='/resources/imagenes/${categoria.getFoto()}'/>" class="img-responsive"></a>
                                                <h3>${categoria.getNombre()}</h3>
                                                <p>${categoria.getDescripcion()}</p>
                                            </div>                                        
                                    </c:when>                                           
                                    <c:when test="${count%3==1}">
                                            <div class="col-md-4">
                                                <a href="productosCategoriaEnlace.htm?categoriaId=${categoria.getIdCategoria()}"><img src="<c:url value='/resources/imagenes/${categoria.getFoto()}'/>" class="img-responsive"></a>
                                                <h3>${categoria.getNombre()}</h3>
                                                <p>${categoria.getDescripcion()}</p>
                                            </div>                                             
                                    </c:when>
                                     <c:when test="${count%3==2}">
                                            <div class="col-md-4">
                                                <a href="productosCategoriaEnlace.htm?categoriaId=${categoria.getIdCategoria()}"><img src="<c:url value='/resources/imagenes/${categoria.getFoto()}'/>" class="img-responsive"></a>
                                                <h3>${categoria.getNombre()}</h3>
                                                <p>${categoria.getDescripcion()}</p>
                                            </div>
                                        </div>                                           
                                    </c:when>
                                </c:choose>  
                                <c:set var="count" value="${count + 1}" scope="page"/>    
                                </c:forEach> 
                                <c:choose>
                                <c:when test="${count%3==1 || count%3==2}">                                    
                                       </div>                                                                             
                                </c:when>    
                                </c:choose>  
                                
                            </div>
                        </div>
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
