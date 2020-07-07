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
        rs = stmt.executeQuery("SELECT * from computadora");
    } catch (Exception e) {
        out.println("Error " + e);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Computadoras</title>
    </head>
    <body>
        <div class="table-responsive">
            <table class="table table-striped table-condensed  table-hover"> 
                <h1 class="table-dark"><center>TIENDAPCGAMING.COM</center></h1>
                <thead>
                    <tr>
                        <th colspan="7" class="table-primary"><h1>Computadoras U.S.A</h1></th>
                        <td colspan="1" class="table-primary"><a href="Marcas.jsp"><h6>Ver Marcas</h6></a></td>
                    </tr>
                    <tr>
                        <td colspan="3"><a class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Registro</a></td>
                    </tr> 
                    <tr class="table-warning">
                        <th>#ID</th>
                        <th>Precio</th>
                        <th>Procesador</th>
                        <th>Ram</th>
                        <th>Marca</th>
                        <th colspan="4"><center>Operaciones</center></th>
                </tr>
                </thead>
                <%while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("id_computadora")%></td>
                    <td><%out.println("$");%><%=rs.getString("precio")%></td>
                    <td><%=rs.getString("procesador")%></td>
                    <td><%=rs.getString("Ram")%></td>
                    <td><%=rs.getString("id_marca")%></td>
                    <td><a class="btn btn-info btn-block" href="Editar.jsp">Editar Registro</a></td>
                    <td><a class="btn btn-danger btn-block" href="Editar.jsp">Eliminar</a></td>
                    <td><a class="btn btn-danger btn-block" href="Editar.jsp">EliminarV2</a></td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
