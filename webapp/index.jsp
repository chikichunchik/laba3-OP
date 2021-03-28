<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Main page</title>
    </head>
    <body>
    <%!
        double a=0;
        double b=0;
        double c=0;
        double d=0;
        String task="";
    %>
    <%
        if(request.getAttribute("a")!=null) {
            this.a = (Double) request.getAttribute("a");
        }
        if(request.getAttribute("b")!=null) {
            this.b = (Double) request.getAttribute("b");
        }
        if(request.getAttribute("c")!=null) {
            this.c = (Double) request.getAttribute("c");
        }
        if(request.getAttribute("d")!=null) {
            this.d=(Double) request.getAttribute("d");
        }
        if(request.getParameter("taskNumber")!=null){
            this.task=(String) request.getAttribute("taskNumber");
        }
    %>
    <% if(request.getAttribute("result")!=null){
    %>
    <table cellpadding="4" border="2">
        <tr>
            <td>Result</td>
            <td>A</td>
            <td>B</td>
            <td>C</td>
            <td>D</td>
        </tr>
        <tr>
            <td><%=request.getAttribute("result")%></td>
            <td><%=this.a%></td>
            <td><%=this.b%></td>
            <td><%=this.c%></td>
            <td><%=this.d%></td>
        </tr>
    </table>
    <hr>
    <br>
    <% }
    %>
    <br>
        <form action="TaskSolver" method="get">
            <table>
                <tr>
                    <td>
                        <img src="multimedia/task7.png">
                    </td>
                    <td>
                        <img src="multimedia/task8.png">
                    </td>
                    <td>
                        <img src="multimedia/task9.png">
                    </td>
                </tr>
                <tr>
                    <td>
                        <% if(this.task.equals("7")){
                        %>
                        <input type="radio" name="taskNumber" value="7" checked="checked"> Task1
                        <%
                            } if(!this.task.equals("7")) {
                        %>
                        <input type="radio" name="taskNumber" value="7"> Task1
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <% if(this.task.equals("8")){
                        %>
                        <input type="radio" name="taskNumber" value="8" checked="checked"> Task2
                        <%
                        } if(!this.task.equals("8")) {
                        %>
                        <input type="radio" name="taskNumber" value="8"> Task2
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <% if(this.task.equals("9")){
                        %>
                        <input type="radio" name="taskNumber" value="9" checked="checked"> Task3
                        <%
                        } if(!this.task.equals("9")) {
                        %>
                        <input type="radio" name="taskNumber" value="9"> Task3
                        <%
                            }
                        %>
                    </td>
                </tr>
            </table>
            a = <input type="text" name="a" value="<%=a%>" /> <br>
            b = <input type="text" name="b" value="<%=b%>" /> <br>
            c = <input type="text" name="c" value="<%=c%>" /> <br>
            d = <input type="text" name="d" value="<%=d%>" /> <br>
            <input type="submit" value="Solve task"/>
        </form>
    </body>
</html>