<%@ page import="com.msb.pojo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Mark70
  Date: 2021/1/12
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--向pageContext域中放数据--%>
    <%
    pageContext.setAttribute("msg", "pageContextMessage");
    pageContext.setAttribute("user", new User(1,"大黄","abcdefg"));
    %>

    <%--从域中取出数据--%>

    pageContext:<br/>
    msg:<%=pageContext.getAttribute("msg")%><br/>
    username:<%=((User)pageContext.getAttribute("user")).getName()%><br/>

    request域中的数据:<br/>
    msg:<%=request.getAttribute("msg")%><br/>
    username:<%=((User)request.getAttribute("user")).getName()%><br/>


    session域中的数据:<br/>
    msg:<%=session.getAttribute("msg")%><br/>
    username:<%=((List<User>)session.getAttribute("users")).get(0).getName()%><br/>

    application域中的数据:<br/>
    msg:<%=application.getAttribute("msg")%><br/>
    username:<%=((Map<String,User>)application.getAttribute("userMap")).get("a").getName()%><br/>

</body>
</html>
