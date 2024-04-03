<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    Estudiante reg = (Estudiante) request.getAttribute("miobjest");
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
        <h1>REGISTRAR CALIFICACIONES</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>nombres</td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres() %>"></td>
                </tr>
                <tr>
                    <td>P1</td>
                    <td><input type="text" name="P1" value="<%= reg.getP1() %>"></td>
                </tr>
                <tr>
                    <td>P2</td>
                    <td><input type="text" name="P2" value="<%= reg.getP2() %>"></td>
                </tr>
                <tr>
                    <td>P3</td>
                    <td><input type="text" name="P3" value="<%= reg.getP3() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

