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
    
    <div class="section">
      <div class="container-fluid text-left">
        <div class="row">
          <div class="col-md-4 col-md-offset-2">
            <h1 class="text-primary">Registrarse</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <form:form method="post"  action ="registrarUsuario.htm" modelAttribute="cliente" role="form"  >
              <div class="form-group">
                <label class="control-label">Nombres</label>
                <form:input path="nombre" class="form-control" name="txtNombres" type="text"/>
              </div>
              <div class="form-group">
                <label class="control-label">Apellido Paterno</label>
                <form:input path="apePat" class="form-control" name="txtNombres" type="text"/>
              </div>
              <div class="form-group">
                <label class="control-label">Apellido Materno</label>
                <form:input path="apeMat" class="form-control" name="txtApellidos" type="text"/>
              </div>
              <div class="form-group">
                <label class="control-label">Sexo</label>
                <form:select path="sexo" class="form-control" name="txtSexo" >
                    <form:option value="M" label="Masculino"/>
                    <form:option value="F" label="Femenino"/>                                            
                </form:select>                                
              </div>
              <div class="form-group has-feedback">
                <label class="control-label" for="exampleInputEmail1">Correo</label>
                <form:input path="correo" class="form-control" name="txtCorreo" type="email"/>
              </div>
              <div class="form-group has-feedback">
                <label class="control-label" for="exampleInputEmail1">Contraseña</label>
                <form:input path="contrasena" class="form-control" name="txtCorreo" type="password"/>
              </div>
              <button type="submit" class="btn btn-block btn-primary">Registrarse</button>
            </form:form> 
          </div>
        </div>
      </div>
    </div>
  </body></html>