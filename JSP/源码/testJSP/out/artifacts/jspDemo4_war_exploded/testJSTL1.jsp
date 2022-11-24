<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%--分别向四个域中放入数据--%>
    <%--<%
    request.setAttribute("msg", "requestMessage");
    %>--%>
    <%--
    c:set
        scope 指定放数据的域 可选值 page request session application
        var   数据的名称
        value 数据
    --%>
    <c:set scope="page" var="msg" value="pageMessage"></c:set>
    <c:set scope="request" var="msg" value="requestMessage"></c:set>
    <c:set scope="session" var="msg" value="sessionMessage"></c:set>
    <c:set scope="application" var="msg" value="applicationMessage"></c:set>

    <%--移除指定域中的值--%>
   <%-- <c:remove var="msg" scope="page"></c:remove>
    <c:remove var="msg" scope="request"></c:remove>--%>
    <c:remove var="msg" scope="session"></c:remove>
    <c:remove var="msg" scope="application"></c:remove>

    <%--通过EL表达式取出域中的值--%>
    <hr/>
    ${pageScope.msg}<br/>
    ${requestScope.msg}<br/>
    ${sessionScope.msg}<br/>
    ${applicationScope.msg }<br/>
    <hr/>
    <%--通过c:out标签获取域中的值--%>
    <c:out value="${pageScope.msg}" default="page msg not found"/>
    <c:out value="${requestScope.msg}" default="request msg not found"/>
    <c:out value="${sessionScope.msg}" default="session msg not found"/>
    <c:out value="${applicationScope.msg}" default="application msg not found"/>


</body>
</html>
