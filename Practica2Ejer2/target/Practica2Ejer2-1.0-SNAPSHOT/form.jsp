<%-- 
    Document   : form
    Created on : 29-mar-2022, 10:39:39
    Author     : USUARIO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            *
            {
                margin: 0;
                padding: 0;
                font-family: 'Poppins', sans-serif;
            }
            .container
            {
                width: 100%;
                height: 100vh;
                background: linear-gradient(to right, #8e2de2, #4a00e0);
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            h1 
            {
                width: 100%;
                text-align: center;
                padding: 30px 0;
                color: #4a00e0;
                text-shadow:0px 0px 10px #000;
                font-size: 3em;
            }
            a 
            {
                text-decoration: none;
                color: #fff;
                font-size: 1.2em;
            }
            
            table 
            {
                width: 500px;
                margin-top: 20px;
                color: #8e2de2;
                font-size: 2em;
                text-shadow:0px 0px 5px #4a00e0;
            }
            table input 
            {
                border: none;
                outline: none;
                background: rgba(0,0,0,.2);
                padding: 5px 10px;
                color: #fff;
                border-radius: 20px;
            }
            table input::placeholder 
            {
                color: rgba(255,255,255,.5);
            }
            button
            {
                background:#8e2de2;
                margin-top: 30px;
                padding: 7px 14px;
                color:#fff;
                border: none;
                box-shadow: 0px 2px 5px #000; 
            }
            button:hover 
            {
                background: #4a00e0;
            }
        </style>
    </head>
    <body>
        <div class="container">
                  <h1>Ingrese una Nueva Actividad</h1>
        <form action="MainServlet" method="POST">
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" placeholder="Ingrese un ID" name="id"></td>
            </tr>
            <tr>
                <td>Tarea</td>
                <td><input type="text" placeholder="Ingrese la Descripcion" name="descripcion"></td>
            </tr>    
        </table>
            <button type="submit">
                Registrar La Tarea
            </button>
        </form>
        <a href="index.jsp"><- Volver</a>
        </div>
    </body>
</html>
