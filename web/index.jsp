<%-- 
    Document   : index
    Created on : 30 sept. 2019, 10:25:42
    Author     : PC_LG
--%>

<%@page import="ec.gob.agentes.modelo.operaciones"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            
    </head>
    <body>

    

<h2>Suma de 2 numeros en JSP</h2>
 <form action="index.jsp" method="POST">
     <h1>hola mundo </h1>

    <table>
         <tr>
             <td>Ingrese numero 1 : </td>
             <td><input type="text" name="numero1"></td>
         </tr>
         <tr>
             <td>Ingrese numero 2 : </td>
             <td><input type="text" name="numero2"></td>
         </tr>
         <tr>
             <td>
                 <input type="submit" name ="enviar" value="Sumar">
             </td>
         </tr>
         </table>
     <%
     
if(request.getParameter("enviar") != null)
{
   int num1 = Integer.parseInt(request.getParameter("numero1"));
    int num2 = Integer.parseInt(request.getParameter("numero2"));
    int suma = num1+num2; out.print("La suma es :" + num1 + "+" + num2 +"=" + suma );
}
%>

    <table>
                <tr>
             <td>Ingrese numero para factorial : </td>
             <td><input type="text" name="dim"></td>
         </tr>
                      <td>
                 <input type="submit" name ="calcular" value="CALCULAR">
             </td>
                  </table>
<%
if(request.getParameter("calcular") != null)
{
   Integer dim = Integer.parseInt(request.getParameter("dim"));
    operaciones.dimensionar(dim);
    operaciones.llenarArreglo();
    out.print(operaciones.imprimir());

 
%>
         

 </form>
    
    </body>

</html>



