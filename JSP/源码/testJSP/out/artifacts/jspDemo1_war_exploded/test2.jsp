<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
        <%
            int score =(int)(Math.random()*101);
        %>
        分数:
        <%=score%>
        <br/>
        等级:
        <%
            Thread.sleep(5000);// 虚拟时耗

            int grade =score/10;
            switch (grade){
                case 10:
                case 9:
        %>
                   <%="A"%>
        <%
                    break;
                case 8:
        %>
                    <%="B"%>
        <%
                    break;
                case 7:
        %>
                    <%="C"%>
        <%
                    break;
                case 6:
        %>
                   <%="D"%>
        <%
                    break;
                default:
        %>
                    <%="E"%>
        <%
            }
        %>
    <br/>
    结尾
    </body>
</html>
