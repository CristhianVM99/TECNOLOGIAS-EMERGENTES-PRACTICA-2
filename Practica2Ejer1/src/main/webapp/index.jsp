<%-- 
    Document   : index
    Created on : 28-mar-2022, 22:58:22
    Author     : USUARIO
--%>
<%--Crear una aplicación Web para detectar si un cliente ya estuvo en la pagina principal. En
caso de que sea la primera vez que le muestre un mensaje “Bienvenido a nuestro sitio Web
Web” en caso de que anteriormente hay visitado el sitio que muestre “Gracias por visitarnos
nuevamente”. Sugerencia utilizar cookies.--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            *{
                margin: 0;
                padding: 0;
                font-family: 'Poppins', sans-serif;
            }
            body
            {
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                background: linear-gradient(to right, #f12711, #f5af19);
            }
            button
            {
                padding: 20px 40px;
                border: none;
                background: linear-gradient(to right, #cac531, #f3f9a7);
            }
            button a
            {
                text-decoration: none;
                color: #f12711;
                font-size: 1.5rem;
                font-weight: bold;
            }
            button:hover
            {
                transition: 0.5s ease;
                padding: 20px 40px;
                border: none;
                background: linear-gradient(to right ,#f3f9a7,#cac531);
            }
        </style>
        
    </head>
    <body>
        <button><a href="OperacionServlet">Ingresar</a></button>
    </body>
    
</html>
