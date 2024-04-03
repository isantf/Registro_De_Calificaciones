<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<% 
    if (session.getAttribute("listaest") == null){
    ArrayList<Estudiante> lisaux = new ArrayList<Estudiante>();
    session.setAttribute("listaest", lisaux);
    }
    ArrayList<Estudiante> lista = (ArrayList<Estudiante>) session.getAttribute("listaest");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .cuadro-azul {
            border: 2px solid blue;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
        }
        h1 {
            font-size: smaller;
        }
    </style>
</head>
<body>
    <div class="cuadro-azul">
        <h1>ESTUDIANTE: SANTOS YSRRAEL TARQUI FERNANDEZ</h1>
        <h1>C.I.: 6011689</h1>
    </div>
</body>
    </head>
    <body>
        
       
        <h1>REGISTRO DE CALIFICACIONES</h1>
        <a href="MainServlet?op=nuevo">Nuevo registro</a>
        <table border=""1">
            <tr>
                <th>id</th>
                <th>nombres</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>P3(40)</th>
                <th>Nota</th>
            </tr>
            <%
            if(lista != null){
                for(Estudiante item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td> 
                <td><%= item.getNombres() %></td> 
                <td><%= item.getP1() %></td> 
                <td><%= item.getP2() %></td> 
                <td><%= item.getP3() %></td> 
                <td><%= item.getNota() %></td> 
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                       onclick="return(confirm('Esta seguro de eliminar'))"
                       >Eliminar</a>
                </td> 
            </tr>
            <%
                }
            }
            %>
        </table>
    </body>
</html>
