<%@ page import="java.util.Random" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
    随机生成一个分数  0-100
    >=90 A
    >=80 B
    >=70 C
    >=60 D
    <60  E
    --%>
    <%
        int score =new Random().nextInt(101);
        pageContext.setAttribute("score", score);
    %>
    <%--
    test  判断条件
    c:if可以将test的结果放入指定的域中
    scope 指定存放的域
    var   数据名
    --%>
    分数:${score}<br/> 等级:
    <c:if test="${score ge 90}" scope="page" var="f1">A</c:if>
    <c:if test="${score ge 80 and score lt 90}" scope="page" var="f2">B</c:if>
    <c:if test="${score ge 70 and score lt 80}" scope="page" var="f3">C</c:if>
    <c:if test="${score ge 60 and score lt 70}" scope="page" var="f4">D</c:if>
    <c:if test="${score lt 60}" scope="page" var="f5">E</c:if>
    <hr/>
    ${f1}
    ${f2}
    ${f3}
    ${f4}
    ${f5}
    <hr/>
    <%--输出分数是否及格--%>
    <c:if test="${score ge 60}" scope="page" var="flag">及格</c:if>
    <c:if test="${!pageScope.flag}">不及格</c:if>

    <hr/>
    <c:choose>
        <c:when test="${score ge 90}">A</c:when>
        <c:when test="${score ge 80}">B</c:when>
        <c:when test="${score ge 70}">C</c:when>
        <c:when test="${score ge 60}">D</c:when>
        <c:otherwise>E</c:otherwise>
    </c:choose>

</body>
</html>
