
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/computadoras", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("SELECT * from marcas");
    } catch (Exception e) {
        out.println("Error " + e);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class=" table-responsive" >
            <h1 class="table-dark"><center>Marcas De Computadoras</center></h1>
            
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <td colspan="3"><a class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Registro</a></td>
                    </tr>
                    <tr class="table-active bg-info">
                        <th># ID</th>
                        <th>Nombre</th>
                        <th colspan="3"><center>Operaciones</center></th>
                    </tr>
                </thead>
                <%while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("id_marca")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><a class="btn btn-danger btn-block" href="Editar.jsp">Eliminar</a></td>
                </tr>
                <%}%>
            </table><br>
        </div>
    </body>
</html>
