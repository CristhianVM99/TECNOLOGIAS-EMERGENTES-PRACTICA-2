<%-- 
    Document   : index
    Created on : 29-mar-2022, 10:30:32
    Author     : USUARIO
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Tarea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("Tareas") == null)
    {
        ArrayList<Tarea> lisTareas = new ArrayList<Tarea>();
        session.setAttribute("Tareas", lisTareas);
    }
    ArrayList<Tarea> tareas = (ArrayList<Tarea>)session.getAttribute("Tareas");
%>

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
            body
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
                font-size: 1.5em;
            }
            a:hover 
            {
                color:#4a00e0;
            }
            table 
            {
                width: 500px;
                margin-top: 20px;
                color: #fff;
                border-collapse: collapse;
            }
            table th 
            {
                text-shadow:0px 0px 3px #000;
                color:#4a00e0;
                font-size: 2em;
                padding: 0 10px;
            }
            table td
            {
                text-align: center;
            }
            table td button 
            {
                background: #4a00e0;
                border: none;
                outline: none;
                padding: 5px 10px;
                box-shadow: 0px 0px 5px #000;
                margin: 5px 10px ;
            }
            table td button:hover
            {
                background: #8e2de2;
            }
            table td input
            {
                color: #4a00e0;
            }
            table td input[type="checkbox"]:checked {
                color: blue;
                background: red;
            }
            tr, td, th
            { 
                border: 2px solid #fff;
            }
        </style>
    <body>
        <div class="container">
                    <h1>Tareas Pendientes</h1>
        <a href="MainServlet?op=nuevo">Nuevo -></a>
        <table>
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th>Opciones</th>
            </tr>
            <%
                if(tareas !=null)
                {
                    for(Tarea T : tareas){
             
            %>
            <tr>
                <td><%=T.getId() %></td>
                <td><%=T.getDescripcion()%></td>
                <td><input type="checkbox"></td>
                <td><button><a href="MainServlet?op=eliminar&id=<%=T.getId()%>">Eliminar</a></button></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
