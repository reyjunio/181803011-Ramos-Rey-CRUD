<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar marca</title>
    </head>
    <body>
        <div class="container">
            <center><h1>Agregar Nueva Marca</h1></center>
            <form method="GET">
                <div class="form-row">
                    <div class="col">
                        <input type="text" value="" class="form-control" placeholder="Nombre" name="Marca" required/>
                    </div>
                    <div class="col">
                        <input type="submit" class="btn btn-success btn-block" value="enviar" />
                    </div>    
                </div>
            </form>          
        </div>        
    </body>
</html>
