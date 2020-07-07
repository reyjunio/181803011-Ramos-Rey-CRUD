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
        <style>
            table, th, td {
                font-family: arial, sans-serif;
            }
        </style>
    </head>
    <body>
        <div class="container table-responsive" >
            <h1> Tabla Computadoras </h1>
            <table class="table table-striped table-bordered table-hover table-dark""> 
                <thead>
                    <tr class="bg-success">
                        <th># ID</th>
                        <th>Precio</th>
                        <th>Procesador</th>
                        <th>Ram</th>
                        <th>id_Marca</th>
                    </tr>
                </thead>
                <%while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("id_computadora")%></td>
                    <td><%out.println("$");%><%=rs.getString("precio")%></td>
                    <td><%=rs.getString("procesador")%></td>
                    <td><%=rs.getString("Ram")%></td>
                    <td><%=rs.getString("id_marca")%></td>
                </tr>
                <%}%>
            </table><br>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/computadoras", "root", "");
                    stmt = conexion.createStatement();
                    rs = stmt.executeQuery("SELECT * from marcas");
                } catch (Exception e) {
                    out.println("Error " + e);
                }
            %>
            <h1> Tabla Marcas Computadoras </h1>
            <table class="table table-striped table-bordered table-hover table-dark">
                <thead>
                    <tr>
                        <td colspan="2"><a class="btn btn-success btn-block" href="Agregar.jsp">Agregar</a></td>
                    </tr> 
                    <tr>
                        <td colspan="2"><a class="btn btn-info btn-block" href="Editar.jsp">Editar</a></td>
                    </tr> 
                    <tr>
                        <td colspan="2"><a class="btn btn-danger btn-block" href="Eliminar.jsp">Eliminar</a></td>
                    </tr> 
                    <tr class="table-active bg-danger">
                        <th># ID</th>
                        <th>Nombre</th>
                    </tr>
                </thead>
                <%while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString("id_marca")%></td>
                    <td><%=rs.getString("nombre")%></td>
                </tr>
                <%}%>
            </table><br>
        </div>
    </body>
</html>
