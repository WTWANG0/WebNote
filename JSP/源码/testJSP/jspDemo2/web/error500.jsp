
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
标志当前页为异常提示页 可以接受另一个页面上产生的异常对象
--%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="head.jsp"%>
 this is error page
 <br/>
 <%=exception.getMessage()%>

</body>
</html>
